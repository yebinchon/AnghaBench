; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_des_s390.c_ctr_desall_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_des_s390.c_ctr_desall_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i32*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.s390_des_ctx = type { i32 }

@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@ctrblk_lock = common dso_local global i32 0, align 4
@ctrblk = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, i64, %struct.blkcipher_walk*)* @ctr_desall_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_desall_crypt(%struct.blkcipher_desc* %0, i64 %1, %struct.blkcipher_walk* %2) #0 {
  %4 = alloca %struct.blkcipher_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.blkcipher_walk*, align 8
  %7 = alloca %struct.s390_des_ctx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.blkcipher_walk* %2, %struct.blkcipher_walk** %6, align 8
  %15 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %16 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.s390_des_ctx* @crypto_blkcipher_ctx(i32 %17)
  store %struct.s390_des_ctx* %18, %struct.s390_des_ctx** %7, align 8
  %19 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = call i32 @mutex_trylock(i32* @ctrblk_lock)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %25 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %26 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %27 = call i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc* %24, %struct.blkcipher_walk* %25, i32 %26)
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %96, %3
  %29 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %30 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %108

34:                                               ; preds = %28
  %35 = load i32, i32* @DES_BLOCK_SIZE, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %38 = mul nsw i32 2, %37
  %39 = icmp uge i32 %36, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32*, i32** @ctrblk, align 8
  %45 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %46 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @__ctrblk_init(i32* %44, i32* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %43, %40, %34
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32*, i32** @ctrblk, align 8
  br label %60

56:                                               ; preds = %50
  %57 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %58 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  br label %60

60:                                               ; preds = %56, %54
  %61 = phi i32* [ %55, %54 ], [ %59, %56 ]
  store i32* %61, i32** %10, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.s390_des_ctx*, %struct.s390_des_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.s390_des_ctx, %struct.s390_des_ctx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %67 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %72 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @cpacf_kmctr(i64 %62, i32 %65, i32* %70, i32 %75, i32 %76, i32* %77)
  %79 = load i32*, i32** %10, align 8
  %80 = load i32*, i32** @ctrblk, align 8
  %81 = icmp eq i32* %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %60
  %83 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %84 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 0, %91
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %95 = call i32 @memcpy(i32* %85, i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %82, %60
  %97 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %98 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %101 = call i32 @crypto_inc(i32* %99, i32 %100)
  %102 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %103 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = sub i32 %104, %105
  %107 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %102, %struct.blkcipher_walk* %103, i32 %106)
  store i32 %107, i32* %13, align 4
  br label %28

108:                                              ; preds = %28
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = call i32 @mutex_unlock(i32* @ctrblk_lock)
  br label %113

113:                                              ; preds = %111, %108
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %113
  %117 = load i64, i64* %5, align 8
  %118 = load %struct.s390_des_ctx*, %struct.s390_des_ctx** %7, align 8
  %119 = getelementptr inbounds %struct.s390_des_ctx, %struct.s390_des_ctx* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %122 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %127 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %128 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @cpacf_kmctr(i64 %117, i32 %120, i32* %22, i32 %125, i32 %126, i32* %129)
  %131 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %132 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @memcpy(i32* %135, i32* %22, i32 %136)
  %138 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %139 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %142 = call i32 @crypto_inc(i32* %140, i32 %141)
  %143 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %144 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %145 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %143, %struct.blkcipher_walk* %144, i32 0)
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %116, %113
  %147 = load i32, i32* %13, align 4
  %148 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %148)
  ret i32 %147
}

declare dso_local %struct.s390_des_ctx* @crypto_blkcipher_ctx(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @__ctrblk_init(i32*, i32*, i32) #1

declare dso_local i32 @cpacf_kmctr(i64, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_inc(i32*, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

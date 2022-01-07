; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_ctr_aes_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_ctr_aes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, i32*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.s390_aes_ctx = type { i64, i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@ctrblk_lock = common dso_local global i32 0, align 4
@ctrblk = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, i64, %struct.blkcipher_walk*)* @ctr_aes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_aes_crypt(%struct.blkcipher_desc* %0, i64 %1, %struct.blkcipher_walk* %2) #0 {
  %4 = alloca %struct.blkcipher_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.blkcipher_walk*, align 8
  %7 = alloca %struct.s390_aes_ctx*, align 8
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
  %18 = call %struct.s390_aes_ctx* @crypto_blkcipher_ctx(i32 %17)
  store %struct.s390_aes_ctx* %18, %struct.s390_aes_ctx** %7, align 8
  %19 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = call i32 @mutex_trylock(i32* @ctrblk_lock)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %25 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %26 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %27 = call i32 @blkcipher_walk_virt_block(%struct.blkcipher_desc* %24, %struct.blkcipher_walk* %25, i32 %26)
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %100, %3
  %29 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %30 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %112

34:                                               ; preds = %28
  %35 = load i32, i32* @AES_BLOCK_SIZE, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @AES_BLOCK_SIZE, align 4
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
  %52 = load i32, i32* @AES_BLOCK_SIZE, align 4
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
  %62 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %63 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = or i64 %64, %65
  %67 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %68 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %71 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %76 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @cpacf_kmctr(i64 %66, i32 %69, i32* %74, i32 %79, i32 %80, i32* %81)
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** @ctrblk, align 8
  %85 = icmp eq i32* %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %60
  %87 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %88 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %95 = sext i32 %94 to i64
  %96 = sub i64 0, %95
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %99 = call i32 @memcpy(i32* %89, i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %86, %60
  %101 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %102 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %105 = call i32 @crypto_inc(i32* %103, i32 %104)
  %106 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %107 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = sub i32 %108, %109
  %111 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %106, %struct.blkcipher_walk* %107, i32 %110)
  store i32 %111, i32* %13, align 4
  br label %28

112:                                              ; preds = %28
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 @mutex_unlock(i32* @ctrblk_lock)
  br label %117

117:                                              ; preds = %115, %112
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %154

120:                                              ; preds = %117
  %121 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %122 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %5, align 8
  %125 = or i64 %123, %124
  %126 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %127 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %130 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %135 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %136 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @cpacf_kmctr(i64 %125, i32 %128, i32* %22, i32 %133, i32 %134, i32* %137)
  %139 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %140 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @memcpy(i32* %143, i32* %22, i32 %144)
  %146 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %147 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %150 = call i32 @crypto_inc(i32* %148, i32 %149)
  %151 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %152 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %153 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %151, %struct.blkcipher_walk* %152, i32 0)
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %120, %117
  %155 = load i32, i32* %13, align 4
  %156 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %156)
  ret i32 %155
}

declare dso_local %struct.s390_aes_ctx* @crypto_blkcipher_ctx(i32) #1

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

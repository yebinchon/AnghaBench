; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_xts_aes_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_xts_aes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.s390_xts_ctx = type { i32, i64, i32*, i32* }
%struct.anon = type { [32 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32] }
%struct.anon.0 = type { [32 x i32], [16 x i32] }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, i64, %struct.blkcipher_walk*)* @xts_aes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_aes_crypt(%struct.blkcipher_desc* %0, i64 %1, %struct.blkcipher_walk* %2) #0 {
  %4 = alloca %struct.blkcipher_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.blkcipher_walk*, align 8
  %7 = alloca %struct.s390_xts_ctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.anon, align 4
  %13 = alloca %struct.anon.0, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.blkcipher_walk* %2, %struct.blkcipher_walk** %6, align 8
  %14 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %15 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.s390_xts_ctx* @crypto_blkcipher_ctx(i32 %16)
  store %struct.s390_xts_ctx* %17, %struct.s390_xts_ctx** %7, align 8
  %18 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %19 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %20 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %18, %struct.blkcipher_walk* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 16
  store i32 %24, i32* %8, align 4
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %27 = call i32 @memset(i32* %26, i32 0, i32 64)
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 3
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %28, i64 0, i64 0
  %30 = call i32 @memset(i32* %29, i32 0, i32 64)
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 4
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %31, i64 0, i64 0
  %33 = call i32 @memset(i32* %32, i32 0, i32 64)
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %34, i64 0, i64 0
  %36 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %37 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @memcpy(i32* %35, i32* %38, i32 64)
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %41 = getelementptr inbounds [32 x i32], [32 x i32]* %40, i64 0, i64 0
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %46 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %49 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memcpy(i32* %44, i32* %47, i32 %50)
  %52 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %53 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %56 = getelementptr inbounds [32 x i32], [32 x i32]* %55, i64 0, i64 0
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @cpacf_pcc(i64 %54, i32* %59)
  %61 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %13, i32 0, i32 0
  %62 = getelementptr inbounds [32 x i32], [32 x i32]* %61, i64 0, i64 0
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %67 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %70 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @memcpy(i32* %65, i32* %68, i32 %71)
  %73 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %13, i32 0, i32 1
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %73, i64 0, i64 0
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 4
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %75, i64 0, i64 0
  %77 = call i32 @memcpy(i32* %74, i32* %76, i32 16)
  br label %78

78:                                               ; preds = %84, %3
  %79 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %80 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %83 = icmp uge i32 %81, %82
  br i1 %83, label %84, label %118

84:                                               ; preds = %78
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %87 = sub i32 %86, 1
  %88 = xor i32 %87, -1
  %89 = and i32 %85, %88
  store i32 %89, i32* %10, align 4
  %90 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %7, align 8
  %91 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %5, align 8
  %94 = or i64 %92, %93
  %95 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %13, i32 0, i32 0
  %96 = getelementptr inbounds [32 x i32], [32 x i32]* %95, i64 0, i64 0
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %101 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %106 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @cpacf_km(i64 %94, i32* %99, i32 %104, i32 %109, i32 %110)
  %112 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %113 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub i32 %114, %115
  %117 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %112, %struct.blkcipher_walk* %113, i32 %116)
  store i32 %117, i32* %11, align 4
  br label %78

118:                                              ; preds = %78
  %119 = load i32, i32* %11, align 4
  ret i32 %119
}

declare dso_local %struct.s390_xts_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpacf_pcc(i64, i32*) #1

declare dso_local i32 @cpacf_km(i64, i32*, i32, i32, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

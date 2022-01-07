; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_xts_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_xts_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.s390_xts_ctx = type { i32 }
%struct.blkcipher_walk = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@XTS_BLOCK_SIZE = common dso_local global i32 0, align 4
@CPACF_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @xts_aes_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_aes_decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkcipher_desc*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.s390_xts_ctx*, align 8
  %11 = alloca %struct.blkcipher_walk, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %13 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.s390_xts_ctx* @crypto_blkcipher_ctx(i32 %14)
  store %struct.s390_xts_ctx* %15, %struct.s390_xts_ctx** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %50

21:                                               ; preds = %4
  %22 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %10, align 8
  %23 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %29 = urem i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ true, %21 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %38 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @xts_fallback_decrypt(%struct.blkcipher_desc* %37, %struct.scatterlist* %38, %struct.scatterlist* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %50

42:                                               ; preds = %31
  %43 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %44 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %11, %struct.scatterlist* %43, %struct.scatterlist* %44, i32 %45)
  %47 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %48 = load i32, i32* @CPACF_DECRYPT, align 4
  %49 = call i32 @xts_aes_crypt(%struct.blkcipher_desc* %47, i32 %48, %struct.blkcipher_walk* %11)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %42, %36, %18
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.s390_xts_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xts_fallback_decrypt(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @xts_aes_crypt(%struct.blkcipher_desc*, i32, %struct.blkcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

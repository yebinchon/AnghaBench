; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_sha_common.c_s390_sha_final.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_sha_common.c_s390_sha_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.s390_sha_ctx = type { i32, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_sha_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shash_desc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.s390_sha_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.shash_desc* %0, %struct.shash_desc** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %12 = call %struct.s390_sha_ctx* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.s390_sha_ctx* %12, %struct.s390_sha_ctx** %6, align 8
  %13 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %14 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @crypto_shash_blocksize(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = urem i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul i32 %24, 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @s390_crypto_shash_parmsize(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ult i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %97

38:                                               ; preds = %2
  %39 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %71 [
    i32 130, label %42
    i32 129, label %42
    i32 128, label %50
    i32 134, label %70
    i32 133, label %70
    i32 132, label %70
    i32 131, label %70
  ]

42:                                               ; preds = %38, %38
  %43 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @memcpy(i32* %48, i32* %8, i32 4)
  br label %74

50:                                               ; preds = %38
  %51 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = bitcast i32* %56 to %struct.s390_sha_ctx*
  %58 = call i32 @memset(%struct.s390_sha_ctx* %57, i32 0, i32 4)
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = add i64 %60, 1
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  %63 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %64 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @memcpy(i32* %68, i32* %8, i32 4)
  br label %74

70:                                               ; preds = %38, %38, %38, %38
  br label %74

71:                                               ; preds = %38
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %97

74:                                               ; preds = %70, %50, %42
  %75 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %76 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %79 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %82 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @cpacf_klmd(i32 %77, i32* %80, i32 %83, i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %88 = getelementptr inbounds %struct.s390_sha_ctx, %struct.s390_sha_ctx* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.shash_desc*, %struct.shash_desc** %4, align 8
  %91 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @crypto_shash_digestsize(i32 %92)
  %94 = call i32 @memcpy(i32* %86, i32* %89, i32 %93)
  %95 = load %struct.s390_sha_ctx*, %struct.s390_sha_ctx** %6, align 8
  %96 = call i32 @memset(%struct.s390_sha_ctx* %95, i32 0, i32 24)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %74, %71, %35
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.s390_sha_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_blocksize(i32) #1

declare dso_local i32 @s390_crypto_shash_parmsize(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.s390_sha_ctx*, i32, i32) #1

declare dso_local i32 @cpacf_klmd(i32, i32*, i32, i32) #1

declare dso_local i32 @crypto_shash_digestsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

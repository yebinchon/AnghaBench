; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_walk_next.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_walk_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.crypto_tfm* }
%struct.crypto_tfm = type { i32 }
%struct.ablkcipher_walk = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64, i8* }

@CRYPTO_TFM_RES_BAD_BLOCK_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ABLKCIPHER_WALK_SLOW = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, %struct.ablkcipher_walk*)* @ablkcipher_walk_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ablkcipher_walk_next(%struct.ablkcipher_request* %0, %struct.ablkcipher_walk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca %struct.ablkcipher_walk*, align 8
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store %struct.ablkcipher_walk* %1, %struct.ablkcipher_walk** %5, align 8
  %13 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %14 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %15, align 8
  store %struct.crypto_tfm* %16, %struct.crypto_tfm** %6, align 8
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %18 = call i32 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %20 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %24 = call i32 @crypto_tfm_alg_blocksize(%struct.crypto_tfm* %23)
  %25 = icmp ult i32 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load i32, i32* @CRYPTO_TFM_RES_BAD_BLOCK_LEN, align 4
  %31 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %32 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 8
  %36 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %37 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i32 @ablkcipher_walk_done(%struct.ablkcipher_request* %36, %struct.ablkcipher_walk* %37, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %123

41:                                               ; preds = %2
  %42 = load i32, i32* @ABLKCIPHER_WALK_SLOW, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %45 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %10, align 8
  %48 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %49 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @min(i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %54 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %53, i32 0, i32 5
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @scatterwalk_clamp(i32* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %58 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %57, i32 0, i32 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @scatterwalk_clamp(i32* %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %41
  %65 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %66 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %65, i32 0, i32 5
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @scatterwalk_aligned(i32* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %72 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %71, i32 0, i32 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @scatterwalk_aligned(i32* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70, %64, %41
  %77 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %78 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @ablkcipher_next_slow(%struct.ablkcipher_request* %77, %struct.ablkcipher_walk* %78, i32 %79, i32 %80, i8** %10, i8** %11)
  store i32 %81, i32* %12, align 4
  br label %89

82:                                               ; preds = %70
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %85 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %87 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %88 = call i32 @ablkcipher_next_fast(%struct.ablkcipher_request* %86, %struct.ablkcipher_walk* %87)
  store i32 %88, i32* %3, align 4
  br label %123

89:                                               ; preds = %76
  %90 = load i32, i32* %12, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %121

92:                                               ; preds = %89
  %93 = load i8*, i8** %10, align 8
  %94 = call i8* @virt_to_page(i8* %93)
  %95 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %96 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i8* %94, i8** %97, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i8* @virt_to_page(i8* %98)
  %100 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %101 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i8* %99, i8** %102, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = ptrtoint i8* %103 to i64
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = and i64 %104, %107
  %109 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %110 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i64 %108, i64* %111, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = ptrtoint i8* %112 to i64
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = and i64 %113, %116
  %118 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %119 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i64 %117, i64* %120, align 8
  br label %121

121:                                              ; preds = %92, %89
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %82, %29
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @crypto_tfm_alg_alignmask(%struct.crypto_tfm*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(%struct.crypto_tfm*) #1

declare dso_local i32 @ablkcipher_walk_done(%struct.ablkcipher_request*, %struct.ablkcipher_walk*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scatterwalk_clamp(i32*, i32) #1

declare dso_local i32 @scatterwalk_aligned(i32*, i32) #1

declare dso_local i32 @ablkcipher_next_slow(%struct.ablkcipher_request*, %struct.ablkcipher_walk*, i32, i32, i8**, i8**) #1

declare dso_local i32 @ablkcipher_next_fast(%struct.ablkcipher_request*, %struct.ablkcipher_walk*) #1

declare dso_local i8* @virt_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

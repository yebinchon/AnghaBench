; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_aead_common.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_aead_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.aead_request = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_aead = type { i32 }

@SKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@SKCIPHER_WALK_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_walk*, %struct.aead_request*, i32)* @skcipher_walk_aead_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_walk_aead_common(%struct.skcipher_walk* %0, %struct.aead_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.skcipher_walk*, align 8
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca i32, align 4
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %5, align 8
  store %struct.aead_request* %1, %struct.aead_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %11 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %10)
  store %struct.crypto_aead* %11, %struct.crypto_aead** %8, align 8
  %12 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %13 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 10
  store i64 0, i64* %13, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %15 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %18 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 4
  %19 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %20 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %23 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %25 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %126

33:                                               ; preds = %3
  %34 = load i32, i32* @SKCIPHER_WALK_PHYS, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %37 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %41 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %40, i32 0, i32 7
  %42 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @scatterwalk_start(i32* %41, i32 %44)
  %46 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %47 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %46, i32 0, i32 6
  %48 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %49 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @scatterwalk_start(i32* %47, i32 %50)
  %52 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %53 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %52, i32 0, i32 7
  %54 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %55 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @scatterwalk_copychunks(i32* null, i32* %53, i32 %56, i32 2)
  %58 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %59 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %58, i32 0, i32 6
  %60 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %61 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @scatterwalk_copychunks(i32* null, i32* %59, i32 %62, i32 2)
  %64 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %65 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %64, i32 0, i32 7
  %66 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %67 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @scatterwalk_done(i32* %65, i32 0, i32 %68)
  %70 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %71 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %70, i32 0, i32 6
  %72 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %73 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @scatterwalk_done(i32* %71, i32 0, i32 %74)
  %76 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %77 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %33
  %84 = load i32, i32* @SKCIPHER_WALK_SLEEP, align 4
  %85 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %86 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %96

89:                                               ; preds = %33
  %90 = load i32, i32* @SKCIPHER_WALK_SLEEP, align 4
  %91 = xor i32 %90, -1
  %92 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %93 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %89, %83
  %97 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %98 = call i32 @crypto_aead_blocksize(%struct.crypto_aead* %97)
  %99 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %100 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %102 = call i32 @crypto_aead_chunksize(%struct.crypto_aead* %101)
  %103 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %104 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %106 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %105)
  %107 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %108 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %110 = call i32 @crypto_aead_alignmask(%struct.crypto_aead* %109)
  %111 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %112 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %114 = call i32 @skcipher_walk_first(%struct.skcipher_walk* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %96
  %118 = load i32, i32* @SKCIPHER_WALK_SLEEP, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %121 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %117, %96
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %32
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @scatterwalk_start(i32*, i32) #1

declare dso_local i32 @scatterwalk_copychunks(i32*, i32*, i32, i32) #1

declare dso_local i32 @scatterwalk_done(i32*, i32, i32) #1

declare dso_local i32 @crypto_aead_blocksize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_chunksize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_alignmask(%struct.crypto_aead*) #1

declare dso_local i32 @skcipher_walk_first(%struct.skcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

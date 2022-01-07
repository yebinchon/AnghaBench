; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_skcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_walk_skcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.skcipher_request = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_skcipher = type { i32 }

@SKCIPHER_WALK_SLEEP = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_walk*, %struct.skcipher_request*)* @skcipher_walk_skcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_walk_skcipher(%struct.skcipher_walk* %0, %struct.skcipher_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_walk*, align 8
  %5 = alloca %struct.skcipher_request*, align 8
  %6 = alloca %struct.crypto_skcipher*, align 8
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %4, align 8
  store %struct.skcipher_request* %1, %struct.skcipher_request** %5, align 8
  %7 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %8 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %7)
  store %struct.crypto_skcipher* %8, %struct.crypto_skcipher** %6, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %10 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %13 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 4
  %14 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %15 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %14, i32 0, i32 10
  store i64 0, i64* %15, align 8
  %16 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %17 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %20 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 4
  %21 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %22 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %25 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 8
  %26 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %27 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

35:                                               ; preds = %2
  %36 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %37 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %36, i32 0, i32 6
  %38 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %39 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @scatterwalk_start(i32* %37, i32 %40)
  %42 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %43 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %42, i32 0, i32 5
  %44 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %45 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @scatterwalk_start(i32* %43, i32 %46)
  %48 = load i32, i32* @SKCIPHER_WALK_SLEEP, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %51 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %55 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %35
  %62 = load i32, i32* @SKCIPHER_WALK_SLEEP, align 4
  br label %64

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %67 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %71 = call i32 @crypto_skcipher_blocksize(%struct.crypto_skcipher* %70)
  %72 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %73 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %75 = call i32 @crypto_skcipher_walksize(%struct.crypto_skcipher* %74)
  %76 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %77 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %79 = call i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %78)
  %80 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %81 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %83 = call i32 @crypto_skcipher_alignmask(%struct.crypto_skcipher* %82)
  %84 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %85 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %87 = call i32 @skcipher_walk_first(%struct.skcipher_walk* %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %64, %34
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @scatterwalk_start(i32*, i32) #1

declare dso_local i32 @crypto_skcipher_blocksize(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_walksize(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_alignmask(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_first(%struct.skcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

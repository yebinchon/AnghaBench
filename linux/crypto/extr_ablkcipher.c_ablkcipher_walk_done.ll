; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_walk_done.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_walk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.crypto_tfm* }
%struct.crypto_tfm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ablkcipher_walk = type { i32, i64, i32, i64, i32, i32, i32 }

@ABLKCIPHER_WALK_SLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ablkcipher_walk_done(%struct.ablkcipher_request* %0, %struct.ablkcipher_walk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ablkcipher_request*, align 8
  %6 = alloca %struct.ablkcipher_walk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %5, align 8
  store %struct.ablkcipher_walk* %1, %struct.ablkcipher_walk** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %12 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %13, align 8
  store %struct.crypto_tfm* %14, %struct.crypto_tfm** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %84

21:                                               ; preds = %3
  %22 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %6, align 8
  %23 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %6, align 8
  %30 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %6, align 8
  %34 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %6, align 8
  %39 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ABLKCIPHER_WALK_SLOW, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %21
  %49 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ablkcipher_done_fast(%struct.ablkcipher_walk* %49, i32 %50)
  br label %63

52:                                               ; preds = %21
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @WARN_ON(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %84

59:                                               ; preds = %52
  %60 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @ablkcipher_done_slow(%struct.ablkcipher_walk* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %48
  %64 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %6, align 8
  %65 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %64, i32 0, i32 6
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @scatterwalk_done(i32* %65, i32 0, i32 %66)
  %68 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %6, align 8
  %69 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %68, i32 0, i32 5
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @scatterwalk_done(i32* %69, i32 1, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %63
  %75 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %76 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @crypto_yield(i32 %78)
  %80 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %81 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %6, align 8
  %82 = call i32 @ablkcipher_walk_next(%struct.ablkcipher_request* %80, %struct.ablkcipher_walk* %81)
  store i32 %82, i32* %4, align 4
  br label %112

83:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %56, %20
  %85 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %6, align 8
  %86 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %6, align 8
  %88 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %91 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %84
  %95 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %5, align 8
  %96 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %6, align 8
  %99 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %102 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @memcpy(i64 %97, i64 %100, i32 %104)
  br label %106

106:                                              ; preds = %94, %84
  %107 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %6, align 8
  %108 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @kfree(i32 %109)
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %106, %74
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ablkcipher_done_fast(%struct.ablkcipher_walk*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ablkcipher_done_slow(%struct.ablkcipher_walk*, i32) #1

declare dso_local i32 @scatterwalk_done(i32*, i32, i32) #1

declare dso_local i32 @crypto_yield(i32) #1

declare dso_local i32 @ablkcipher_walk_next(%struct.ablkcipher_request*, %struct.ablkcipher_walk*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

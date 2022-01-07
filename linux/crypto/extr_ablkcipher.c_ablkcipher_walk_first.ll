; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_walk_first.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ablkcipher.c_ablkcipher_walk_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.crypto_tfm* }
%struct.crypto_tfm = type { i32 }
%struct.ablkcipher_walk = type { %struct.TYPE_4__, %struct.TYPE_4__, i64, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, %struct.ablkcipher_walk*)* @ablkcipher_walk_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ablkcipher_walk_first(%struct.ablkcipher_request* %0, %struct.ablkcipher_walk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca %struct.ablkcipher_walk*, align 8
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store %struct.ablkcipher_walk* %1, %struct.ablkcipher_walk** %5, align 8
  %9 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %10 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %11, align 8
  store %struct.crypto_tfm* %12, %struct.crypto_tfm** %6, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %14 = call i32 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %13)
  store i32 %14, i32* %7, align 4
  %15 = call i32 (...) @in_irq()
  %16 = call i64 @WARN_ON_ONCE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EDEADLK, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %81

21:                                               ; preds = %2
  %22 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %23 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %26 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %28 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %31 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %33 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = call i64 @unlikely(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %81

42:                                               ; preds = %21
  %43 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %44 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %46 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = and i64 %47, %49
  %51 = call i64 @unlikely(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %42
  %54 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %55 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ablkcipher_copy_iv(%struct.ablkcipher_walk* %54, %struct.crypto_tfm* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %81

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %65 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %64, i32 0, i32 1
  %66 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %67 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @scatterwalk_start(%struct.TYPE_4__* %65, i32 %69)
  %71 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %72 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %71, i32 0, i32 0
  %73 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %74 = getelementptr inbounds %struct.ablkcipher_walk, %struct.ablkcipher_walk* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @scatterwalk_start(%struct.TYPE_4__* %72, i32 %76)
  %78 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %79 = load %struct.ablkcipher_walk*, %struct.ablkcipher_walk** %5, align 8
  %80 = call i32 @ablkcipher_walk_next(%struct.ablkcipher_request* %78, %struct.ablkcipher_walk* %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %63, %60, %41, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @crypto_tfm_alg_alignmask(%struct.crypto_tfm*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @in_irq(...) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @ablkcipher_copy_iv(%struct.ablkcipher_walk*, %struct.crypto_tfm*, i32) #1

declare dso_local i32 @scatterwalk_start(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ablkcipher_walk_next(%struct.ablkcipher_request*, %struct.ablkcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

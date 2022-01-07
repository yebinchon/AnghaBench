; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rng.c_crypto_rng_reset.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rng.c_crypto_rng_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rng = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.crypto_alg* }
%struct.crypto_alg = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.crypto_rng*, i32*, i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_rng_reset(%struct.crypto_rng* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_rng*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_alg*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_rng* %0, %struct.crypto_rng** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_rng*, %struct.crypto_rng** %5, align 8
  %12 = getelementptr inbounds %struct.crypto_rng, %struct.crypto_rng* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.crypto_alg*, %struct.crypto_alg** %13, align 8
  store %struct.crypto_alg* %14, %struct.crypto_alg** %8, align 8
  store i32* null, i32** %9, align 8
  %15 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %16 = call i32 @crypto_stats_get(%struct.crypto_alg* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kmalloc(i32 %23, i32 %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %56

31:                                               ; preds = %22
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @get_random_bytes_wait(i32* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %52

38:                                               ; preds = %31
  %39 = load i32*, i32** %9, align 8
  store i32* %39, i32** %6, align 8
  br label %40

40:                                               ; preds = %38, %19, %3
  %41 = load %struct.crypto_rng*, %struct.crypto_rng** %5, align 8
  %42 = call %struct.TYPE_4__* @crypto_rng_alg(%struct.crypto_rng* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.crypto_rng*, i32*, i32)*, i32 (%struct.crypto_rng*, i32*, i32)** %43, align 8
  %45 = load %struct.crypto_rng*, %struct.crypto_rng** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 %44(%struct.crypto_rng* %45, i32* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.crypto_alg*, %struct.crypto_alg** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @crypto_stats_rng_seed(%struct.crypto_alg* %49, i32 %50)
  br label %52

52:                                               ; preds = %40, %37
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @kzfree(i32* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %28
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @crypto_stats_get(%struct.crypto_alg*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @get_random_bytes_wait(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @crypto_rng_alg(%struct.crypto_rng*) #1

declare dso_local i32 @crypto_stats_rng_seed(%struct.crypto_alg*, i32) #1

declare dso_local i32 @kzfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

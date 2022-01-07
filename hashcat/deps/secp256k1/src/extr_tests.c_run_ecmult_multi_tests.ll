; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_ecmult_multi_tests.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_run_ecmult_multi_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ctx = common dso_local global %struct.TYPE_2__* null, align 8
@secp256k1_ecmult_multi_var = common dso_local global i32 0, align 4
@secp256k1_ecmult_pippenger_batch_single = common dso_local global i32 0, align 4
@secp256k1_ecmult_strauss_batch_single = common dso_local global i32 0, align 4
@STRAUSS_SCRATCH_OBJECTS = common dso_local global i32 0, align 4
@ALIGNMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_ecmult_multi_tests() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @test_secp256k1_pippenger_bucket_window_inv()
  %3 = call i32 (...) @test_ecmult_multi_pippenger_max_points()
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = call i32* @secp256k1_scratch_create(i32* %5, i32 819200)
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* @secp256k1_ecmult_multi_var, align 4
  %9 = call i32 @test_ecmult_multi(i32* %7, i32 %8)
  %10 = load i32, i32* @secp256k1_ecmult_multi_var, align 4
  %11 = call i32 @test_ecmult_multi(i32* null, i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @secp256k1_ecmult_pippenger_batch_single, align 4
  %14 = call i32 @test_ecmult_multi(i32* %12, i32 %13)
  %15 = load i32, i32* @secp256k1_ecmult_pippenger_batch_single, align 4
  %16 = call i32 @test_ecmult_multi_batch_single(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = load i32, i32* @secp256k1_ecmult_strauss_batch_single, align 4
  %19 = call i32 @test_ecmult_multi(i32* %17, i32 %18)
  %20 = load i32, i32* @secp256k1_ecmult_strauss_batch_single, align 4
  %21 = call i32 @test_ecmult_multi_batch_single(i32 %20)
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @secp256k1_scratch_destroy(i32* %23, i32* %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @secp256k1_strauss_scratch_size(i32 1)
  %29 = load i32, i32* @STRAUSS_SCRATCH_OBJECTS, align 4
  %30 = load i32, i32* @ALIGNMENT, align 4
  %31 = mul nsw i32 %29, %30
  %32 = add nsw i32 %28, %31
  %33 = call i32* @secp256k1_scratch_create(i32* %27, i32 %32)
  store i32* %33, i32** %1, align 8
  %34 = load i32*, i32** %1, align 8
  %35 = load i32, i32* @secp256k1_ecmult_multi_var, align 4
  %36 = call i32 @test_ecmult_multi(i32* %34, i32 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @secp256k1_scratch_destroy(i32* %38, i32* %39)
  %41 = call i32 (...) @test_ecmult_multi_batch_size_helper()
  %42 = call i32 (...) @test_ecmult_multi_batching()
  ret void
}

declare dso_local i32 @test_secp256k1_pippenger_bucket_window_inv(...) #1

declare dso_local i32 @test_ecmult_multi_pippenger_max_points(...) #1

declare dso_local i32* @secp256k1_scratch_create(i32*, i32) #1

declare dso_local i32 @test_ecmult_multi(i32*, i32) #1

declare dso_local i32 @test_ecmult_multi_batch_single(i32) #1

declare dso_local i32 @secp256k1_scratch_destroy(i32*, i32*) #1

declare dso_local i32 @secp256k1_strauss_scratch_size(i32) #1

declare dso_local i32 @test_ecmult_multi_batch_size_helper(...) #1

declare dso_local i32 @test_ecmult_multi_batching(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

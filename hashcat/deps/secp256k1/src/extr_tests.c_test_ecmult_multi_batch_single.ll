; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecmult_multi_batch_single.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecmult_multi_batch_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32*, i32* }

@ctx = common dso_local global %struct.TYPE_6__* null, align 8
@ecmult_multi_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ecmult_multi_batch_single(i32 (i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_5__*, i32)* %0) #0 {
  %2 = alloca i32 (i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_5__*, i32)*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [32 x i32], align 16
  %5 = alloca [32 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32*, align 8
  store i32 (i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_5__*, i32)* %0, i32 (i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_5__*, i32)** %2, align 8
  %9 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32* %9, i32** %10, align 8
  %11 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32* %11, i32** %12, align 8
  %13 = call i32 @secp256k1_scalar_set_int(i32* %3, i32 0)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctx, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32* @secp256k1_scratch_create(i32* %15, i32 0)
  store i32* %16, i32** %8, align 8
  %17 = load i32 (i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_5__*, i32)*, i32 (i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_5__*, i32)** %2, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctx, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctx, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @ecmult_multi_callback, align 4
  %24 = call i32 %17(i32* %19, i32* %21, i32* %22, i32* %6, i32* %3, i32 %23, %struct.TYPE_5__* %7, i32 1)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @CHECK(i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctx, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @secp256k1_scratch_destroy(i32* %30, i32* %31)
  ret void
}

declare dso_local i32 @secp256k1_scalar_set_int(i32*, i32) #1

declare dso_local i32* @secp256k1_scratch_create(i32*, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @secp256k1_scratch_destroy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

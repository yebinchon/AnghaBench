; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecmult_multi_pippenger_max_points.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_tests.c_test_ecmult_multi_pippenger_max_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PIPPENGER_MAX_BUCKET_WINDOW = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.TYPE_2__* null, align 8
@PIPPENGER_SCRATCH_OBJECTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ecmult_multi_pippenger_max_points() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = call i64 @secp256k1_rand_int(i32 256)
  store i64 %9, i64* %1, align 8
  %10 = load i32, i32* @PIPPENGER_MAX_BUCKET_WINDOW, align 4
  %11 = sub nsw i32 %10, 1
  %12 = call i64 @secp256k1_pippenger_bucket_window_inv(i32 %11)
  %13 = add i64 %12, 512
  %14 = call i64 @secp256k1_pippenger_scratch_size(i64 %13, i32 12)
  store i64 %14, i64* %2, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %82, %0
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %85

19:                                               ; preds = %15
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %1, align 8
  %23 = call i32* @secp256k1_scratch_create(i32* %21, i64 %22)
  store i32* %23, i32** %3, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @CHECK(i32 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @secp256k1_scratch_checkpoint(i32* %29, i32* %30)
  store i64 %31, i64* %8, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @secp256k1_pippenger_max_points(i32* %33, i32* %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %19
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @secp256k1_scratch_destroy(i32* %40, i32* %41)
  br label %82

43:                                               ; preds = %19
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @secp256k1_pippenger_bucket_window(i64 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @secp256k1_pippenger_scratch_size(i64 %46, i32 %47)
  store i64 %48, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %49

49:                                               ; preds = %63, %43
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* @PIPPENGER_SCRATCH_OBJECTS, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @secp256k1_scratch_alloc(i32* %57, i32* %58, i64 1)
  %60 = call i32 @CHECK(i32 %59)
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %55
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %49

66:                                               ; preds = %49
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %3, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @secp256k1_scratch_alloc(i32* %68, i32* %69, i64 %70)
  %72 = call i32 @CHECK(i32 %71)
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32*, i32** %3, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @secp256k1_scratch_apply_checkpoint(i32* %74, i32* %75, i64 %76)
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @secp256k1_scratch_destroy(i32* %79, i32* %80)
  br label %82

82:                                               ; preds = %66, %38
  %83 = load i64, i64* %1, align 8
  %84 = add i64 %83, 256
  store i64 %84, i64* %1, align 8
  br label %15

85:                                               ; preds = %15
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @PIPPENGER_MAX_BUCKET_WINDOW, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @CHECK(i32 %89)
  ret void
}

declare dso_local i64 @secp256k1_rand_int(i32) #1

declare dso_local i64 @secp256k1_pippenger_scratch_size(i64, i32) #1

declare dso_local i64 @secp256k1_pippenger_bucket_window_inv(i32) #1

declare dso_local i32* @secp256k1_scratch_create(i32*, i64) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i64 @secp256k1_scratch_checkpoint(i32*, i32*) #1

declare dso_local i64 @secp256k1_pippenger_max_points(i32*, i32*) #1

declare dso_local i32 @secp256k1_scratch_destroy(i32*, i32*) #1

declare dso_local i32 @secp256k1_pippenger_bucket_window(i64) #1

declare dso_local i32 @secp256k1_scratch_alloc(i32*, i32*, i64) #1

declare dso_local i32 @secp256k1_scratch_apply_checkpoint(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

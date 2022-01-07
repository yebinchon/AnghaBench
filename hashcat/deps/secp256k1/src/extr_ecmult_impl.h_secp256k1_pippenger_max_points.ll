; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_pippenger_max_points.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_ecmult_impl.h_secp256k1_pippenger_max_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIPPENGER_SCRATCH_OBJECTS = common dso_local global i32 0, align 4
@PIPPENGER_MAX_BUCKET_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @secp256k1_pippenger_max_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @secp256k1_pippenger_max_points(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @PIPPENGER_SCRATCH_OBJECTS, align 4
  %16 = call i64 @secp256k1_scratch_max_allocation(i32* %13, i32* %14, i32 %15)
  store i64 %16, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %68, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PIPPENGER_MAX_BUCKET_WINDOW, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @secp256k1_pippenger_bucket_window_inv(i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 @WNAF_SIZE(i32 %25)
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 12, %29
  store i64 %30, i64* %12, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = shl i64 4, %32
  %34 = load i64, i64* %12, align 8
  %35 = add i64 %33, %34
  %36 = add i64 %35, 4
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  br label %71

41:                                               ; preds = %21
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %11, align 8
  %44 = sub i64 %42, %43
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %12, align 8
  %47 = udiv i64 %45, %46
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i64, i64* %9, align 8
  br label %55

53:                                               ; preds = %41
  %54 = load i64, i64* %8, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i64 [ %52, %51 ], [ %54, %53 ]
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %60, %55
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %71

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %17

71:                                               ; preds = %66, %40, %17
  %72 = load i64, i64* %7, align 8
  ret i64 %72
}

declare dso_local i64 @secp256k1_scratch_max_allocation(i32*, i32*, i32) #1

declare dso_local i64 @secp256k1_pippenger_bucket_window_inv(i32) #1

declare dso_local i32 @WNAF_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

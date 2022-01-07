; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_yuv_to_rgb24.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_yuv_to_rgb24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ROQ_YY_tab = common dso_local global i64* null, align 8
@ROQ_VR_tab = common dso_local global i64* null, align 8
@ROQ_UG_tab = common dso_local global i64* null, align 8
@ROQ_VG_tab = common dso_local global i64* null, align 8
@ROQ_UB_tab = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @yuv_to_rgb24 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yuv_to_rgb24(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64*, i64** @ROQ_YY_tab, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64*, i64** @ROQ_VR_tab, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %15, %19
  %21 = ashr i64 %20, 6
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64*, i64** @ROQ_UG_tab, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %22, %26
  %28 = load i64*, i64** @ROQ_VG_tab, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %27, %31
  %33 = ashr i64 %32, 6
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64*, i64** @ROQ_UB_tab, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %34, %38
  %40 = ashr i64 %39, 6
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i64, i64* %8, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i64 0, i64* %8, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i64, i64* %9, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i64 0, i64* %9, align 8
  br label %52

52:                                               ; preds = %51, %48
  %53 = load i64, i64* %7, align 8
  %54 = icmp sgt i64 %53, 255
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i64 255, i64* %7, align 8
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i64, i64* %8, align 8
  %58 = icmp sgt i64 %57, 255
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i64 255, i64* %8, align 8
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i64, i64* %9, align 8
  %62 = icmp sgt i64 %61, 255
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i64 255, i64* %9, align 8
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = shl i64 %66, 8
  %68 = or i64 %65, %67
  %69 = load i64, i64* %9, align 8
  %70 = shl i64 %69, 16
  %71 = or i64 %68, %70
  %72 = or i64 %71, 4278190080
  %73 = call i32 @LittleLong(i64 %72)
  ret i32 %73
}

declare dso_local i32 @LittleLong(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

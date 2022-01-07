; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_estimate_sqrt_significand.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_estimate_sqrt_significand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"VFP: estimate_sqrt: invalid significand\0A\00", align 1
@sqrt_oddadjust = common dso_local global i32* null, align 8
@sqrt_evenadjust = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfp_estimate_sqrt_significand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, -1073741824
  %12 = icmp ne i32 %11, 1073741824
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 1
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = ashr i32 %18, 27
  %20 = and i32 %19, 15
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %15
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 17
  %27 = add nsw i32 16384, %26
  %28 = load i32*, i32** @sqrt_oddadjust, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %27, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sdiv i32 %34, %35
  %37 = shl i32 %36, 14
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 %38, 15
  %40 = add nsw i32 %37, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %73

43:                                               ; preds = %15
  %44 = load i32, i32* %8, align 4
  %45 = ashr i32 %44, 17
  %46 = add nsw i32 32768, %45
  %47 = load i32*, i32** @sqrt_evenadjust, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %46, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sdiv i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sge i32 %58, 131072
  br i1 %59, label %60, label %61

60:                                               ; preds = %43
  br label %64

61:                                               ; preds = %43
  %62 = load i32, i32* %7, align 4
  %63 = shl i32 %62, 15
  br label %64

64:                                               ; preds = %61, %60
  %65 = phi i32 [ -32768, %60 ], [ %63, %61 ]
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = ashr i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %83

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %24
  %74 = load i32, i32* %8, align 4
  %75 = shl i32 %74, 31
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @do_div(i32 %76, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %7, align 4
  %81 = ashr i32 %80, 1
  %82 = add nsw i32 %79, %81
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %73, %69
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

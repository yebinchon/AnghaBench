; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c___parse_fpscr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c___parse_fpscr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPE_FLTUNK = common dso_local global i32 0, align 4
@FPSCR_VE = common dso_local global i64 0, align 8
@FPSCR_VX = common dso_local global i64 0, align 8
@FPE_FLTINV = common dso_local global i32 0, align 4
@FPSCR_OE = common dso_local global i64 0, align 8
@FPSCR_OX = common dso_local global i64 0, align 8
@FPE_FLTOVF = common dso_local global i32 0, align 4
@FPSCR_UE = common dso_local global i64 0, align 8
@FPSCR_UX = common dso_local global i64 0, align 8
@FPE_FLTUND = common dso_local global i32 0, align 4
@FPSCR_ZE = common dso_local global i64 0, align 8
@FPSCR_ZX = common dso_local global i64 0, align 8
@FPE_FLTDIV = common dso_local global i32 0, align 4
@FPSCR_XE = common dso_local global i64 0, align 8
@FPSCR_XX = common dso_local global i64 0, align 8
@FPE_FLTRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @__parse_fpscr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__parse_fpscr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @FPE_FLTUNK, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @FPSCR_VE, align 8
  %7 = and i64 %5, %6
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @FPSCR_VX, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @FPE_FLTINV, align 4
  store i32 %15, i32* %3, align 4
  br label %68

16:                                               ; preds = %9, %1
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @FPSCR_OE, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @FPSCR_OX, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @FPE_FLTOVF, align 4
  store i32 %27, i32* %3, align 4
  br label %67

28:                                               ; preds = %21, %16
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* @FPSCR_UE, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @FPSCR_UX, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @FPE_FLTUND, align 4
  store i32 %39, i32* %3, align 4
  br label %66

40:                                               ; preds = %33, %28
  %41 = load i64, i64* %2, align 8
  %42 = load i64, i64* @FPSCR_ZE, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i64, i64* %2, align 8
  %47 = load i64, i64* @FPSCR_ZX, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @FPE_FLTDIV, align 4
  store i32 %51, i32* %3, align 4
  br label %65

52:                                               ; preds = %45, %40
  %53 = load i64, i64* %2, align 8
  %54 = load i64, i64* @FPSCR_XE, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i64, i64* %2, align 8
  %59 = load i64, i64* @FPSCR_XX, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @FPE_FLTRES, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %57, %52
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %38
  br label %67

67:                                               ; preds = %66, %26
  br label %68

68:                                               ; preds = %67, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_verify_ckctl_value.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_verify_ckctl_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CKCTL_PERDIV_OFFSET = common dso_local global i32 0, align 4
@CKCTL_LCDDIV_OFFSET = common dso_local global i32 0, align 4
@CKCTL_ARMDIV_OFFSET = common dso_local global i32 0, align 4
@CKCTL_DSPDIV_OFFSET = common dso_local global i32 0, align 4
@CKCTL_TCDIV_OFFSET = common dso_local global i32 0, align 4
@CKCTL_DSPMMUDIV_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @verify_ckctl_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_ckctl_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @CKCTL_PERDIV_OFFSET, align 4
  %11 = ashr i32 %9, %10
  %12 = and i32 %11, 3
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @CKCTL_LCDDIV_OFFSET, align 4
  %15 = ashr i32 %13, %14
  %16 = and i32 %15, 3
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @CKCTL_ARMDIV_OFFSET, align 4
  %19 = ashr i32 %17, %18
  %20 = and i32 %19, 3
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @CKCTL_DSPDIV_OFFSET, align 4
  %23 = ashr i32 %21, %22
  %24 = and i32 %23, 3
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @CKCTL_TCDIV_OFFSET, align 4
  %27 = ashr i32 %25, %26
  %28 = and i32 %27, 3
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @CKCTL_DSPMMUDIV_OFFSET, align 4
  %31 = ashr i32 %29, %30
  %32 = and i32 %31, 3
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %36, %1
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* %2, align 4
  %72 = and i32 %71, 61440
  store i32 %72, i32* %2, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @CKCTL_PERDIV_OFFSET, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %2, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %2, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @CKCTL_LCDDIV_OFFSET, align 4
  %80 = shl i32 %78, %79
  %81 = load i32, i32* %2, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %2, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @CKCTL_ARMDIV_OFFSET, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %2, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %2, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @CKCTL_DSPDIV_OFFSET, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %2, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %2, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @CKCTL_TCDIV_OFFSET, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %2, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %2, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @CKCTL_DSPMMUDIV_OFFSET, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* %2, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %2, align 4
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

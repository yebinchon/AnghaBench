; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_hw_breakpoint.c_arch_bp_generic_fields.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_hw_breakpoint.c_arch_bp_generic_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HW_BREAKPOINT_LEN_1 = common dso_local global i32 0, align 4
@HW_BREAKPOINT_LEN_2 = common dso_local global i32 0, align 4
@HW_BREAKPOINT_LEN_4 = common dso_local global i32 0, align 4
@HW_BREAKPOINT_LEN_8 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HW_BREAKPOINT_R = common dso_local global i32 0, align 4
@HW_BREAKPOINT_W = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_bp_generic_fields(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %23 [
    i32 134, label %11
    i32 133, label %14
    i32 132, label %17
    i32 131, label %20
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* @HW_BREAKPOINT_LEN_1, align 4
  %13 = load i32*, i32** %8, align 8
  store i32 %12, i32* %13, align 4
  br label %26

14:                                               ; preds = %4
  %15 = load i32, i32* @HW_BREAKPOINT_LEN_2, align 4
  %16 = load i32*, i32** %8, align 8
  store i32 %15, i32* %16, align 4
  br label %26

17:                                               ; preds = %4
  %18 = load i32, i32* @HW_BREAKPOINT_LEN_4, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  br label %26

20:                                               ; preds = %4
  %21 = load i32, i32* @HW_BREAKPOINT_LEN_8, align 4
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  br label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %43

26:                                               ; preds = %20, %17, %14, %11
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %39 [
    i32 130, label %28
    i32 128, label %31
    i32 129, label %34
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @HW_BREAKPOINT_R, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  br label %42

31:                                               ; preds = %26
  %32 = load i32, i32* @HW_BREAKPOINT_W, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  br label %42

34:                                               ; preds = %26
  %35 = load i32, i32* @HW_BREAKPOINT_W, align 4
  %36 = load i32, i32* @HW_BREAKPOINT_R, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  br label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %43

42:                                               ; preds = %34, %31, %28
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %39, %23
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

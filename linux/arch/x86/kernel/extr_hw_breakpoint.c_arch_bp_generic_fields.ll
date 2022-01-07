; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hw_breakpoint.c_arch_bp_generic_fields.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hw_breakpoint.c_arch_bp_generic_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_BREAKPOINT_LEN_X = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HW_BREAKPOINT_X = common dso_local global i32 0, align 4
@HW_BREAKPOINT_W = common dso_local global i32 0, align 4
@HW_BREAKPOINT_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_bp_generic_fields(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %31 [
    i32 130, label %12
    i32 128, label %23
    i32 129, label %26
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @X86_BREAKPOINT_LEN_X, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %45

19:                                               ; preds = %12
  %20 = load i32, i32* @HW_BREAKPOINT_X, align 4
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %8, align 8
  store i32 8, i32* %22, align 4
  store i32 0, i32* %5, align 4
  br label %45

23:                                               ; preds = %4
  %24 = load i32, i32* @HW_BREAKPOINT_W, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  br label %34

26:                                               ; preds = %4
  %27 = load i32, i32* @HW_BREAKPOINT_W, align 4
  %28 = load i32, i32* @HW_BREAKPOINT_R, align 4
  %29 = or i32 %27, %28
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  br label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %45

34:                                               ; preds = %26, %23
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @arch_bp_generic_len(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %39, %31, %19, %16
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @arch_bp_generic_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

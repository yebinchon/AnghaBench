; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_hoursSpinboxInput.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_datetimepicker.c_hoursSpinboxInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GTK_INPUT_ERROR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64)* @hoursSpinboxInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hoursSpinboxInput(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = inttoptr i64 %11 to double*
  store double* %12, double** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @GTK_ENTRY(i32* %13)
  %15 = call i32* @gtk_entry_get_text(i32 %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i64 @g_strtod(i32* %16, i32* null)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 12
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %3
  %25 = load i32, i32* @GTK_INPUT_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %35

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 12
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %10, align 4
  %32 = sitofp i32 %31 to double
  %33 = load double*, double** %8, align 8
  store double %32, double* %33, align 8
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %24
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32* @gtk_entry_get_text(i32) #1

declare dso_local i32 @GTK_ENTRY(i32*) #1

declare dso_local i64 @g_strtod(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

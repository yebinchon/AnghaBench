; ModuleID = '/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD__old_drawtext.c_uiDrawTextLayoutSetColor.c'
source_filename = "/home/carl/AnghaBench/libui/_wip/attrstr_metrics/extr_unix_OLD__old_drawtext.c_uiDrawTextLayoutSetColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiDrawTextLayoutSetColor(i32* %0, i32 %1, i32 %2, double %3, double %4, double %5, double %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  store double %6, double* %14, align 8
  %20 = load double, double* %11, align 8
  %21 = fmul double %20, 6.553500e+04
  %22 = fptosi double %21 to i64
  store i64 %22, i64* %16, align 8
  %23 = load double, double* %12, align 8
  %24 = fmul double %23, 6.553500e+04
  %25 = fptosi double %24 to i64
  store i64 %25, i64* %17, align 8
  %26 = load double, double* %13, align 8
  %27 = fmul double %26, 6.553500e+04
  %28 = fptosi double %27 to i64
  store i64 %28, i64* %18, align 8
  %29 = load double, double* %14, align 8
  %30 = fmul double %29, 6.553500e+04
  %31 = fptosi double %30 to i64
  store i64 %31, i64* %19, align 8
  %32 = load i64, i64* %16, align 8
  %33 = load i64, i64* %17, align 8
  %34 = load i64, i64* %18, align 8
  %35 = call i32* @pango_attr_foreground_new(i64 %32, i64 %33, i64 %34)
  store i32* %35, i32** %15, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @addAttr(i32* %36, i32* %37, i32 %38, i32 %39)
  %41 = load i64, i64* %19, align 8
  %42 = call i32* @FUTURE_pango_attr_foreground_alpha_new(i64 %41)
  store i32* %42, i32** %15, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %7
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @addAttr(i32* %46, i32* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %7
  ret void
}

declare dso_local i32* @pango_attr_foreground_new(i64, i64, i64) #1

declare dso_local i32 @addAttr(i32*, i32*, i32, i32) #1

declare dso_local i32* @FUTURE_pango_attr_foreground_alpha_new(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

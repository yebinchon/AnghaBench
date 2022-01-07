; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_isinfinite.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_isinfinite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_NUMBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @f_isinfinite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_isinfinite(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @jv_get_kind(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @JV_KIND_NUMBER, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @jv_free(i32 %14)
  %16 = call i32 (...) @jv_false()
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call double @jv_number_value(i32 %18)
  store double %19, double* %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @jv_free(i32 %20)
  %22 = load double, double* %7, align 8
  %23 = call i64 @isinf(double %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 (...) @jv_true()
  br label %29

27:                                               ; preds = %17
  %28 = call i32 (...) @jv_false()
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_false(...) #1

declare dso_local double @jv_number_value(i32) #1

declare dso_local i64 @isinf(double) #1

declare dso_local i32 @jv_true(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

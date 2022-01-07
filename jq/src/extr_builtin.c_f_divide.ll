; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_divide.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_divide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"cannot be divided because the divisor is zero\00", align 1
@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot be divided\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @f_divide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_divide(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @jv_free(i32 %11)
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @jv_get_kind(i32 %13)
  %15 = load i64, i64* @JV_KIND_NUMBER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @jv_get_kind(i32 %18)
  %20 = load i64, i64* @JV_KIND_NUMBER, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = call double @jv_number_value(i32 %23)
  %25 = fcmp oeq double %24, 0.000000e+00
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @type_error2(i32 %27, i32 %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %5, align 4
  br label %60

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = call double @jv_number_value(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call double @jv_number_value(i32 %33)
  %35 = fdiv double %32, %34
  %36 = call i32 @jv_number(double %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @jv_free(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @jv_free(i32 %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %60

42:                                               ; preds = %17, %4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @jv_get_kind(i32 %43)
  %45 = load i64, i64* @JV_KIND_STRING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @jv_get_kind(i32 %48)
  %50 = load i64, i64* @JV_KIND_STRING, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @jv_string_split(i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %60

56:                                               ; preds = %47, %42
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @type_error2(i32 %57, i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %52, %30, %26
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @jv_free(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local double @jv_number_value(i32) #1

declare dso_local i32 @type_error2(i32, i32, i8*) #1

declare dso_local i32 @jv_number(double) #1

declare dso_local i32 @jv_string_split(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

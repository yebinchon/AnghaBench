; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_length.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_ARRAY = common dso_local global i64 0, align 8
@JV_KIND_OBJECT = common dso_local global i64 0, align 8
@JV_KIND_STRING = common dso_local global i64 0, align 8
@JV_KIND_NUMBER = common dso_local global i64 0, align 8
@JV_KIND_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"has no length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @f_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_length(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @jv_get_kind(i32 %7)
  %9 = load i64, i64* @JV_KIND_ARRAY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @jv_array_length(i32 %12)
  %14 = call i32 @jv_number(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @jv_get_kind(i32 %16)
  %18 = load i64, i64* @JV_KIND_OBJECT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @jv_object_length(i32 %21)
  %23 = call i32 @jv_number(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %58

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @jv_get_kind(i32 %25)
  %27 = load i64, i64* @JV_KIND_STRING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @jv_string_length_codepoints(i32 %30)
  %32 = call i32 @jv_number(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %58

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @jv_get_kind(i32 %34)
  %36 = load i64, i64* @JV_KIND_NUMBER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @jv_number_value(i32 %39)
  %41 = call i32 @fabs(i32 %40)
  %42 = call i32 @jv_number(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @jv_free(i32 %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %58

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @jv_get_kind(i32 %47)
  %49 = load i64, i64* @JV_KIND_NULL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @jv_free(i32 %52)
  %54 = call i32 @jv_number(i32 0)
  store i32 %54, i32* %3, align 4
  br label %58

55:                                               ; preds = %46
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @type_error(i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %51, %38, %29, %20, %11
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_number(i32) #1

declare dso_local i32 @jv_array_length(i32) #1

declare dso_local i32 @jv_object_length(i32) #1

declare dso_local i32 @jv_string_length_codepoints(i32) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i32 @jv_number_value(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @type_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

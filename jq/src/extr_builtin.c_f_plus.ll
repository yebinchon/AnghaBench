; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_plus.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_plus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_NULL = common dso_local global i64 0, align 8
@JV_KIND_NUMBER = common dso_local global i64 0, align 8
@JV_KIND_STRING = common dso_local global i64 0, align 8
@JV_KIND_ARRAY = common dso_local global i64 0, align 8
@JV_KIND_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"cannot be added\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @f_plus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_plus(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = load i64, i64* @JV_KIND_NULL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @jv_free(i32 %18)
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %5, align 4
  br label %98

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @jv_get_kind(i32 %22)
  %24 = load i64, i64* @JV_KIND_NULL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @jv_free(i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %5, align 4
  br label %98

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @jv_get_kind(i32 %31)
  %33 = load i64, i64* @JV_KIND_NUMBER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @jv_get_kind(i32 %36)
  %38 = load i64, i64* @JV_KIND_NUMBER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @jv_number_value(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @jv_number_value(i32 %43)
  %45 = add nsw i64 %42, %44
  %46 = call i32 @jv_number(i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @jv_free(i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @jv_free(i32 %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %98

52:                                               ; preds = %35, %30
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @jv_get_kind(i32 %53)
  %55 = load i64, i64* @JV_KIND_STRING, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @jv_get_kind(i32 %58)
  %60 = load i64, i64* @JV_KIND_STRING, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @jv_string_concat(i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %98

66:                                               ; preds = %57, %52
  %67 = load i32, i32* %8, align 4
  %68 = call i64 @jv_get_kind(i32 %67)
  %69 = load i64, i64* @JV_KIND_ARRAY, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @jv_get_kind(i32 %72)
  %74 = load i64, i64* @JV_KIND_ARRAY, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @jv_array_concat(i32 %77, i32 %78)
  store i32 %79, i32* %5, align 4
  br label %98

80:                                               ; preds = %71, %66
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @jv_get_kind(i32 %81)
  %83 = load i64, i64* @JV_KIND_OBJECT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = call i64 @jv_get_kind(i32 %86)
  %88 = load i64, i64* @JV_KIND_OBJECT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @jv_object_merge(i32 %91, i32 %92)
  store i32 %93, i32* %5, align 4
  br label %98

94:                                               ; preds = %85, %80
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @type_error2(i32 %95, i32 %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %90, %76, %62, %40, %26, %17
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @jv_free(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_number(i64) #1

declare dso_local i64 @jv_number_value(i32) #1

declare dso_local i32 @jv_string_concat(i32, i32) #1

declare dso_local i32 @jv_array_concat(i32, i32) #1

declare dso_local i32 @jv_object_merge(i32, i32) #1

declare dso_local i32 @type_error2(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

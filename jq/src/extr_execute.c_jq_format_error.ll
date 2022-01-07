; ModuleID = '/home/carl/AnghaBench/jq/src/extr_execute.c_jq_format_error.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_execute.c_jq_format_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_NULL = common dso_local global i64 0, align 8
@JV_KIND_INVALID = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"jq: error: out of memory\0A\00", align 1
@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"jq: error: %s\00", align 1
@JV_PRINT_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jq_format_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @jv_get_kind(i32 %4)
  %6 = load i64, i64* @JV_KIND_NULL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @jv_get_kind(i32 %9)
  %11 = load i64, i64* @JV_KIND_INVALID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @jv_copy(i32 %14)
  %16 = call i32 @jv_invalid_has_msg(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13, %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @jv_free(i32 %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 (...) @jv_null()
  store i32 %23, i32* %2, align 4
  br label %80

24:                                               ; preds = %13, %8
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @jv_get_kind(i32 %25)
  %27 = load i64, i64* @JV_KIND_STRING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %2, align 4
  br label %80

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @jv_get_kind(i32 %32)
  %34 = load i64, i64* @JV_KIND_INVALID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @jv_invalid_get_msg(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @jv_get_kind(i32 %40)
  %42 = load i64, i64* @JV_KIND_NULL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @jq_format_error(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %80

47:                                               ; preds = %39
  %48 = load i32, i32* %3, align 4
  %49 = call i64 @jv_get_kind(i32 %48)
  %50 = load i64, i64* @JV_KIND_INVALID, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = call i64 @jv_get_kind(i32 %53)
  %55 = load i64, i64* @JV_KIND_STRING, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @jv_string_value(i32 %58)
  %60 = call i32 @jv_string_fmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %2, align 4
  br label %80

61:                                               ; preds = %52
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @JV_PRINT_INVALID, align 4
  %64 = call i32 @jv_dump_string(i32 %62, i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i64 @jv_get_kind(i32 %65)
  %67 = load i64, i64* @JV_KIND_STRING, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @jv_string_value(i32 %70)
  %72 = call i32 @jv_string_fmt(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 %72, i32* %2, align 4
  br label %80

73:                                               ; preds = %61
  %74 = call i32 (...) @jv_null()
  %75 = call i32 @jq_format_error(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %80

76:                                               ; preds = %47
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @jv_invalid_get_msg(i32 %77)
  %79 = call i32 @jq_format_error(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %73, %69, %57, %44, %29, %18
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_invalid_has_msg(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @jv_null(...) #1

declare dso_local i32 @jv_invalid_get_msg(i32) #1

declare dso_local i32 @jv_string_fmt(i8*, i32) #1

declare dso_local i32 @jv_string_value(i32) #1

declare dso_local i32 @jv_dump_string(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

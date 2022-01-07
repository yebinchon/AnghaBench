; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_rpc-proxy-merge-hints.c_hints_merge_forward.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_rpc-proxy-merge-hints.c_hints_merge_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TL_HINTS_GET_HINTS = common dso_local global i32 0, align 4
@TL_HINTS_GET_HINTS_RATING = common dso_local global i32 0, align 4
@TL_HINTS_GET_HINTS_LATIN = common dso_local global i32 0, align 4
@TL_HINTS_GET_HINTS_LATIN_RATING = common dso_local global i32 0, align 4
@TL_RATING_GET_HINTS = common dso_local global i32 0, align 4
@TL_RATING_GET_HINTS_RATING = common dso_local global i32 0, align 4
@hints_gather_methods = common dso_local global i32 0, align 4
@TL_HINTS_SET_TEXT_GLOBAL = common dso_local global i32 0, align 4
@TL_HINTS_SET_TYPE_GLOBAL = common dso_local global i32 0, align 4
@TL_HINTS_DELETE_OBJECT_GLOBAL = common dso_local global i32 0, align 4
@TL_RATING_SET_TYPE_GLOBAL = common dso_local global i32 0, align 4
@TL_RATING_DELETE_OBJECT_GLOBAL = common dso_local global i32 0, align 4
@TL_HINTS_GET_HINTS_TEXT = common dso_local global i32 0, align 4
@TL_HINTS_GET_HINTS_FULL = common dso_local global i32 0, align 4
@TL_HINTS_GET_HINTS_LATIN_TEXT = common dso_local global i32 0, align 4
@TL_HINTS_GET_HINTS_LATIN_FULL = common dso_local global i32 0, align 4
@TL_RATING_GET_RANDOM_HINTS = common dso_local global i32 0, align 4
@TL_RATING_GET_RANDOM_HINTS_RATING = common dso_local global i32 0, align 4
@TL_HINTS_SORT = common dso_local global i32 0, align 4
@TL_HINTS_GET_RANDOM = common dso_local global i32 0, align 4
@TL_RATING_SORT = common dso_local global i32 0, align 4
@TL_RATING_GET_RANDOM = common dso_local global i32 0, align 4
@TL_ERROR_UNKNOWN_FUNCTION_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported function %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hints_merge_forward() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @tl_fetch_lookup_int()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @TL_HINTS_GET_HINTS, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %27, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @TL_HINTS_GET_HINTS_RATING, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @TL_HINTS_GET_HINTS_LATIN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @TL_HINTS_GET_HINTS_LATIN_RATING, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @TL_RATING_GET_HINTS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @TL_RATING_GET_HINTS_RATING, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %19, %15, %11, %7, %0
  %28 = call i32 @merge_forward(i32* @hints_gather_methods)
  store i32 0, i32* %1, align 4
  br label %95

29:                                               ; preds = %23
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @TL_HINTS_SET_TEXT_GLOBAL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %89, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @TL_HINTS_SET_TYPE_GLOBAL, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %89, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @TL_HINTS_DELETE_OBJECT_GLOBAL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %89, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @TL_RATING_SET_TYPE_GLOBAL, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %89, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @TL_RATING_DELETE_OBJECT_GLOBAL, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %89, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @TL_HINTS_GET_HINTS_TEXT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %89, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @TL_HINTS_GET_HINTS_FULL, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %89, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @TL_HINTS_GET_HINTS_LATIN_TEXT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %89, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @TL_HINTS_GET_HINTS_LATIN_FULL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %89, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @TL_RATING_GET_RANDOM_HINTS, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @TL_RATING_GET_RANDOM_HINTS_RATING, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %89, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @TL_HINTS_SORT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @TL_HINTS_GET_RANDOM, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* @TL_RATING_SORT, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @TL_RATING_GET_RANDOM, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29
  %90 = load i32, i32* @TL_ERROR_UNKNOWN_FUNCTION_ID, align 4
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @tl_fetch_set_error_format(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %91)
  store i32 -1, i32* %1, align 4
  br label %95

93:                                               ; preds = %85
  %94 = call i32 (...) @default_firstint_forward()
  store i32 %94, i32* %1, align 4
  br label %95

95:                                               ; preds = %93, %89, %27
  %96 = load i32, i32* %1, align 4
  ret i32 %96
}

declare dso_local i32 @tl_fetch_lookup_int(...) #1

declare dso_local i32 @merge_forward(i32*) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32) #1

declare dso_local i32 @default_firstint_forward(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

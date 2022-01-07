; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_aux.c_jv_has.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_aux.c_jv_has.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_NULL = common dso_local global i64 0, align 8
@JV_KIND_OBJECT = common dso_local global i64 0, align 8
@JV_KIND_STRING = common dso_local global i64 0, align 8
@JV_KIND_ARRAY = common dso_local global i64 0, align 8
@JV_KIND_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Cannot check whether %s has a %s key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_has(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @jv_is_valid(i32 %8)
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @jv_is_valid(i32 %11)
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @jv_get_kind(i32 %14)
  %16 = load i64, i64* @JV_KIND_NULL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @jv_free(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @jv_free(i32 %21)
  %23 = call i32 (...) @jv_false()
  store i32 %23, i32* %5, align 4
  br label %81

24:                                               ; preds = %2
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @jv_get_kind(i32 %25)
  %27 = load i64, i64* @JV_KIND_OBJECT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @jv_get_kind(i32 %30)
  %32 = load i64, i64* @JV_KIND_STRING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @jv_object_get(i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @jv_is_valid(i32 %38)
  %40 = call i32 @jv_bool(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @jv_free(i32 %41)
  br label %80

43:                                               ; preds = %29, %24
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @jv_get_kind(i32 %44)
  %46 = load i64, i64* @JV_KIND_ARRAY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @jv_get_kind(i32 %49)
  %51 = load i64, i64* @JV_KIND_NUMBER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @jv_number_value(i32 %55)
  %57 = trunc i64 %56 to i32
  %58 = call i32 @jv_array_get(i32 %54, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @jv_is_valid(i32 %59)
  %61 = call i32 @jv_bool(i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @jv_free(i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @jv_free(i32 %64)
  br label %79

66:                                               ; preds = %48, %43
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @jv_get_kind(i32 %67)
  %69 = call i32 @jv_kind_name(i64 %68)
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @jv_get_kind(i32 %70)
  %72 = call i32 @jv_kind_name(i64 %71)
  %73 = call i32 @jv_string_fmt(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72)
  %74 = call i32 @jv_invalid_with_msg(i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @jv_free(i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @jv_free(i32 %77)
  br label %79

79:                                               ; preds = %66, %53
  br label %80

80:                                               ; preds = %79, %34
  br label %81

81:                                               ; preds = %80, %18
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jv_is_valid(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_false(...) #1

declare dso_local i32 @jv_object_get(i32, i32) #1

declare dso_local i32 @jv_bool(i32) #1

declare dso_local i32 @jv_array_get(i32, i32) #1

declare dso_local i64 @jv_number_value(i32) #1

declare dso_local i32 @jv_invalid_with_msg(i32) #1

declare dso_local i32 @jv_string_fmt(i8*, i32, i32) #1

declare dso_local i32 @jv_kind_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

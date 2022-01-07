; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_aux.c_jv_setpath.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_aux.c_jv_setpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Path must be specified as an array\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_setpath(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @jv_get_kind(i32 %10)
  %12 = load i64, i64* @JV_KIND_ARRAY, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @jv_free(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @jv_free(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @jv_free(i32 %19)
  %21 = call i32 @jv_string(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @jv_invalid_with_msg(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %64

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @jv_is_valid(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @jv_free(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @jv_free(i32 %30)
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %4, align 4
  br label %64

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @jv_copy(i32 %34)
  %36 = call i64 @jv_array_length(i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @jv_free(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @jv_free(i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %4, align 4
  br label %64

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @jv_copy(i32 %45)
  %47 = call i32 @jv_array_get(i32 %46, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @jv_copy(i32 %49)
  %51 = call i64 @jv_array_length(i32 %50)
  %52 = call i32 @jv_array_slice(i32 %48, i32 1, i64 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @jv_copy(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @jv_copy(i32 %57)
  %59 = call i32 @jv_get(i32 %56, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @jv_setpath(i32 %59, i32 %60, i32 %61)
  %63 = call i32 @jv_set(i32 %53, i32 %54, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %44, %38, %27, %14
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_invalid_with_msg(i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @jv_is_valid(i32) #1

declare dso_local i64 @jv_array_length(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_array_get(i32, i32) #1

declare dso_local i32 @jv_array_slice(i32, i32, i64) #1

declare dso_local i32 @jv_set(i32, i32, i32) #1

declare dso_local i32 @jv_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

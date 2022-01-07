; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_aux.c_jv_getpath.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_aux.c_jv_getpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Path must be specified as an array\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_getpath(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @jv_get_kind(i32 %8)
  %10 = load i64, i64* @JV_KIND_ARRAY, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @jv_free(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @jv_free(i32 %15)
  %17 = call i32 @jv_string(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @jv_invalid_with_msg(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %50

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @jv_is_valid(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @jv_free(i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %3, align 4
  br label %50

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @jv_copy(i32 %28)
  %30 = call i64 @jv_array_length(i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @jv_free(i32 %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %3, align 4
  br label %50

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @jv_copy(i32 %37)
  %39 = call i32 @jv_array_get(i32 %38, i32 0)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @jv_copy(i32 %41)
  %43 = call i64 @jv_array_length(i32 %42)
  %44 = call i32 @jv_array_slice(i32 %40, i32 1, i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @jv_get(i32 %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @jv_getpath(i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %36, %32, %23, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
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

declare dso_local i32 @jv_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_startswith.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_startswith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"startswith() requires string inputs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @f_startswith to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_startswith(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @jv_get_kind(i32 %11)
  %13 = load i64, i64* @JV_KIND_STRING, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @jv_get_kind(i32 %16)
  %18 = load i64, i64* @JV_KIND_STRING, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @jv_string(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @ret_error2(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %53

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @jv_copy(i32 %26)
  %28 = call i32 @jv_string_length_bytes(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @jv_copy(i32 %29)
  %31 = call i32 @jv_string_length_bytes(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @jv_string_value(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @jv_string_value(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @memcmp(i32 %37, i32 %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 (...) @jv_true()
  store i32 %44, i32* %10, align 4
  br label %47

45:                                               ; preds = %35, %25
  %46 = call i32 (...) @jv_false()
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @jv_free(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @jv_free(i32 %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %47, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @ret_error2(i32, i32, i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @jv_string_value(i32) #1

declare dso_local i32 @jv_true(...) #1

declare dso_local i32 @jv_false(...) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

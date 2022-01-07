; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_endswith.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_endswith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"endswith() requires string inputs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @f_endswith to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_endswith(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @jv_get_kind(i32 %13)
  %15 = load i64, i64* @JV_KIND_STRING, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @jv_get_kind(i32 %18)
  %20 = load i64, i64* @JV_KIND_STRING, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17, %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @jv_string(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @ret_error2(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %61

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @jv_string_value(i32 %28)
  store i8* %29, i8** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @jv_string_value(i32 %30)
  store i8* %31, i8** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @jv_copy(i32 %32)
  %34 = call i64 @jv_string_length_bytes(i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @jv_copy(i32 %35)
  %37 = call i64 @jv_string_length_bytes(i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %27
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = sub i64 %43, %44
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @memcmp(i8* %46, i8* %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41, %27
  %52 = call i32 (...) @jv_false()
  store i32 %52, i32* %12, align 4
  br label %55

53:                                               ; preds = %41
  %54 = call i32 (...) @jv_true()
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @jv_free(i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @jv_free(i32 %58)
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %22
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @ret_error2(i32, i32, i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i64 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @jv_false(...) #1

declare dso_local i32 @jv_true(...) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

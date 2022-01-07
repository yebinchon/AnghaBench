; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers.c_ecma_builtin_helper_def_prop_by_index.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers.c_ecma_builtin_helper_def_prop_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_DIRECT_STRING_MAX_IMM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_builtin_helper_def_prop_by_index(i32* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @ECMA_DIRECT_STRING_MAX_IMM, align 8
  %14 = icmp sle i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @JERRY_LIKELY(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32* @ECMA_CREATE_DIRECT_UINT32_STRING(i64 %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @ecma_builtin_helper_def_prop(i32* %19, i32* %21, i32 %22, i64 %23)
  store i32 %24, i32* %5, align 4
  br label %36

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = call i32* @ecma_new_non_direct_string_from_uint32(i64 %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @ecma_builtin_helper_def_prop(i32* %28, i32* %29, i32 %30, i64 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @ecma_deref_ecma_string(i32* %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %25, %18
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @JERRY_LIKELY(i32) #1

declare dso_local i32 @ecma_builtin_helper_def_prop(i32*, i32*, i32, i64) #1

declare dso_local i32* @ECMA_CREATE_DIRECT_UINT32_STRING(i64) #1

declare dso_local i32* @ecma_new_non_direct_string_from_uint32(i64) #1

declare dso_local i32 @ecma_deref_ecma_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

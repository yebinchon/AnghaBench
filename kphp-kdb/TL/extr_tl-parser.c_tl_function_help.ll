; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_function_help.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_function_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { %struct.tl_expression* }
%struct.tl_expression = type { i64, %struct.tl_expression* }

@TL_SECTION_FUNCTIONS = common dso_local global i32 0, align 4
@TL_SECTION_TYPES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_function_help(%struct.tl_compiler* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_compiler*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tl_expression*, align 8
  %9 = alloca %struct.tl_expression*, align 8
  store %struct.tl_compiler* %0, %struct.tl_compiler** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %11 = load i32, i32* @TL_SECTION_FUNCTIONS, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.tl_expression* @tl_list_expressions_find_by_combinator_name(%struct.tl_compiler* %10, i32 %11, i8* %12, i32* null)
  store %struct.tl_expression* %13, %struct.tl_expression** %8, align 8
  %14 = load %struct.tl_expression*, %struct.tl_expression** %8, align 8
  %15 = icmp eq %struct.tl_expression* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %60

17:                                               ; preds = %3
  %18 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %19 = load %struct.tl_expression*, %struct.tl_expression** %8, align 8
  %20 = call i32 @tl_expression_dfs_visit(%struct.tl_compiler* %18, %struct.tl_expression* %19)
  %21 = load %struct.tl_expression*, %struct.tl_expression** %8, align 8
  %22 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %24 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %23, i32 0, i32 0
  %25 = load %struct.tl_expression*, %struct.tl_expression** %24, align 8
  %26 = load i64, i64* @TL_SECTION_TYPES, align 8
  %27 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %25, i64 %26
  %28 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %27, i32 0, i32 1
  %29 = load %struct.tl_expression*, %struct.tl_expression** %28, align 8
  store %struct.tl_expression* %29, %struct.tl_expression** %9, align 8
  br label %30

30:                                               ; preds = %51, %17
  %31 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %32 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %33 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %32, i32 0, i32 0
  %34 = load %struct.tl_expression*, %struct.tl_expression** %33, align 8
  %35 = load i64, i64* @TL_SECTION_TYPES, align 8
  %36 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %34, i64 %35
  %37 = icmp ne %struct.tl_expression* %31, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %30
  %39 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %40 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %46 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %47 = call i32 @tl_expression_write_to_file(i32* %44, %struct.tl_compiler* %45, %struct.tl_expression* %46)
  %48 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %49 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %38
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.tl_expression*, %struct.tl_expression** %9, align 8
  %53 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %52, i32 0, i32 1
  %54 = load %struct.tl_expression*, %struct.tl_expression** %53, align 8
  store %struct.tl_expression* %54, %struct.tl_expression** %9, align 8
  br label %30

55:                                               ; preds = %30
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %58 = load %struct.tl_expression*, %struct.tl_expression** %8, align 8
  %59 = call i32 @tl_expression_write_to_file(i32* %56, %struct.tl_compiler* %57, %struct.tl_expression* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.tl_expression* @tl_list_expressions_find_by_combinator_name(%struct.tl_compiler*, i32, i8*, i32*) #1

declare dso_local i32 @tl_expression_dfs_visit(%struct.tl_compiler*, %struct.tl_expression*) #1

declare dso_local i32 @tl_expression_write_to_file(i32*, %struct.tl_compiler*, %struct.tl_expression*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

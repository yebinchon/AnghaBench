; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_schema_print_unused_types.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_schema_print_unused_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { %struct.tl_expression* }
%struct.tl_expression = type { i32, i64, %struct.tl_expression* }

@TL_SECTION_FUNCTIONS = common dso_local global i64 0, align 8
@TL_SECTION_TYPES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_schema_print_unused_types(%struct.tl_compiler* %0, i32* %1) #0 {
  %3 = alloca %struct.tl_compiler*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tl_expression*, align 8
  %6 = alloca %struct.tl_expression*, align 8
  store %struct.tl_compiler* %0, %struct.tl_compiler** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %8 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %7, i32 0, i32 0
  %9 = load %struct.tl_expression*, %struct.tl_expression** %8, align 8
  %10 = load i64, i64* @TL_SECTION_FUNCTIONS, align 8
  %11 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %9, i64 %10
  store %struct.tl_expression* %11, %struct.tl_expression** %5, align 8
  %12 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %13 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %12, i32 0, i32 2
  %14 = load %struct.tl_expression*, %struct.tl_expression** %13, align 8
  store %struct.tl_expression* %14, %struct.tl_expression** %6, align 8
  br label %15

15:                                               ; preds = %23, %2
  %16 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %17 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %18 = icmp ne %struct.tl_expression* %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %21 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %22 = call i32 @tl_expression_dfs_visit(%struct.tl_compiler* %20, %struct.tl_expression* %21)
  br label %23

23:                                               ; preds = %19
  %24 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %25 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %24, i32 0, i32 2
  %26 = load %struct.tl_expression*, %struct.tl_expression** %25, align 8
  store %struct.tl_expression* %26, %struct.tl_expression** %6, align 8
  br label %15

27:                                               ; preds = %15
  %28 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %29 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %28, i32 0, i32 2
  %30 = load %struct.tl_expression*, %struct.tl_expression** %29, align 8
  store %struct.tl_expression* %30, %struct.tl_expression** %6, align 8
  br label %31

31:                                               ; preds = %38, %27
  %32 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %33 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %34 = icmp ne %struct.tl_expression* %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %37 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35
  %39 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %40 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %39, i32 0, i32 2
  %41 = load %struct.tl_expression*, %struct.tl_expression** %40, align 8
  store %struct.tl_expression* %41, %struct.tl_expression** %6, align 8
  br label %31

42:                                               ; preds = %31
  %43 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %44 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %43, i32 0, i32 0
  %45 = load %struct.tl_expression*, %struct.tl_expression** %44, align 8
  %46 = load i64, i64* @TL_SECTION_TYPES, align 8
  %47 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %45, i64 %46
  store %struct.tl_expression* %47, %struct.tl_expression** %5, align 8
  %48 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %49 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %48, i32 0, i32 2
  %50 = load %struct.tl_expression*, %struct.tl_expression** %49, align 8
  store %struct.tl_expression* %50, %struct.tl_expression** %6, align 8
  br label %51

51:                                               ; preds = %71, %42
  %52 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %53 = load %struct.tl_expression*, %struct.tl_expression** %5, align 8
  %54 = icmp ne %struct.tl_expression* %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %57 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %62 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %68 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %69 = call i32 @tl_expression_write_to_file(i32* %66, %struct.tl_compiler* %67, %struct.tl_expression* %68)
  br label %70

70:                                               ; preds = %65, %60, %55
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %73 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %72, i32 0, i32 2
  %74 = load %struct.tl_expression*, %struct.tl_expression** %73, align 8
  store %struct.tl_expression* %74, %struct.tl_expression** %6, align 8
  br label %51

75:                                               ; preds = %51
  ret i32 0
}

declare dso_local i32 @tl_expression_dfs_visit(%struct.tl_compiler*, %struct.tl_expression*) #1

declare dso_local i32 @tl_expression_write_to_file(i32*, %struct.tl_compiler*, %struct.tl_expression*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

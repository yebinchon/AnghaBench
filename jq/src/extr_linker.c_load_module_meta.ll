; ModuleID = '/home/carl/AnghaBench/jq/src/extr_linker.c_load_module_meta.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_linker.c_load_module_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locfile = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c".jq\00", align 1
@JV_KIND_NULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"deps\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_module_meta(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.locfile*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @validate_relpath(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @jq_get_lib_dirs(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @jq_get_jq_origin(i32* %17)
  %19 = call i32 (...) @jv_null()
  %20 = call i32 @find_lib(i32* %12, i32 %14, i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @jv_is_valid(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %73

26:                                               ; preds = %2
  %27 = call i32 (...) @jv_null()
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @jv_string_value(i32 %28)
  %30 = call i32 @jv_load_file(i32 %29, i32 1)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @jv_is_valid(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %26
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @jv_string_value(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @jv_string_value(i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @jv_copy(i32 %40)
  %42 = call i32 @jv_string_length_bytes(i32 %41)
  %43 = call %struct.locfile* @locfile_init(i32* %35, i32 %37, i32 %39, i32 %42)
  store %struct.locfile* %43, %struct.locfile** %10, align 8
  %44 = load %struct.locfile*, %struct.locfile** %10, align 8
  %45 = call i32 @jq_parse_library(%struct.locfile* %44, i32* %9)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %34
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @block_module_meta(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @jv_get_kind(i32 %51)
  %53 = load i64, i64* @JV_KIND_NULL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = call i32 (...) @jv_object()
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %48
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @jv_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 @block_take_imports(i32* %9)
  %61 = call i32 @jv_object_set(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %57, %34
  %63 = load %struct.locfile*, %struct.locfile** %10, align 8
  %64 = call i32 @locfile_free(%struct.locfile* %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @block_free(i32 %65)
  br label %67

67:                                               ; preds = %62, %26
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @jv_free(i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @jv_free(i32 %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %24
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @find_lib(i32*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @validate_relpath(i32) #1

declare dso_local i32 @jq_get_lib_dirs(i32*) #1

declare dso_local i32 @jq_get_jq_origin(i32*) #1

declare dso_local i32 @jv_null(...) #1

declare dso_local i64 @jv_is_valid(i32) #1

declare dso_local i32 @jv_load_file(i32, i32) #1

declare dso_local i32 @jv_string_value(i32) #1

declare dso_local %struct.locfile* @locfile_init(i32*, i32, i32, i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jq_parse_library(%struct.locfile*, i32*) #1

declare dso_local i32 @block_module_meta(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_object(...) #1

declare dso_local i32 @jv_object_set(i32, i32, i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @block_take_imports(i32*) #1

declare dso_local i32 @locfile_free(%struct.locfile*) #1

declare dso_local i32 @block_free(i32) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

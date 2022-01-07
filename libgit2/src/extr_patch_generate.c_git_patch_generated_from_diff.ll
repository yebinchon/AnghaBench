; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_patch_generate.c_git_patch_generated_from_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_patch_generate.c_git_patch_generated_from_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"git_patch_from_diff\00", align 1
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"index out of range for delta in diff\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@DIFF_FLAGS_KNOWN_BINARY = common dso_local global i32 0, align 4
@GIT_DIFF_SKIP_BINARY_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_patch_generated_from_diff(i32** %0, %struct.TYPE_22__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %11, align 8
  %12 = load i32**, i32*** %5, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32**, i32*** %5, align 8
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = call i64 @diff_required(%struct.TYPE_22__* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %102

21:                                               ; preds = %16
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  %24 = load i64, i64* %7, align 8
  %25 = call %struct.TYPE_21__* @git_vector_get(i32* %23, i64 %24)
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %10, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %27 = icmp ne %struct.TYPE_21__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %30 = call i32 @git_error_set(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %31, i32* %4, align 4
  br label %102

32:                                               ; preds = %21
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %36 = call i64 @git_diff_delta__should_skip(%struct.TYPE_18__* %34, %struct.TYPE_21__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %102

39:                                               ; preds = %32
  %40 = load i32**, i32*** %5, align 8
  %41 = icmp ne i32** %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DIFF_FLAGS_KNOWN_BINARY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GIT_DIFF_SKIP_BINARY_CHECK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49, %42
  store i32 0, i32* %4, align 4
  br label %102

58:                                               ; preds = %49, %39
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @patch_generated_alloc_from_diff(%struct.TYPE_20__** %11, %struct.TYPE_22__* %59, i64 %60)
  store i32 %61, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %102

65:                                               ; preds = %58
  %66 = call i32 @memset(%struct.TYPE_19__* %9, i32 0, i32 4)
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %69 = call i32 @diff_output_to_patch(i32* %67, %struct.TYPE_20__* %68)
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = call i32 @git_xdiff_init(%struct.TYPE_19__* %9, %struct.TYPE_18__* %71)
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %75 = call i32 @patch_generated_invoke_file_callback(%struct.TYPE_20__* %73, i32* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %65
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %81 = call i32 @patch_generated_create(%struct.TYPE_20__* %79, i32* %80)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %78, %65
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32**, i32*** %5, align 8
  %91 = icmp ne i32** %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = call i32 @git_patch_free(i32* %94)
  br label %100

96:                                               ; preds = %89
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i32**, i32*** %5, align 8
  store i32* %98, i32** %99, align 8
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %63, %57, %38, %28, %20
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @diff_required(%struct.TYPE_22__*, i8*) #1

declare dso_local %struct.TYPE_21__* @git_vector_get(i32*, i64) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i64 @git_diff_delta__should_skip(%struct.TYPE_18__*, %struct.TYPE_21__*) #1

declare dso_local i32 @patch_generated_alloc_from_diff(%struct.TYPE_20__**, %struct.TYPE_22__*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @diff_output_to_patch(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @git_xdiff_init(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @patch_generated_invoke_file_callback(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @patch_generated_create(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @git_patch_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

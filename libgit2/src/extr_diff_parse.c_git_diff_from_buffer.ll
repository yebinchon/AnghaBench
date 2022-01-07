; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_parse.c_git_diff_from_buffer.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_parse.c_git_diff_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_18__, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_17__* }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_from_buffer(%struct.TYPE_18__** %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_18__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_18__** %0, %struct.TYPE_18__*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %11, align 8
  %12 = call %struct.TYPE_16__* (...) @diff_parsed_alloc()
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %14 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_16__* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.TYPE_16__* @git_patch_parse_ctx_init(i8* %15, i64 %16, i32* null)
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %9, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %19 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_16__* %18)
  br label %20

20:                                               ; preds = %31, %3
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %28 = call i32 @git_patch_parse(%struct.TYPE_17__** %8, %struct.TYPE_16__* %27)
  store i32 %28, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %43

31:                                               ; preds = %26
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = call i32 @git_vector_insert(i32* %33, %struct.TYPE_17__* %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = call i32 @git_vector_insert(i32* %38, %struct.TYPE_17__* %41)
  br label %20

43:                                               ; preds = %30, %20
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @GIT_ENOTFOUND, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = call i64 @git_vector_length(i32* %49)
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (...) @git_error_clear()
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %52, %47, %43
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %56 = call i32 @git_patch_parse_ctx_free(%struct.TYPE_16__* %55)
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = call i32 @git_diff_free(%struct.TYPE_18__* %61)
  br label %67

63:                                               ; preds = %54
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %4, align 8
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %66, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_16__* @diff_parsed_alloc(...) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @git_patch_parse_ctx_init(i8*, i64, i32*) #1

declare dso_local i32 @git_patch_parse(%struct.TYPE_17__**, %struct.TYPE_16__*) #1

declare dso_local i32 @git_vector_insert(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @git_vector_length(i32*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_patch_parse_ctx_free(%struct.TYPE_16__*) #1

declare dso_local i32 @git_diff_free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

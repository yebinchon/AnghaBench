; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filter.c_filter_registry_insert.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filter.c_filter_registry_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i64, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_13__* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@filter_registry = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_13__*, i32)* @filter_registry_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_registry_insert(i8* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @filter_def_scan_attrs(i32* %12, i64* %9, i64* %10, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %72

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64* %11, i64 %21, i32 2)
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64* %11, i64 %23, i32 8)
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %11, i64 %25, i32 48)
  %27 = load i64, i64* %11, align 8
  %28 = call %struct.TYPE_12__* @git__calloc(i32 1, i64 %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %8, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__* %29)
  %31 = load i8*, i8** %5, align 8
  %32 = call %struct.TYPE_12__* @git__strdup(i8* %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 4
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %34, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__* %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 5
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = call %struct.TYPE_12__* @git_buf_detach(i32* %12)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = call i32 @filter_def_set_attrs(%struct.TYPE_12__* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = call i64 @git_vector_insert(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @filter_registry, i32 0, i32 0), %struct.TYPE_12__* %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %20
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = call i32 @git__free(%struct.TYPE_12__* %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = call i32 @git__free(%struct.TYPE_12__* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = call i32 @git__free(%struct.TYPE_12__* %68)
  store i32 -1, i32* %4, align 4
  br label %72

70:                                               ; preds = %20
  %71 = call i32 @git_vector_sort(i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @filter_registry, i32 0, i32 0))
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %59, %19
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @filter_def_scan_attrs(i32*, i64*, i64*, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64*, i64, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local %struct.TYPE_12__* @git__calloc(i32, i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @git__strdup(i8*) #1

declare dso_local %struct.TYPE_12__* @git_buf_detach(i32*) #1

declare dso_local i32 @filter_def_set_attrs(%struct.TYPE_12__*) #1

declare dso_local i64 @git_vector_insert(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @git__free(%struct.TYPE_12__*) #1

declare dso_local i32 @git_vector_sort(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_mem.c_git_config_backend_from_string.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_mem.c_git_config_backend_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GIT_CONFIG_BACKEND_VERSION = common dso_local global i32 0, align 4
@config_memory_open = common dso_local global i32 0, align 4
@config_memory_get = common dso_local global i32 0, align 4
@config_memory_set = common dso_local global i32 0, align 4
@config_memory_set_multivar = common dso_local global i32 0, align 4
@config_memory_delete = common dso_local global i32 0, align 4
@config_memory_delete_multivar = common dso_local global i32 0, align 4
@config_memory_iterator = common dso_local global i32 0, align 4
@config_memory_lock = common dso_local global i32 0, align 4
@config_memory_unlock = common dso_local global i32 0, align 4
@git_config_backend_snapshot = common dso_local global i32 0, align 4
@config_memory_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_backend_from_string(i32** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call %struct.TYPE_7__* @git__calloc(i32 1, i32 60)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %11 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = call i64 @git_config_entries_new(i32* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = call i32 @git__free(%struct.TYPE_7__* %17)
  store i32 -1, i32* %4, align 4
  br label %88

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @git_buf_set(i32* %21, i8* %22, i64 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @git_config_entries_free(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = call i32 @git__free(%struct.TYPE_7__* %31)
  store i32 -1, i32* %4, align 4
  br label %88

33:                                               ; preds = %19
  %34 = load i32, i32* @GIT_CONFIG_BACKEND_VERSION, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 12
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* @config_memory_open, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 11
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @config_memory_get, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 10
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @config_memory_set, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 9
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @config_memory_set_multivar, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 8
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @config_memory_delete, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 7
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @config_memory_delete_multivar, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 6
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @config_memory_iterator, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 5
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @config_memory_lock, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @config_memory_unlock, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @git_config_backend_snapshot, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @config_memory_free, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = bitcast %struct.TYPE_7__* %85 to i32*
  %87 = load i32**, i32*** %5, align 8
  store i32* %86, i32** %87, align 8
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %33, %26, %16
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_7__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__*) #1

declare dso_local i64 @git_config_entries_new(i32*) #1

declare dso_local i32 @git__free(%struct.TYPE_7__*) #1

declare dso_local i64 @git_buf_set(i32*, i8*, i64) #1

declare dso_local i32 @git_config_entries_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

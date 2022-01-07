; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_snapshot.c_git_config_backend_snapshot.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_snapshot.c_git_config_backend_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, {}*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_7__*, i32 }

@GIT_CONFIG_BACKEND_VERSION = common dso_local global i8* null, align 8
@config_snapshot_open = common dso_local global i32 0, align 4
@config_snapshot_get = common dso_local global i32 0, align 4
@config_snapshot_set = common dso_local global i32 0, align 4
@config_snapshot_set_multivar = common dso_local global i32 0, align 4
@config_snapshot_delete = common dso_local global i32 0, align 4
@config_snapshot_delete_multivar = common dso_local global i32 0, align 4
@config_snapshot_iterator = common dso_local global i32 0, align 4
@config_snapshot_lock = common dso_local global i32 0, align 4
@config_snapshot_unlock = common dso_local global i32 0, align 4
@config_snapshot_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_backend_snapshot(%struct.TYPE_7__** %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %6 = call %struct.TYPE_8__* @git__calloc(i32 1, i32 80)
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %8 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_8__* %7)
  %9 = load i8*, i8** @GIT_CONFIG_BACKEND_VERSION, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 12
  store i8* %9, i8** %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = call i32 @git_mutex_init(i32* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i8*, i8** @GIT_CONFIG_BACKEND_VERSION, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 12
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* @config_snapshot_open, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 11
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @config_snapshot_get, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 10
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @config_snapshot_set, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 9
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @config_snapshot_set_multivar, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 8
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = bitcast {}** %44 to i32 (%struct.TYPE_7__**, %struct.TYPE_7__*)**
  store i32 (%struct.TYPE_7__**, %struct.TYPE_7__*)* @git_config_backend_snapshot, i32 (%struct.TYPE_7__**, %struct.TYPE_7__*)** %45, align 8
  %46 = load i32, i32* @config_snapshot_delete, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 7
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @config_snapshot_delete_multivar, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 6
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @config_snapshot_iterator, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @config_snapshot_lock, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @config_snapshot_unlock, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @config_snapshot_free, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %72, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_8__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_8__*) #1

declare dso_local i32 @git_mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

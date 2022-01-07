; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_entries.c_git_config_entries_append.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_entries.c_git_config_entries_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_config_entries_append(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = call %struct.TYPE_14__* @git__calloc(i32 1, i32 16)
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %6, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %10 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__* %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %13, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_14__* @git_strmap_get(i32 %16, i32 %19)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %5, align 8
  %21 = icmp eq %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = call i32 @git_strmap_set(i32 %28, i32 %31, %struct.TYPE_14__* %32)
  store i32 %33, i32* %7, align 4
  br label %37

34:                                               ; preds = %2
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = call i32 @config_entry_list_append(%struct.TYPE_14__** %5, %struct.TYPE_14__* %35)
  br label %37

37:                                               ; preds = %34, %22
  %38 = call %struct.TYPE_14__* @git__calloc(i32 1, i32 16)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %6, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__* %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %43, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = call i32 @config_entry_list_append(%struct.TYPE_14__** %45, %struct.TYPE_14__* %46)
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.TYPE_14__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @git_strmap_get(i32, i32) #1

declare dso_local i32 @git_strmap_set(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @config_entry_list_append(%struct.TYPE_14__**, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule__status.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule__status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32* }

@GIT_SUBMODULE_IGNORE_UNSPECIFIED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_IGNORE_ALL = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS__IN_FLAGS = common dso_local global i32 0, align 4
@GIT_SUBMODULE_IGNORE_DIRTY = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS__HEAD_OID_VALID = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS__INDEX_OID_VALID = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS__WD_OID_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_submodule__status(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_11__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* @GIT_SUBMODULE_IGNORE_UNSPECIFIED, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %19, %6
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @GIT_SUBMODULE_IGNORE_ALL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GIT_SUBMODULE_STATUS__IN_FLAGS, align 4
  %32 = and i32 %30, %31
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %7, align 4
  br label %121

34:                                               ; preds = %23
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %43 = call i64 @submodule_update_index(%struct.TYPE_11__* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 -1, i32* %7, align 4
  br label %121

46:                                               ; preds = %41
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %48 = call i64 @submodule_update_head(%struct.TYPE_11__* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %7, align 4
  br label %121

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %34
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @GIT_SUBMODULE_IGNORE_DIRTY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %58 = call i64 @git_submodule_open_bare(i32** %15, %struct.TYPE_11__* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 (...) @git_error_clear()
  br label %65

62:                                               ; preds = %56
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 @git_repository_free(i32* %63)
  br label %65

65:                                               ; preds = %62, %60
  store i32* null, i32** %15, align 8
  br label %73

66:                                               ; preds = %52
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %68 = call i64 @git_submodule_open(i32** %15, %struct.TYPE_11__* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 (...) @git_error_clear()
  store i32* null, i32** %15, align 8
  br label %72

72:                                               ; preds = %70, %66
  br label %73

73:                                               ; preds = %72, %65
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @GIT_SUBMODULE_STATUS__CLEAR_INTERNAL(i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %79 = call i32 @submodule_get_index_status(i32* %14, %struct.TYPE_11__* %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @submodule_get_wd_status(i32* %14, %struct.TYPE_11__* %80, i32* %81, i32 %82)
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @git_repository_free(i32* %84)
  %86 = load i32, i32* %14, align 4
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @GIT_SUBMODULE_STATUS__HEAD_OID_VALID, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @submodule_copy_oid_maybe(i32* %88, i32* %90, i32 %97)
  %99 = load i32*, i32** %10, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @GIT_SUBMODULE_STATUS__INDEX_OID_VALID, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @submodule_copy_oid_maybe(i32* %99, i32* %101, i32 %108)
  %110 = load i32*, i32** %11, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_OID_VALID, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @submodule_copy_oid_maybe(i32* %110, i32* %112, i32 %119)
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %73, %50, %45, %27
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i64 @submodule_update_index(%struct.TYPE_11__*) #1

declare dso_local i64 @submodule_update_head(%struct.TYPE_11__*) #1

declare dso_local i64 @git_submodule_open_bare(i32**, %struct.TYPE_11__*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i64 @git_submodule_open(i32**, %struct.TYPE_11__*) #1

declare dso_local i32 @GIT_SUBMODULE_STATUS__CLEAR_INTERNAL(i32) #1

declare dso_local i32 @submodule_get_index_status(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @submodule_get_wd_status(i32*, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @submodule_copy_oid_maybe(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

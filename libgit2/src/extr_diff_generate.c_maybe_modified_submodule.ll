; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_maybe_modified_submodule.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_maybe_modified_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@GIT_DELTA_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_IGNORE_SUBMODULES = common dso_local global i32 0, align 4
@GIT_SUBMODULE_IGNORE_ALL = common dso_local global i64 0, align 8
@GIT_EEXISTS = common dso_local global i32 0, align 4
@GIT_DELTA_MODIFIED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_WD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_14__*, %struct.TYPE_15__*)* @maybe_modified_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_modified_submodule(i32* %0, i32* %1, %struct.TYPE_14__* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = load i32, i32* @GIT_DIFF_IGNORE_SUBMODULES, align 4
  %23 = call i64 @DIFF_FLAG_IS_SET(%struct.TYPE_14__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @GIT_SUBMODULE_IGNORE_ALL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %4
  store i32 0, i32* %5, align 4
  br label %96

30:                                               ; preds = %25
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @git_submodule_lookup(i32** %11, i32 %34, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %30
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @GIT_EEXISTS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (...) @git_error_clear()
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %96

50:                                               ; preds = %30
  %51 = load i64, i64* %13, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32*, i32** %11, align 8
  %55 = call i64 @git_submodule_ignore(i32* %54)
  %56 = load i64, i64* @GIT_SUBMODULE_IGNORE_ALL, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %92

59:                                               ; preds = %53, %50
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @git_submodule__status(i32* %12, i32* null, i32* null, i32* %60, i32* %61, i64 %62)
  store i32 %63, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %91

66:                                               ; preds = %59
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @GIT_SUBMODULE_STATUS_IS_WD_UNMODIFIED(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  br label %90

73:                                               ; preds = %66
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @git_oid_equal(i32* %82, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %78
  %87 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  %88 = load i32*, i32** %6, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %78, %73
  br label %90

90:                                               ; preds = %89, %70
  br label %91

91:                                               ; preds = %90, %65
  br label %92

92:                                               ; preds = %91, %58
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @git_submodule_free(i32* %93)
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %48, %29
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @DIFF_FLAG_IS_SET(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @git_submodule_lookup(i32**, i32, i32) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i64 @git_submodule_ignore(i32*) #1

declare dso_local i32 @git_submodule__status(i32*, i32*, i32*, i32*, i32*, i64) #1

declare dso_local i32 @GIT_SUBMODULE_STATUS_IS_WD_UNMODIFIED(i32) #1

declare dso_local i32 @git_oid_equal(i32*, i32*) #1

declare dso_local i32 @git_submodule_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

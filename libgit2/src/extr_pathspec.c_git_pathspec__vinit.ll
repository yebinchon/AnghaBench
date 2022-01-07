; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_git_pathspec__vinit.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pathspec.c_git_pathspec__vinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8** }
%struct.TYPE_10__ = type { i32 }

@GIT_ATTR_FNMATCH_ALLOWSPACE = common dso_local global i32 0, align 4
@GIT_ATTR_FNMATCH_ALLOWNEG = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_pathspec__vinit(i32* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @memset(i32* %12, i32 0, i32 4)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = call i64 @git_pathspec_is_empty(%struct.TYPE_9__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @git_vector_init(i32* %19, i64 %22, i32* null)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %78

26:                                               ; preds = %18
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %74, %26
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %10, align 8
  %40 = call %struct.TYPE_10__* @git__calloc(i32 1, i32 4)
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %11, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %42 = icmp ne %struct.TYPE_10__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %78

44:                                               ; preds = %33
  %45 = load i32, i32* @GIT_ATTR_FNMATCH_ALLOWSPACE, align 4
  %46 = load i32, i32* @GIT_ATTR_FNMATCH_ALLOWNEG, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @git_attr_fnmatch__parse(%struct.TYPE_10__* %50, i32* %51, i32* null, i8** %10)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @GIT_ENOTFOUND, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %58 = call i32 @git__free(%struct.TYPE_10__* %57)
  br label %74

59:                                               ; preds = %44
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %64 = call i32 @git__free(%struct.TYPE_10__* %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %78

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = call i64 @git_vector_insert(i32* %68, %struct.TYPE_10__* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 -1, i32* %4, align 4
  br label %78

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %27

77:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %72, %62, %43, %25, %17
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @git_pathspec_is_empty(%struct.TYPE_9__*) #1

declare dso_local i64 @git_vector_init(i32*, i64, i32*) #1

declare dso_local %struct.TYPE_10__* @git__calloc(i32, i32) #1

declare dso_local i32 @git_attr_fnmatch__parse(%struct.TYPE_10__*, i32*, i32*, i8**) #1

declare dso_local i32 @git__free(%struct.TYPE_10__*) #1

declare dso_local i64 @git_vector_insert(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

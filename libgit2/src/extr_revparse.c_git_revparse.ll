; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revparse.c_git_revparse.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revparse.c_git_revparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@GIT_REVPARSE_RANGE = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid pattern '..'\00", align 1
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@GIT_REVPARSE_MERGE_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_REVPARSE_SINGLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_revparse(%struct.TYPE_4__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br label %20

20:                                               ; preds = %17, %14, %3
  %21 = phi i1 [ false, %14 ], [ false, %3 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = call i32 @memset(%struct.TYPE_4__* %24, i32 0, i32 12)
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @strstr(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %97

29:                                               ; preds = %20
  %30 = load i32, i32* @GIT_REVPARSE_RANGE, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @git__strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %38 = call i32 @git_error_set(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %39, i32* %4, align 4
  br label %108

40:                                               ; preds = %29
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = call i8* @git__substrdup(i8* %41, i32 %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 46
  br i1 %55, label %56, label %64

56:                                               ; preds = %40
  %57 = load i32, i32* @GIT_REVPARSE_MERGE_BASE, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 8
  br label %64

64:                                               ; preds = %56, %40
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %6, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %75

73:                                               ; preds = %64
  %74 = load i8*, i8** %10, align 8
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %72 ], [ %74, %73 ]
  %77 = call i32 @git_revparse_single(i32* %66, i32* %67, i8* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32*, i32** %6, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %91

89:                                               ; preds = %80
  %90 = load i8*, i8** %11, align 8
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %88 ], [ %90, %89 ]
  %93 = call i32 @git_revparse_single(i32* %82, i32* %83, i8* %92)
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %91, %75
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @git__free(i8* %95)
  br label %106

97:                                               ; preds = %20
  %98 = load i32, i32* @GIT_REVPARSE_SINGLE, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32*, i32** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @git_revparse_single(i32* %102, i32* %103, i8* %104)
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %97, %94
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %36
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @git__strcmp(i8*, i8*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i8* @git__substrdup(i8*, i32) #1

declare dso_local i32 @git_revparse_single(i32*, i32*, i8*) #1

declare dso_local i32 @git__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

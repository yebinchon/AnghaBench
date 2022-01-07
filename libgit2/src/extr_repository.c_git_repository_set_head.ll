; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_set_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_set_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i8* null, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@GIT_ERROR_REPOSITORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"cannot set HEAD to reference '%s' as it is the current HEAD of a linked repository.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_set_head(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  %11 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi i1 [ false, %2 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i8*, i8** @GIT_HEAD_FILE, align 8
  %23 = call i32 @git_reference_lookup(%struct.TYPE_14__** %7, i32* %21, i8* %22)
  store i32 %23, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %129

27:                                               ; preds = %17
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @checkout_message(i32* %9, %struct.TYPE_14__* %28, i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %120

33:                                               ; preds = %27
  %34 = load i32*, i32** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @git_reference_lookup(%struct.TYPE_14__** %6, i32* %34, i8* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @GIT_ENOTFOUND, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %120

44:                                               ; preds = %39, %33
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = icmp ne %struct.TYPE_14__* %45, null
  br i1 %46, label %47, label %76

47:                                               ; preds = %44
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %47
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @git__strcmp(i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %53
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = call i64 @git_reference_is_branch(%struct.TYPE_14__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = call i64 @git_branch_is_checked_out(%struct.TYPE_14__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* @GIT_ERROR_REPOSITORY, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %74 = call i8* @git_reference_name(%struct.TYPE_14__* %73)
  %75 = call i32 @git_error_set(i32 %72, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* %74)
  store i32 -1, i32* %10, align 4
  br label %120

76:                                               ; preds = %67, %63, %53, %47, %44
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %108, label %79

79:                                               ; preds = %76
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = call i64 @git_reference_is_branch(%struct.TYPE_14__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32*, i32** %4, align 8
  %85 = load i8*, i8** @GIT_HEAD_FILE, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = call i8* @git_reference_name(%struct.TYPE_14__* %86)
  %88 = call i32 @git_buf_cstr(i32* %9)
  %89 = call i32 @git_reference_symbolic_create(%struct.TYPE_14__** %8, i32* %84, i8* %85, i8* %87, i32 1, i32 %88)
  store i32 %89, i32* %10, align 4
  br label %107

90:                                               ; preds = %79
  %91 = load i32*, i32** %4, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = call i32 @git_reference_target(%struct.TYPE_14__* %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %95 = call i64 @git_reference_is_tag(%struct.TYPE_14__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %90
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = call i64 @git_reference_is_remote(%struct.TYPE_14__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97, %90
  %102 = load i8*, i8** %5, align 8
  br label %104

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i8* [ %102, %101 ], [ null, %103 ]
  %106 = call i32 @detach(i32* %91, i32 %93, i8* %105)
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %104, %83
  br label %119

108:                                              ; preds = %76
  %109 = load i8*, i8** %5, align 8
  %110 = call i64 @git_reference__is_branch(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i32*, i32** %4, align 8
  %114 = load i8*, i8** @GIT_HEAD_FILE, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = call i32 @git_buf_cstr(i32* %9)
  %117 = call i32 @git_reference_symbolic_create(%struct.TYPE_14__** %8, i32* %113, i8* %114, i8* %115, i32 1, i32 %116)
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %112, %108
  br label %119

119:                                              ; preds = %118, %107
  br label %120

120:                                              ; preds = %119, %71, %43, %32
  %121 = call i32 @git_buf_dispose(i32* %9)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %123 = call i32 @git_reference_free(%struct.TYPE_14__* %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %125 = call i32 @git_reference_free(%struct.TYPE_14__* %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %127 = call i32 @git_reference_free(%struct.TYPE_14__* %126)
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %120, %25
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_reference_lookup(%struct.TYPE_14__**, i32*, i8*) #1

declare dso_local i32 @checkout_message(i32*, %struct.TYPE_14__*, i8*) #1

declare dso_local i64 @git__strcmp(i32, i32) #1

declare dso_local i64 @git_reference_is_branch(%struct.TYPE_14__*) #1

declare dso_local i64 @git_branch_is_checked_out(%struct.TYPE_14__*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i8* @git_reference_name(%struct.TYPE_14__*) #1

declare dso_local i32 @git_reference_symbolic_create(%struct.TYPE_14__**, i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @detach(i32*, i32, i8*) #1

declare dso_local i32 @git_reference_target(%struct.TYPE_14__*) #1

declare dso_local i64 @git_reference_is_tag(%struct.TYPE_14__*) #1

declare dso_local i64 @git_reference_is_remote(%struct.TYPE_14__*) #1

declare dso_local i64 @git_reference__is_branch(i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

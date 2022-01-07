; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_upstream_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_branch.c_git_branch_upstream_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"branch.%s.remote\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"branch.%s.merge\00", align 1
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"branch '%s' does not have an upstream\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_branch_upstream_name(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %17, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br label %23

23:                                               ; preds = %20, %3
  %24 = phi i1 [ false, %3 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @git_buf_sanitize(i32* %27)
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @git_reference__is_branch(i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @not_a_local_branch(i8* %33)
  store i32 %34, i32* %4, align 4
  br label %110

35:                                               ; preds = %23
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @git_repository_config_snapshot(i32** %14, i32* %36)
  store i32 %37, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %110

41:                                               ; preds = %35
  %42 = load i32*, i32** %14, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @retrieve_upstream_configuration(i32* %8, i32* %42, i8* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %44, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %101

47:                                               ; preds = %41
  %48 = load i32*, i32** %14, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @retrieve_upstream_configuration(i32* %9, i32* %48, i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %50, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %101

53:                                               ; preds = %47
  %54 = call i64 @git_buf_len(i32* %8)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = call i64 @git_buf_len(i32* %9)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %53
  %60 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @git_error_set(i32 %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %63, i32* %11, align 4
  br label %101

64:                                               ; preds = %56
  %65 = call i32 @git_buf_cstr(i32* %8)
  %66 = call i64 @strcmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %64
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @git_buf_cstr(i32* %8)
  %71 = call i32 @git_remote_lookup(i32** %12, i32* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %101

74:                                               ; preds = %68
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @git_buf_cstr(i32* %9)
  %77 = call i32* @git_remote__matching_refspec(i32* %75, i32 %76)
  store i32* %77, i32** %13, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %81, i32* %11, align 4
  br label %101

82:                                               ; preds = %74
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @git_buf_cstr(i32* %9)
  %85 = call i64 @git_refspec_transform(i32* %10, i32* %83, i32 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %101

88:                                               ; preds = %82
  br label %96

89:                                               ; preds = %64
  %90 = call i32 @git_buf_cstr(i32* %9)
  %91 = call i64 @git_buf_len(i32* %9)
  %92 = call i32 @git_buf_set(i32* %10, i32 %90, i64 %91)
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %101

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %88
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @git_buf_cstr(i32* %10)
  %99 = call i64 @git_buf_len(i32* %10)
  %100 = call i32 @git_buf_set(i32* %97, i32 %98, i64 %99)
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %96, %94, %87, %80, %73, %59, %52, %46
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @git_config_free(i32* %102)
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @git_remote_free(i32* %104)
  %106 = call i32 @git_buf_dispose(i32* %8)
  %107 = call i32 @git_buf_dispose(i32* %9)
  %108 = call i32 @git_buf_dispose(i32* %10)
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %101, %39, %32
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_buf_sanitize(i32*) #1

declare dso_local i32 @git_reference__is_branch(i8*) #1

declare dso_local i32 @not_a_local_branch(i8*) #1

declare dso_local i32 @git_repository_config_snapshot(i32**, i32*) #1

declare dso_local i32 @retrieve_upstream_configuration(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @git_buf_len(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_remote_lookup(i32**, i32*, i32) #1

declare dso_local i32* @git_remote__matching_refspec(i32*, i32) #1

declare dso_local i64 @git_refspec_transform(i32*, i32*, i32) #1

declare dso_local i32 @git_buf_set(i32*, i32, i64) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_remote_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

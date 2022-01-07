; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_clone.c_clone_local_into.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_clone.c_clone_local_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"the repository is not empty\00", align 1
@GIT_REPOSITORY_ITEM_OBJECTS = common dso_local global i32 0, align 4
@GIT_CPDIR_LINK_FILES = common dso_local global i32 0, align 4
@GIT_OBJECT_DIR_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"clone: from %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i8*, i32)* @clone_local_into to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clone_local_into(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %23, i32* %19, align 4
  %24 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %24, i32* %20, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br label %30

30:                                               ; preds = %27, %6
  %31 = phi i1 [ false, %6 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @git_repository_is_empty(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %39 = call i32 @git_error_set(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %127

40:                                               ; preds = %30
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @git_remote_url(i32* %41)
  %43 = call i32 @git_path_from_url_or_path(i32* %19, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %7, align 4
  br label %127

47:                                               ; preds = %40
  %48 = call i32 @git_buf_cstr(i32* %19)
  %49 = call i32 @git_repository_open(i32** %16, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call i32 @git_buf_dispose(i32* %19)
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %7, align 4
  br label %127

54:                                               ; preds = %47
  %55 = load i32*, i32** %16, align 8
  %56 = load i32, i32* @GIT_REPOSITORY_ITEM_OBJECTS, align 4
  %57 = call i64 @git_repository_item_path(i32* %17, i32* %55, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* @GIT_REPOSITORY_ITEM_OBJECTS, align 4
  %62 = call i64 @git_repository_item_path(i32* %18, i32* %60, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54
  store i32 -1, i32* %14, align 4
  br label %119

65:                                               ; preds = %59
  store i32 0, i32* %15, align 4
  %66 = load i32*, i32** %16, align 8
  %67 = call i32 @git_repository_path(i32* %66)
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @git_repository_path(i32* %68)
  %70 = load i32, i32* %13, align 4
  %71 = call i64 @can_link(i32 %67, i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32, i32* @GIT_CPDIR_LINK_FILES, align 4
  %75 = load i32, i32* %15, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %73, %65
  %78 = call i32 @git_buf_cstr(i32* %17)
  %79 = call i32 @git_buf_cstr(i32* %18)
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @GIT_OBJECT_DIR_MODE, align 4
  %82 = call i32 @git_futils_cp_r(i32 %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %77
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i32, i32* @GIT_CPDIR_LINK_FILES, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %15, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %15, align 4
  %93 = call i32 @git_buf_cstr(i32* %17)
  %94 = call i32 @git_buf_cstr(i32* %18)
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @GIT_OBJECT_DIR_MODE, align 4
  %97 = call i32 @git_futils_cp_r(i32 %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %88, %85, %77
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %119

102:                                              ; preds = %98
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @git_remote_url(i32* %103)
  %105 = call i32 @git_buf_printf(i32* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %9, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @git_buf_cstr(i32* %20)
  %109 = call i32 @git_remote_fetch(i32* %106, i32* null, i32* %107, i32 %108)
  store i32 %109, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %119

112:                                              ; preds = %102
  %113 = load i32*, i32** %8, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @git_buf_cstr(i32* %20)
  %118 = call i32 @checkout_branch(i32* %113, i32* %114, i32* %115, i8* %116, i32 %117)
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %112, %111, %101, %64
  %120 = call i32 @git_buf_dispose(i32* %20)
  %121 = call i32 @git_buf_dispose(i32* %19)
  %122 = call i32 @git_buf_dispose(i32* %17)
  %123 = call i32 @git_buf_dispose(i32* %18)
  %124 = load i32*, i32** %16, align 8
  %125 = call i32 @git_repository_free(i32* %124)
  %126 = load i32, i32* %14, align 4
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %119, %51, %45, %37
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_repository_is_empty(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_path_from_url_or_path(i32*, i32) #1

declare dso_local i32 @git_remote_url(i32*) #1

declare dso_local i32 @git_repository_open(i32**, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i64 @git_repository_item_path(i32*, i32*, i32) #1

declare dso_local i64 @can_link(i32, i32, i32) #1

declare dso_local i32 @git_repository_path(i32*) #1

declare dso_local i32 @git_futils_cp_r(i32, i32, i32, i32) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i32) #1

declare dso_local i32 @git_remote_fetch(i32*, i32*, i32*, i32) #1

declare dso_local i32 @checkout_branch(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

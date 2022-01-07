; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_repo_local_config.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_repo_local_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_CONFIG_FILENAME_INREPO = common dso_local global i32 0, align 4
@GIT_CONFIG_FILE_MODE = common dso_local global i32 0, align 4
@GIT_CONFIG_LEVEL_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i8*)* @repo_local_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @repo_local_config(i32** %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* @GIT_CONFIG_FILENAME_INREPO, align 4
  %16 = call i64 @git_buf_joinpath(i32* %13, i8* %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %69

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = call i8* @git_buf_cstr(i32* %20)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @git_path_isfile(i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* @GIT_CONFIG_FILE_MODE, align 4
  %28 = call i32 @create_empty_file(i8* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %69

32:                                               ; preds = %25, %19
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32**, i32*** %6, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @git_config_open_ondisk(i32** %36, i8* %37)
  store i32 %38, i32* %5, align 4
  br label %69

39:                                               ; preds = %32
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @git_repository_config__weakptr(i32** %11, i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %69

45:                                               ; preds = %39
  %46 = load i32**, i32*** %6, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @GIT_CONFIG_LEVEL_LOCAL, align 4
  %49 = call i32 @git_config_open_level(i32** %46, i32* %47, i32 %48)
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = call i32 (...) @git_error_clear()
  %53 = load i32*, i32** %11, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* @GIT_CONFIG_LEVEL_LOCAL, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @git_config_add_file_ondisk(i32* %53, i8* %54, i32 %55, i32* %56, i32 0)
  store i32 %57, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = load i32**, i32*** %6, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* @GIT_CONFIG_LEVEL_LOCAL, align 4
  %63 = call i32 @git_config_open_level(i32** %60, i32* %61, i32 %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %59, %51
  br label %65

65:                                               ; preds = %64, %45
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @git_config_free(i32* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %43, %35, %30, %18
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @git_buf_joinpath(i32*, i8*, i32) #1

declare dso_local i8* @git_buf_cstr(i32*) #1

declare dso_local i32 @git_path_isfile(i8*) #1

declare dso_local i32 @create_empty_file(i8*, i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i32 @git_repository_config__weakptr(i32**, i32*) #1

declare dso_local i32 @git_config_open_level(i32**, i32*, i32) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_config_add_file_ondisk(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

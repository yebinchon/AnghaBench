; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_repo_init_fs_configs.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_repo_init_fs_configs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"core.filemode\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"core.symlinks\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i32)* @repo_init_fs_configs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @repo_init_fs_configs(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %10, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = load i8*, i8** %9, align 8
  store i8* %16, i8** %10, align 8
  br label %17

17:                                               ; preds = %15, %5
  %18 = load i32*, i32** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @is_chmod_supported(i8* %19)
  %21 = call i32 @git_config_set_bool(i32* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %66

25:                                               ; preds = %17
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @are_symlinks_supported(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @git_config_set_bool(i32* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %31, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %6, align 4
  br label %66

35:                                               ; preds = %29
  br label %43

36:                                               ; preds = %25
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @git_config_delete_entry(i32* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (...) @git_error_clear()
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @is_filesystem_case_insensitive(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @git_config_set_bool(i32* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %52, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %6, align 4
  br label %66

56:                                               ; preds = %50
  br label %64

57:                                               ; preds = %46
  %58 = load i32*, i32** %7, align 8
  %59 = call i64 @git_config_delete_entry(i32* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 (...) @git_error_clear()
  br label %63

63:                                               ; preds = %61, %57
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %64, %43
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %54, %33, %23
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @git_config_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @is_chmod_supported(i8*) #1

declare dso_local i32 @are_symlinks_supported(i8*) #1

declare dso_local i64 @git_config_delete_entry(i32*, i8*) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i64 @is_filesystem_case_insensitive(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_check_repo_format.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_check_repo_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository_format = type { i32, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"core.repositoryformatversion\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"extensions.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"noop\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"preciousobjects\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"partialclone\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"worktreeconfig\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @check_repo_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_repo_format(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.repository_format*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.repository_format*
  store %struct.repository_format* %11, %struct.repository_format** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @git_config_int(i8* %16, i8* %17)
  %19 = load %struct.repository_format*, %struct.repository_format** %8, align 8
  %20 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  br label %75

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @skip_prefix(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %9)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %73

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @git_config_bool(i8* %35, i8* %36)
  %38 = load %struct.repository_format*, %struct.repository_format** %8, align 8
  %39 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  br label %72

40:                                               ; preds = %30
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @config_error_nonbool(i8* %48)
  store i32 %49, i32* %4, align 4
  br label %80

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @xstrdup(i8* %51)
  %53 = load %struct.repository_format*, %struct.repository_format** %8, align 8
  %54 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %71

55:                                               ; preds = %40
  %56 = load i8*, i8** %9, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i8* @git_config_bool(i8* %60, i8* %61)
  %63 = load %struct.repository_format*, %struct.repository_format** %8, align 8
  %64 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %70

65:                                               ; preds = %55
  %66 = load %struct.repository_format*, %struct.repository_format** %8, align 8
  %67 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %66, i32 0, i32 0
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @string_list_append(i32* %67, i8* %68)
  br label %70

70:                                               ; preds = %65, %59
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71, %34
  br label %73

73:                                               ; preds = %72, %29
  br label %74

74:                                               ; preds = %73, %21
  br label %75

75:                                               ; preds = %74, %15
  %76 = load i8*, i8** %5, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @read_worktree_config(i8* %76, i8* %77, i8* %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %47
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_int(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @string_list_append(i32*, i8*) #1

declare dso_local i32 @read_worktree_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

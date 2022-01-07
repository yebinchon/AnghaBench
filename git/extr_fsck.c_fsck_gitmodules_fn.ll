; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_fsck_gitmodules_fn.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_fsck_gitmodules_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsck_gitmodules_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"submodule\00", align 1
@FSCK_MSG_GITMODULES_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"disallowed submodule name: %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@FSCK_MSG_GITMODULES_URL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"disallowed submodule url: %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@FSCK_MSG_GITMODULES_PATH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"disallowed submodule path: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @fsck_gitmodules_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsck_gitmodules_fn(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fsck_gitmodules_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.fsck_gitmodules_data*
  store %struct.fsck_gitmodules_data* %14, %struct.fsck_gitmodules_data** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @parse_config_key(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %9, i32* %11, i8** %10)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %3
  store i32 0, i32* %4, align 4
  br label %96

22:                                               ; preds = %18
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i8* @xmemdupz(i8* %23, i32 %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = call i64 @check_submodule_name(i8* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.fsck_gitmodules_data*, %struct.fsck_gitmodules_data** %8, align 8
  %31 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fsck_gitmodules_data*, %struct.fsck_gitmodules_data** %8, align 8
  %34 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FSCK_MSG_GITMODULES_NAME, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @report(i32 %32, i32 %35, i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load %struct.fsck_gitmodules_data*, %struct.fsck_gitmodules_data** %8, align 8
  %40 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %29, %22
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %68, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @looks_like_command_line_option(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load %struct.fsck_gitmodules_data*, %struct.fsck_gitmodules_data** %8, align 8
  %56 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fsck_gitmodules_data*, %struct.fsck_gitmodules_data** %8, align 8
  %59 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FSCK_MSG_GITMODULES_URL, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @report(i32 %57, i32 %60, i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = load %struct.fsck_gitmodules_data*, %struct.fsck_gitmodules_data** %8, align 8
  %65 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %54, %50, %47, %43
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %6, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = call i64 @looks_like_command_line_option(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load %struct.fsck_gitmodules_data*, %struct.fsck_gitmodules_data** %8, align 8
  %81 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.fsck_gitmodules_data*, %struct.fsck_gitmodules_data** %8, align 8
  %84 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @FSCK_MSG_GITMODULES_PATH, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @report(i32 %82, i32 %85, i32 %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  %89 = load %struct.fsck_gitmodules_data*, %struct.fsck_gitmodules_data** %8, align 8
  %90 = getelementptr inbounds %struct.fsck_gitmodules_data, %struct.fsck_gitmodules_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %79, %75, %72, %68
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 @free(i8* %94)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %93, %21
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i64 @parse_config_key(i8*, i8*, i8**, i32*, i8**) #1

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local i64 @check_submodule_name(i8*) #1

declare dso_local i32 @report(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @looks_like_command_line_option(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

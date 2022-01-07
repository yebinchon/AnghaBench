; ModuleID = '/home/carl/AnghaBench/git/extr_setup.c_setup_discovered_git_dir.c'
source_filename = "/home/carl/AnghaBench/git/extr_setup.c_setup_discovered_git_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }
%struct.repository_format = type { i32 }

@GIT_WORK_TREE_ENVIRONMENT = common dso_local global i32 0, align 4
@git_work_tree_cfg = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"cannot come back to cwd\00", align 1
@is_bare_repository_cfg = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@DEFAULT_GIT_DIR_ENVIRONMENT = common dso_local global i32 0, align 4
@inside_git_dir = common dso_local global i64 0, align 8
@inside_work_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.strbuf*, i32, %struct.repository_format*, i32*)* @setup_discovered_git_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @setup_discovered_git_dir(i8* %0, %struct.strbuf* %1, i32 %2, %struct.repository_format* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.repository_format*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.strbuf* %1, %struct.strbuf** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.repository_format* %3, %struct.repository_format** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.repository_format*, %struct.repository_format** %10, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i64 @check_repository_format_gently(i8* %14, %struct.repository_format* %15, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %119

20:                                               ; preds = %5
  %21 = load i32, i32* @GIT_WORK_TREE_ENVIRONMENT, align 4
  %22 = call i64 @getenv(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* @git_work_tree_cfg, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %24, %20
  store i8* null, i8** %12, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @is_absolute_path(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @real_pathdup(i8* %38, i32 1)
  store i8* %39, i8** %12, align 8
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %37, %33, %27
  %41 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @chdir(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %48 = call i32 @die_errno(i32 %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %52 = load %struct.repository_format*, %struct.repository_format** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i8* @setup_explicit_git_dir(i8* %50, %struct.strbuf* %51, %struct.repository_format* %52, i32* %53)
  store i8* %54, i8** %13, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i8*, i8** %13, align 8
  store i8* %57, i8** %6, align 8
  br label %119

58:                                               ; preds = %24
  %59 = load i64, i64* @is_bare_repository_cfg, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  br label %72

69:                                               ; preds = %61
  %70 = load i8*, i8** %7, align 8
  %71 = call i8* @real_path(i8* %70)
  br label %72

72:                                               ; preds = %69, %67
  %73 = phi i8* [ %68, %67 ], [ %71, %69 ]
  %74 = call i32 @set_git_dir(i8* %73)
  %75 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %76 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @chdir(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %82 = call i32 @die_errno(i32 %81)
  br label %83

83:                                               ; preds = %80, %72
  store i8* null, i8** %6, align 8
  br label %119

84:                                               ; preds = %58
  %85 = call i32 @set_git_work_tree(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* @DEFAULT_GIT_DIR_ENVIRONMENT, align 4
  %88 = call i64 @strcmp(i8* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @set_git_dir(i8* %91)
  br label %93

93:                                               ; preds = %90, %84
  store i64 0, i64* @inside_git_dir, align 8
  store i32 1, i32* @inside_work_tree, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %96 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i8* null, i8** %6, align 8
  br label %119

100:                                              ; preds = %93
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %103 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @offset_1st_component(i8* %104)
  %106 = icmp ne i32 %101, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %107, %100
  %111 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %112 = call i32 @strbuf_addch(%struct.strbuf* %111, i8 signext 47)
  %113 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %114 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8* %118, i8** %6, align 8
  br label %119

119:                                              ; preds = %110, %99, %83, %49, %19
  %120 = load i8*, i8** %6, align 8
  ret i8* %120
}

declare dso_local i64 @check_repository_format_gently(i8*, %struct.repository_format*, i32*) #1

declare dso_local i64 @getenv(i32) #1

declare dso_local i32 @is_absolute_path(i8*) #1

declare dso_local i8* @real_pathdup(i8*, i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32 @die_errno(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @setup_explicit_git_dir(i8*, %struct.strbuf*, %struct.repository_format*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @set_git_dir(i8*) #1

declare dso_local i8* @real_path(i8*) #1

declare dso_local i32 @set_git_work_tree(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @offset_1st_component(i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

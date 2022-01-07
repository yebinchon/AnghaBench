; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_validate_worktree.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_validate_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.worktree = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"'%s' at main working tree is not the repository directory\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"'%s' file does not contain absolute path to the working tree location\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"worktrees/%s/gitdir\00", align 1
@WT_VALIDATE_WORKTREE_MISSING_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"'%s' does not exist\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"'%s' is not a .git file, error code %d\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"worktrees/%s\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"'%s' does not point back to '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_worktree(%struct.worktree* %0, %struct.strbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.worktree*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.worktree* %0, %struct.worktree** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i8* null, i8** %8, align 8
  store i32 -1, i32* %10, align 4
  %12 = load %struct.worktree*, %struct.worktree** %4, align 8
  %13 = getelementptr inbounds %struct.worktree, %struct.worktree* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.worktree*, %struct.worktree** %4, align 8
  %17 = call i64 @is_main_worktree(%struct.worktree* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @is_directory(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %104

25:                                               ; preds = %19
  %26 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %27 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.strbuf*, i32, i32, ...) @strbuf_addf_gently(%struct.strbuf* %26, i32 %27, i32 %29)
  br label %104

31:                                               ; preds = %3
  %32 = load %struct.worktree*, %struct.worktree** %4, align 8
  %33 = getelementptr inbounds %struct.worktree, %struct.worktree* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @is_absolute_path(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %39 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.worktree*, %struct.worktree** %4, align 8
  %41 = getelementptr inbounds %struct.worktree, %struct.worktree* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @git_common_path(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = call i32 (%struct.strbuf*, i32, i32, ...) @strbuf_addf_gently(%struct.strbuf* %38, i32 %39, i32 %43)
  br label %104

45:                                               ; preds = %31
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @WT_VALIDATE_WORKTREE_MISSING_OK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.worktree*, %struct.worktree** %4, align 8
  %52 = getelementptr inbounds %struct.worktree, %struct.worktree* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @file_exists(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %104

57:                                               ; preds = %50, %45
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @file_exists(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %64 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (%struct.strbuf*, i32, i32, ...) @strbuf_addf_gently(%struct.strbuf* %63, i32 %64, i32 %66)
  br label %104

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @read_gitfile_gently(i32 %70, i32* %9)
  %72 = call i8* @xstrdup_or_null(i32 %71)
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %77 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %78 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (%struct.strbuf*, i32, i32, ...) @strbuf_addf_gently(%struct.strbuf* %76, i32 %77, i32 %79, i32 %80)
  br label %104

82:                                               ; preds = %68
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.worktree*, %struct.worktree** %4, align 8
  %85 = getelementptr inbounds %struct.worktree, %struct.worktree* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @git_common_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = call i32 @real_path(i32 %87)
  %89 = call i32 @fspathcmp(i8* %83, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %82
  %93 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %94 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %95 = load %struct.worktree*, %struct.worktree** %4, align 8
  %96 = getelementptr inbounds %struct.worktree, %struct.worktree* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.worktree*, %struct.worktree** %4, align 8
  %99 = getelementptr inbounds %struct.worktree, %struct.worktree* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @git_common_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = call i32 (%struct.strbuf*, i32, i32, ...) @strbuf_addf_gently(%struct.strbuf* %93, i32 %94, i32 %97, i32 %101)
  br label %103

103:                                              ; preds = %92, %82
  br label %104

104:                                              ; preds = %103, %75, %62, %56, %37, %25, %24
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @free(i8* %105)
  %107 = call i32 @strbuf_release(%struct.strbuf* %7)
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i64 @is_main_worktree(%struct.worktree*) #2

declare dso_local i64 @is_directory(i32) #2

declare dso_local i32 @strbuf_addf_gently(%struct.strbuf*, i32, i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @is_absolute_path(i32) #2

declare dso_local i32 @git_common_path(i8*, i32) #2

declare dso_local i32 @file_exists(i32) #2

declare dso_local i8* @xstrdup_or_null(i32) #2

declare dso_local i32 @read_gitfile_gently(i32, i32*) #2

declare dso_local i32 @fspathcmp(i8*, i32) #2

declare dso_local i32 @real_path(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

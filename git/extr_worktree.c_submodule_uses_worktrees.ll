; ModuleID = '/home/carl/AnghaBench/git/extr_worktree.c_submodule_uses_worktrees.c'
source_filename = "/home/carl/AnghaBench/git/extr_worktree.c_submodule_uses_worktrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i64 }
%struct.repository_format = type { i64 }
%struct.dirent = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@REPOSITORY_FORMAT_INIT = common dso_local global %struct.repository_format zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/config\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"worktrees\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @submodule_uses_worktrees(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.repository_format, align 8
  store i8* %0, i8** %3, align 8
  %10 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %8, align 4
  %11 = bitcast %struct.repository_format* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.repository_format* @REPOSITORY_FORMAT_INIT to i8*), i64 8, i1 false)
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @git_pathdup_submodule(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @get_common_dir_noenv(%struct.strbuf* %5, i8* %18)
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @free(i8* %20)
  %22 = call i32 @strbuf_addstr(%struct.strbuf* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @read_repository_format(%struct.repository_format* %9, i32 %24)
  %26 = getelementptr inbounds %struct.repository_format, %struct.repository_format* %9, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = call i32 @strbuf_release(%struct.strbuf* %5)
  %31 = call i32 @clear_repository_format(%struct.repository_format* %9)
  store i32 1, i32* %2, align 4
  br label %64

32:                                               ; preds = %17
  %33 = call i32 @clear_repository_format(%struct.repository_format* %9)
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %37 = sub nsw i64 %35, %36
  %38 = call i32 @strbuf_setlen(%struct.strbuf* %5, i64 %37)
  %39 = call i32 @strbuf_addstr(%struct.strbuf* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32* @opendir(i32 %41)
  store i32* %42, i32** %6, align 8
  %43 = call i32 @strbuf_release(%struct.strbuf* %5)
  %44 = load i32*, i32** %6, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %64

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %58, %47
  %49 = load i32*, i32** %6, align 8
  %50 = call %struct.dirent* @readdir(i32* %49)
  store %struct.dirent* %50, %struct.dirent** %7, align 8
  %51 = icmp ne %struct.dirent* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load %struct.dirent*, %struct.dirent** %7, align 8
  %54 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @is_dot_or_dotdot(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %48

59:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @closedir(i32* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %46, %29, %16
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @git_pathdup_submodule(i8*, i8*, i8*) #2

declare dso_local i32 @get_common_dir_noenv(%struct.strbuf*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @read_repository_format(%struct.repository_format*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @clear_repository_format(%struct.repository_format*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32* @opendir(i32) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @is_dot_or_dotdot(i32) #2

declare dso_local i32 @closedir(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

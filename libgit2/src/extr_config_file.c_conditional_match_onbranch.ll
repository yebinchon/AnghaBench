; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_file.c_conditional_match_onbranch.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_file.c_conditional_match_onbranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_SYMREF = common dso_local global i8* null, align 8
@GIT_REFS_HEADS_DIR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"**\00", align 1
@WM_PATHNAME = common dso_local global i32 0, align 4
@WM_MATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i8*)* @conditional_match_onbranch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conditional_match_onbranch(i32* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %13 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @GIT_UNUSED(i8* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @git_repository_path(i32* %16)
  %18 = load i32, i32* @GIT_HEAD_FILE, align 4
  %19 = call i32 @git_buf_joinpath(%struct.TYPE_10__* %10, i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @git_futils_readbuffer(%struct.TYPE_10__* %9, i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %4
  br label %90

27:                                               ; preds = %21
  %28 = call i32 @git_buf_rtrim(%struct.TYPE_10__* %9)
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i8*, i8** @GIT_SYMREF, align 8
  %32 = load i8*, i8** @GIT_SYMREF, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i64 @git__strncmp(i64 %30, i8* %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %90

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i8*, i8** @GIT_SYMREF, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = call i32 @git_buf_consume(%struct.TYPE_10__* %9, i64 %43)
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i8*, i8** @GIT_REFS_HEADS_DIR, align 8
  %48 = load i8*, i8** @GIT_REFS_HEADS_DIR, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = call i64 @git__strncmp(i64 %46, i8* %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %90

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** @GIT_REFS_HEADS_DIR, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  %60 = call i32 @git_buf_consume(%struct.TYPE_10__* %9, i64 %59)
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @git_buf_sets(%struct.TYPE_10__* %10, i8* %61)
  store i32 %62, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %90

65:                                               ; preds = %53
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @git_path_is_dirsep(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = call i32 @git_buf_puts(%struct.TYPE_10__* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %76, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %90

79:                                               ; preds = %75, %65
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @WM_PATHNAME, align 4
  %85 = call i64 @wildmatch(i64 %81, i64 %83, i32 %84)
  %86 = load i64, i64* @WM_MATCH, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %79, %78, %64, %52, %36, %26
  %91 = call i32 @git_buf_dispose(%struct.TYPE_10__* %9)
  %92 = call i32 @git_buf_dispose(%struct.TYPE_10__* %10)
  %93 = load i32, i32* %11, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GIT_UNUSED(i8*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @git_repository_path(i32*) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_10__*, i64) #2

declare dso_local i32 @git_buf_rtrim(%struct.TYPE_10__*) #2

declare dso_local i64 @git__strncmp(i64, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_buf_consume(%struct.TYPE_10__*, i64) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_10__*, i8*) #2

declare dso_local i64 @git_path_is_dirsep(i8 signext) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_10__*, i8*) #2

declare dso_local i64 @wildmatch(i64, i64, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_fetchhead.c_fetchhead_test_fetch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_fetchhead.c_fetchhead_test_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i8** }

@GIT_FETCH_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@GIT_REMOTE_DOWNLOAD_TAGS_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"./foo/.git/FETCH_HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @fetchhead_test_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetchhead_test_fetch(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_FETCH_OPTIONS_INIT to i8*), i64 4, i1 false)
  %12 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %8, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_remote_lookup(i32** %5, i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @GIT_REMOTE_DOWNLOAD_TAGS_AUTO, align 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i8** %3, i8*** %22, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %10, align 8
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %26 = call i32 @git_remote_fetch(i32* %24, %struct.TYPE_10__* %25, %struct.TYPE_11__* %6, i32* null)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @git_remote_free(i32* %28)
  %30 = call i32 @git_futils_readbuffer(%struct.TYPE_12__* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @strcmp(i32 %33, i8* %34)
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = call i32 @git_buf_dispose(%struct.TYPE_12__* %7)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @cl_assert(i32 %39)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_remote_fetch(i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_12__*, i8*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #2

declare dso_local i32 @cl_assert(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

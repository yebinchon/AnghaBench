; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__0.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ign\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"sub/file\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sub/ign\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"sub/ign/file\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"sub/ign/sub\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"sub/ign/sub/file\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"sub/sub\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"sub/sub/file\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"sub/sub/ign\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"sub/sub/sub\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"dir/\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"sub/dir\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"sub/dir/\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"sub/dir/file\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"sub/sub/dir\00", align 1
@__const.test_ignore_status__0.test_cases = private unnamed_addr constant [19 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 0 }, %struct.anon zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_ATTR_FILE__FROM_FILE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c".git/info/exclude\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c".gitignore\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__0() #0 {
  %1 = alloca [19 x %struct.anon], align 16
  %2 = alloca %struct.anon*, align 8
  %3 = bitcast [19 x %struct.anon]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([19 x %struct.anon]* @__const.test_ignore_status__0.test_cases to i8*), i64 304, i1 false)
  %4 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  store i32 %4, i32* @g_repo, align 4
  %5 = getelementptr inbounds [19 x %struct.anon], [19 x %struct.anon]* %1, i64 0, i64 0
  store %struct.anon* %5, %struct.anon** %2, align 8
  br label %6

6:                                                ; preds = %19, %0
  %7 = load %struct.anon*, %struct.anon** %2, align 8
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.anon*, %struct.anon** %2, align 8
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.anon*, %struct.anon** %2, align 8
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @assert_ignored(i32 %14, i8* %17)
  br label %19

19:                                               ; preds = %11
  %20 = load %struct.anon*, %struct.anon** %2, align 8
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 1
  store %struct.anon* %21, %struct.anon** %2, align 8
  br label %6

22:                                               ; preds = %6
  %23 = load i32, i32* @g_repo, align 4
  %24 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %25 = call i32 @git_attr_cache__is_cached(i32 %23, i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32, i32* @g_repo, align 4
  %28 = load i32, i32* @GIT_ATTR_FILE__FROM_FILE, align 4
  %29 = call i32 @git_attr_cache__is_cached(i32 %27, i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %30 = call i32 @cl_assert(i32 %29)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @assert_ignored(i32, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_attr_cache__is_cached(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

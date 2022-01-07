; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_version.c_test_index_version__can_read_v4.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_version.c_test_index_version__can_read_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"file.tx\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"file.txz\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"zzz\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"indexv4\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_INDEX_STAGE_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_version__can_read_v4() #0 {
  %1 = alloca [5 x i8*], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = bitcast [5 x i8*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false)
  %6 = bitcast i8* %5 to [5 x i8*]*
  %7 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %7, align 16
  %8 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8** %8, align 8
  %9 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %11, align 16
  %12 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 %12, i32* @g_repo, align 4
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_repository_index(i32** %2, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_index_entrycount(i32* %16)
  %18 = call i32 @cl_assert_equal_sz(i32 %17, i32 5)
  store i64 0, i64* %3, align 8
  br label %19

19:                                               ; preds = %35, %0
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 0
  %22 = call i64 @ARRAY_SIZE(i8** %21)
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32*, i32** %2, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @GIT_INDEX_STAGE_NORMAL, align 4
  %30 = call i32* @git_index_get_bypath(i32* %25, i8* %28, i32 %29)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  br label %35

35:                                               ; preds = %24
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %19

38:                                               ; preds = %19
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @git_index_free(i32* %39)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #2

declare dso_local i32 @git_index_entrycount(i32*) #2

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i32* @git_index_get_bypath(i32*, i8*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

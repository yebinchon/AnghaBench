; ModuleID = '/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__get_many.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__get_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"repoattr\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rootattr\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"missingattr\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"subattr\00", align 1
@__const.test_attr_repo__get_many.names = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)], align 16
@g_repo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"root_test1\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"root_test2\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"sub/subdir_test1\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_attr_repo__get_many() #0 {
  %1 = alloca [4 x i8*], align 16
  %2 = alloca [4 x i8*], align 16
  %3 = bitcast [4 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([4 x i8*]* @__const.test_attr_repo__get_many.names to i8*), i64 32, i1 false)
  %4 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0
  %5 = load i32, i32* @g_repo, align 4
  %6 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %7 = call i32 @git_attr_get_many(i8** %4, i32 %5, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 4, i8** %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0
  %10 = load i8*, i8** %9, align 16
  %11 = call i32 @GIT_ATTR_IS_TRUE(i8* %10)
  %12 = call i32 @cl_assert(i32 %11)
  %13 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @GIT_ATTR_IS_TRUE(i8* %14)
  %16 = call i32 @cl_assert(i32 %15)
  %17 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 2
  %18 = load i8*, i8** %17, align 16
  %19 = call i32 @GIT_ATTR_IS_UNSPECIFIED(i8* %18)
  %20 = call i32 @cl_assert(i32 %19)
  %21 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 3
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @GIT_ATTR_IS_UNSPECIFIED(i8* %22)
  %24 = call i32 @cl_assert(i32 %23)
  %25 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0
  %26 = load i32, i32* @g_repo, align 4
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %28 = call i32 @git_attr_get_many(i8** %25, i32 %26, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 4, i8** %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0
  %31 = load i8*, i8** %30, align 16
  %32 = call i32 @GIT_ATTR_IS_TRUE(i8* %31)
  %33 = call i32 @cl_assert(i32 %32)
  %34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @GIT_ATTR_IS_FALSE(i8* %35)
  %37 = call i32 @cl_assert(i32 %36)
  %38 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 2
  %39 = load i8*, i8** %38, align 16
  %40 = call i32 @GIT_ATTR_IS_UNSPECIFIED(i8* %39)
  %41 = call i32 @cl_assert(i32 %40)
  %42 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 3
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @GIT_ATTR_IS_UNSPECIFIED(i8* %43)
  %45 = call i32 @cl_assert(i32 %44)
  %46 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0
  %47 = load i32, i32* @g_repo, align 4
  %48 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %49 = call i32 @git_attr_get_many(i8** %46, i32 %47, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 4, i8** %48)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 0
  %52 = load i8*, i8** %51, align 16
  %53 = call i32 @GIT_ATTR_IS_TRUE(i8* %52)
  %54 = call i32 @cl_assert(i32 %53)
  %55 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @GIT_ATTR_IS_TRUE(i8* %56)
  %58 = call i32 @cl_assert(i32 %57)
  %59 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 2
  %60 = load i8*, i8** %59, align 16
  %61 = call i32 @GIT_ATTR_IS_UNSPECIFIED(i8* %60)
  %62 = call i32 @cl_assert(i32 %61)
  %63 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 3
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %64)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_attr_get_many(i8**, i32, i32, i8*, i32, i8**) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @GIT_ATTR_IS_TRUE(i8*) #2

declare dso_local i32 @GIT_ATTR_IS_UNSPECIFIED(i8*) #2

declare dso_local i32 @GIT_ATTR_IS_FALSE(i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

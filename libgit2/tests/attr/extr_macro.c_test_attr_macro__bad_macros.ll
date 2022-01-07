; ModuleID = '/home/carl/AnghaBench/libgit2/tests/attr/extr_macro.c_test_attr_macro__bad_macros.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/attr/extr_macro.c_test_attr_macro__bad_macros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"rootattr\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"positive\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"negative\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"firstmacro\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"secondmacro\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"thirdmacro\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"macro_bad\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"hahaha\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_attr_macro__bad_macros() #0 {
  %1 = alloca [6 x i8*], align 16
  %2 = alloca [6 x i8*], align 16
  %3 = bitcast [6 x i8*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 48, i1 false)
  %4 = bitcast i8* %3 to [6 x i8*]*
  %5 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8** %5, align 16
  %6 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8** %6, align 8
  %7 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8** %7, align 16
  %8 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i32 0, i32 3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8** %8, align 8
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i32 0, i32 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %4, i32 0, i32 5
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8** %10, align 8
  %11 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 %11, i32* @g_repo, align 4
  %12 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 0
  %13 = load i32, i32* @g_repo, align 4
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i64 0, i64 0
  %15 = call i32 @git_attr_get_many(i8** %12, i32 %13, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 6, i8** %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 0
  %18 = load i8*, i8** %17, align 16
  %19 = call i32 @GIT_ATTR_IS_UNSPECIFIED(i8* %18)
  %20 = call i32 @cl_assert(i32 %19)
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @GIT_ATTR_IS_TRUE(i8* %22)
  %24 = call i32 @cl_assert(i32 %23)
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 2
  %26 = load i8*, i8** %25, align 16
  %27 = call i32 @GIT_ATTR_IS_FALSE(i8* %26)
  %28 = call i32 @cl_assert(i32 %27)
  %29 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @GIT_ATTR_IS_FALSE(i8* %30)
  %32 = call i32 @cl_assert(i32 %31)
  %33 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 4
  %34 = load i8*, i8** %33, align 16
  %35 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 5
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @GIT_ATTR_IS_TRUE(i8* %37)
  %39 = call i32 @cl_assert(i32 %38)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_attr_get_many(i8**, i32, i32, i8*, i32, i8**) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @GIT_ATTR_IS_UNSPECIFIED(i8*) #2

declare dso_local i32 @GIT_ATTR_IS_TRUE(i8*) #2

declare dso_local i32 @GIT_ATTR_IS_FALSE(i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

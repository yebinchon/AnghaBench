; ModuleID = '/home/carl/AnghaBench/libgit2/tests/attr/extr_macro.c_test_attr_macro__macros.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/attr/extr_macro.c_test_attr_macro__macros.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"rootattr\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"crlf\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"frotz\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mymacro\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"positive\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"negative\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"another\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"macro2\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"multi2\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"multi3\00", align 1
@__const.test_attr_macro__macros.names3 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"attr\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"binfile\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"macro_test\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"77\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"answer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_attr_macro__macros() #0 {
  %1 = alloca [5 x i8*], align 16
  %2 = alloca [5 x i8*], align 16
  %3 = alloca [3 x i8*], align 16
  %4 = alloca [5 x i8*], align 16
  %5 = bitcast [5 x i8*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false)
  %6 = bitcast i8* %5 to [5 x i8*]*
  %7 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8** %7, align 16
  %8 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8** %8, align 8
  %9 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i32 0, i32 2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %11, align 16
  %12 = bitcast [5 x i8*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false)
  %13 = bitcast i8* %12 to [5 x i8*]*
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8** %15, align 8
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8** %18, align 16
  %19 = bitcast [3 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([3 x i8*]* @__const.test_attr_macro__macros.names3 to i8*), i64 24, i1 false)
  %20 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store i32 %20, i32* @g_repo, align 4
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %22 = load i32, i32* @g_repo, align 4
  %23 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i64 0, i64 0
  %24 = call i32 @git_attr_get_many(i8** %21, i32 %22, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 5, i8** %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %27 = load i8*, i8** %26, align 16
  %28 = call i32 @GIT_ATTR_IS_TRUE(i8* %27)
  %29 = call i32 @cl_assert(i32 %28)
  %30 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @GIT_ATTR_IS_TRUE(i8* %31)
  %33 = call i32 @cl_assert(i32 %32)
  %34 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 2
  %35 = load i8*, i8** %34, align 16
  %36 = call i32 @GIT_ATTR_IS_FALSE(i8* %35)
  %37 = call i32 @cl_assert(i32 %36)
  %38 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @GIT_ATTR_IS_FALSE(i8* %39)
  %41 = call i32 @cl_assert(i32 %40)
  %42 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 4
  %43 = load i8*, i8** %42, align 16
  %44 = call i32 @GIT_ATTR_IS_UNSPECIFIED(i8* %43)
  %45 = call i32 @cl_assert(i32 %44)
  %46 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %47 = load i32, i32* @g_repo, align 4
  %48 = getelementptr inbounds [5 x i8*], [5 x i8*]* %2, i64 0, i64 0
  %49 = call i32 @git_attr_get_many(i8** %46, i32 %47, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 5, i8** %48)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %52 = load i8*, i8** %51, align 16
  %53 = call i32 @GIT_ATTR_IS_TRUE(i8* %52)
  %54 = call i32 @cl_assert(i32 %53)
  %55 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @GIT_ATTR_IS_TRUE(i8* %56)
  %58 = call i32 @cl_assert(i32 %57)
  %59 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 2
  %60 = load i8*, i8** %59, align 16
  %61 = call i32 @GIT_ATTR_IS_FALSE(i8* %60)
  %62 = call i32 @cl_assert(i32 %61)
  %63 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 3
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @GIT_ATTR_IS_UNSPECIFIED(i8* %64)
  %66 = call i32 @cl_assert(i32 %65)
  %67 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 4
  %68 = load i8*, i8** %67, align 16
  %69 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %68)
  %70 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %71 = load i32, i32* @g_repo, align 4
  %72 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %73 = call i32 @git_attr_get_many(i8** %70, i32 %71, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 3, i8** %72)
  %74 = call i32 @cl_git_pass(i32 %73)
  %75 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %76 = load i8*, i8** %75, align 16
  %77 = call i32 @GIT_ATTR_IS_TRUE(i8* %76)
  %78 = call i32 @cl_assert(i32 %77)
  %79 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @GIT_ATTR_IS_FALSE(i8* %80)
  %82 = call i32 @cl_assert(i32 %81)
  %83 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 2
  %84 = load i8*, i8** %83, align 16
  %85 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* %84)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_attr_get_many(i8**, i32, i32, i8*, i32, i8**) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @GIT_ATTR_IS_TRUE(i8*) #2

declare dso_local i32 @GIT_ATTR_IS_FALSE(i8*) #2

declare dso_local i32 @GIT_ATTR_IS_UNSPECIFIED(i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

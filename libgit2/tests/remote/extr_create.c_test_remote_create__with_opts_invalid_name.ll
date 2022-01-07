; ModuleID = '/home/carl/AnghaBench/libgit2/tests/remote/extr_create.c_test_remote_create__with_opts_invalid_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/remote/extr_create.c_test_remote_create__with_opts_invalid_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Inv@{id\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".lock\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"a.lock\00", align 1
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@TEST_URL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_remote_create__with_opts_invalid_name() #0 {
  %1 = alloca [6 x i8*], align 16
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = bitcast [6 x i8*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 48, i1 false)
  %5 = bitcast i8* %4 to [6 x i8*]*
  %6 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %6, align 16
  %7 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %7, align 8
  %8 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %8, align 16
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %9, align 8
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i32 0, i32 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8** %10, align 16
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i32 0, i32 5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8** %11, align 8
  store i64 0, i64* %2, align 8
  br label %12

12:                                               ; preds = %28, %0
  %13 = load i64, i64* %2, align 8
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i64 0, i64 0
  %15 = call i64 @ARRAY_SIZE(i8** %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  store i32* null, i32** %3, align 8
  %18 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %19 = load i32, i32* @_repo, align 4
  %20 = load i64, i64* %2, align 8
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @TEST_URL, align 4
  %24 = call i32 @create_with_name(i32** %3, i32 %19, i8* %22, i32 %23)
  %25 = call i32 @cl_git_fail_with(i32 %18, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @cl_assert_equal_p(i32* %26, i32* null)
  br label %28

28:                                               ; preds = %17
  %29 = load i64, i64* %2, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %2, align 8
  br label %12

31:                                               ; preds = %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @create_with_name(i32**, i32, i8*, i32) #2

declare dso_local i32 @cl_assert_equal_p(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_strmap.c_test_core_strmap__get_returns_null_on_nonexisting_key.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_strmap.c_test_core_strmap__get_returns_null_on_nonexisting_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gobble\00", align 1
@__const.test_core_strmap__get_returns_null_on_nonexisting_key.keys = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"oof\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rab\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"elbbog\00", align 1
@__const.test_core_strmap__get_returns_null_on_nonexisting_key.values = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)], align 16
@g_table = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"other\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_strmap__get_returns_null_on_nonexisting_key() #0 {
  %1 = alloca [3 x i8*], align 16
  %2 = alloca [3 x i8*], align 16
  %3 = alloca i64, align 8
  %4 = bitcast [3 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([3 x i8*]* @__const.test_core_strmap__get_returns_null_on_nonexisting_key.keys to i8*), i64 24, i1 false)
  %5 = bitcast [3 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([3 x i8*]* @__const.test_core_strmap__get_returns_null_on_nonexisting_key.values to i8*), i64 24, i1 false)
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %21, %0
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 0
  %9 = call i64 @ARRAY_SIZE(i8** %8)
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load i32, i32* @g_table, align 4
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds [3 x i8*], [3 x i8*]* %2, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @git_strmap_set(i32 %12, i8* %15, i8* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  br label %21

21:                                               ; preds = %11
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %6

24:                                               ; preds = %6
  %25 = load i32, i32* @g_table, align 4
  %26 = call i32 @git_strmap_get(i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %27 = call i32 @cl_assert_equal_p(i32 %26, i32* null)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_strmap_set(i32, i8*, i8*) #2

declare dso_local i32 @cl_assert_equal_p(i32, i32*) #2

declare dso_local i32 @git_strmap_get(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

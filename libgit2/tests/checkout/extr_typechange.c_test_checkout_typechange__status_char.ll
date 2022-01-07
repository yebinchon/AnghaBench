; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_typechange.c_test_checkout_typechange__status_char.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_typechange.c_test_checkout_typechange__status_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@__const.test_checkout_typechange__status_char.expected = private unnamed_addr constant [8 x i8] c"MMRTDRAR", align 1
@.str = private unnamed_addr constant [41 x i8] c"9b19edf33a03a0c59cdfc113bfa5c06179bf9b1a\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_TYPECHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_typechange__status_char() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca [8 x i8], align 1
  %8 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %9 = bitcast [8 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.test_checkout_typechange__status_char.expected, i32 0, i32 0), i64 8, i1 false)
  %10 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @git_commit_lookup(i32** %3, i32 %11, i32* %2)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @GIT_DIFF_INCLUDE_TYPECHANGE, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @g_repo, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @git_diff__commit(i32** %4, i32 %18, i32* %19, %struct.TYPE_6__* %6)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @git_diff_find_similar(i32* %22, i32* null)
  %24 = call i32 @cl_git_pass(i32 %23)
  store i64 0, i64* %1, align 8
  br label %25

25:                                               ; preds = %42, %0
  %26 = load i64, i64* %1, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @git_diff_num_deltas(i32* %27)
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* %1, align 8
  %33 = call %struct.TYPE_7__* @git_diff_get_delta(i32* %31, i64 %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %5, align 8
  %34 = load i64, i64* %1, align 8
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @git_diff_status_char(i32 %39)
  %41 = call i32 @cl_assert_equal_i(i8 signext %36, i32 %40)
  br label %42

42:                                               ; preds = %30
  %43 = load i64, i64* %1, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %1, align 8
  br label %25

45:                                               ; preds = %25
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @git_diff_free(i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @git_commit_free(i32* %48)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_diff__commit(i32**, i32, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @git_diff_find_similar(i32*, i32*) #2

declare dso_local i64 @git_diff_num_deltas(i32*) #2

declare dso_local %struct.TYPE_7__* @git_diff_get_delta(i32*, i64) #2

declare dso_local i32 @cl_assert_equal_i(i8 signext, i32) #2

declare dso_local i32 @git_diff_status_char(i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

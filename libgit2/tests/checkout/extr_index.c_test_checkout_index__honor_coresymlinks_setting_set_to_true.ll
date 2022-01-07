; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__honor_coresymlinks_setting_set_to_true.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__honor_coresymlinks_setting_set_to_true.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"testrepo/test\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"core.symlinks\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_RECREATE_MISSING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"./testrepo/link_to_new.txt\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"new.txt\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"my new file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_index__honor_coresymlinks_setting_set_to_true() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %6 = load i32, i32* @GIT_PATH_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @GIT_PATH_MAX, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = call i32 @git_path_supports_symlinks(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = call i32 (...) @cl_skip()
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @cl_repo_set_bool(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %19 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %20 = load i32, i32* @GIT_CHECKOUT_RECREATE_MISSING, align 4
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @g_repo, align 4
  %24 = call i32 @git_checkout_index(i32 %23, i32* null, %struct.TYPE_4__* %1)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @p_readlink(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %9, i64 %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i8, i8* %9, i64 %28
  store i8 0, i8* %29, align 1
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @cl_assert_equal_i(i64 %30, i32 %31)
  %33 = call i32 @cl_assert_equal_s(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 @check_file_contents(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %35)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @git_path_supports_symlinks(i8*) #3

declare dso_local i32 @cl_skip(...) #3

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #3

declare dso_local i32 @cl_git_pass(i32) #3

declare dso_local i32 @git_checkout_index(i32, i32*, %struct.TYPE_4__*) #3

declare dso_local i64 @p_readlink(i8*, i8*, i64) #3

declare dso_local i32 @cl_assert_equal_i(i64, i32) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #3

declare dso_local i32 @check_file_contents(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

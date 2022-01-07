; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__issue_1397.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__issue_1397.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"8a7ef04\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"issue_1397\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"./issue_1397/crlf_file.txt\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"first line\0D\0Asecond line\0D\0Aboth with crlf\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__issue_1397() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = call i32 (...) @test_checkout_tree__cleanup()
  %6 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %6, i32* @g_repo, align 4
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @cl_repo_set_bool(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @git_revparse_single(i32** %3, i32 %9, i8* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @g_repo, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_checkout_tree(i32 %15, i32* %16, %struct.TYPE_4__* %1)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @check_file_contents(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_object_free(i32* %20)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @test_checkout_tree__cleanup(...) #2

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @check_file_contents(i8*, i8*) #2

declare dso_local i32 @git_object_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

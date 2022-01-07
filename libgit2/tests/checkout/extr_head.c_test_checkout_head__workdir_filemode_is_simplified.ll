; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_head.c_test_checkout_head__workdir_filemode_is_simplified.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_head.c_test_checkout_head__workdir_filemode_is_simplified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"a38d028f71eaa590febb7d716b1ca32350cf70da\00", align 1
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"testrepo/branch_file.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"099fabac3a9ea935598528c27f866e34089c2eff\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_head__workdir_filemode_is_simplified() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_3__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_revparse_single(i32** %2, i32 %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @GIT_RESET_HARD, align 4
  %13 = call i32 @git_reset(i32 %10, i32* %11, i32 %12, i32* null)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @p_chmod(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 438)
  %16 = call i32 @cl_must_pass(i32 %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_revparse_single(i32** %3, i32 %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %21 = xor i32 %20, -1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @g_repo, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @git_checkout_tree(i32 %29, i32* %30, i32* null)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @git_object_free(i32* %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_object_free(i32* %35)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_chmod(i8*, i32) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

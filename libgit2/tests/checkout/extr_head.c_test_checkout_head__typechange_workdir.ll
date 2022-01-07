; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_head.c_test_checkout_head__typechange_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_head.c_test_checkout_head__typechange_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.stat = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"testrepo/new.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_head__typechange_workdir() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_revparse_single(i32** %2, i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @g_repo, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* @GIT_RESET_HARD, align 4
  %13 = call i32 @git_reset(i32 %10, i32* %11, i32 %12, i32* null)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @p_chmod(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 493)
  %16 = call i32 @cl_must_pass(i32 %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_checkout_head(i32 %17, %struct.TYPE_4__* %1)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @p_stat(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %3)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GIT_PERMS_IS_EXEC(i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @cl_assert(i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @git_object_free(i32* %29)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_chmod(i8*, i32) #2

declare dso_local i32 @git_checkout_head(i32, %struct.TYPE_4__*) #2

declare dso_local i32 @p_stat(i8*, %struct.stat*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @GIT_PERMS_IS_EXEC(i32) #2

declare dso_local i32 @git_object_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/tests/blame/extr_simple.c_test_blame_simple__can_restrict_lines_max.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/blame/extr_simple.c_test_blame_simple__can_restrict_lines_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_BLAME_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"blametest.git\00", align 1
@g_blame = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"b.txt\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"da237394\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"b99f7ac0\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"63d671eb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_blame_simple__can_restrict_lines_max() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_BLAME_OPTIONS_INIT to i8*), i64 4, i1 false)
  %3 = call i32 @cl_fixture(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @git_repository_open(i32* @g_repo, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 6, i32* %6, align 4
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_blame_file(i32* @g_blame, i32 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %1)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @g_blame, align 4
  %11 = call i32 @git_blame_get_hunk_count(i32 %10)
  %12 = call i32 @cl_assert_equal_i(i32 3, i32 %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i32, i32* @g_blame, align 4
  %15 = call i32 @check_blame_hunk_index(i32 %13, i32 %14, i32 0, i32 1, i32 4, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @g_repo, align 4
  %17 = load i32, i32* @g_blame, align 4
  %18 = call i32 @check_blame_hunk_index(i32 %16, i32 %17, i32 1, i32 5, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @g_repo, align 4
  %20 = load i32, i32* @g_blame, align 4
  %21 = call i32 @check_blame_hunk_index(i32 %19, i32 %20, i32 2, i32 6, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_open(i32*, i32) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @git_blame_file(i32*, i32, i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_blame_get_hunk_count(i32) #2

declare dso_local i32 @check_blame_hunk_index(i32, i32, i32, i32, i32, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

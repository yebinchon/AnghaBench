; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__to_type.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_revparse.c_test_refs_revparse__to_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"wrapped_tag^{trip}\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"point_to_blob^{commit}\00", align 1
@GIT_EPEEL = common dso_local global i32 0, align 4
@g_obj = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"wrapped_tag^{blob}\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"wrapped_tag^{commit}\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"wrapped_tag^{tree}\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"944c0f6e4dfa41595e6eb3ceecdb14f50fe18162\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"point_to_blob^{blob}\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"1385f264afb75a56a5bec74243be9b367ba4ca08\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"master^{commit}^{commit}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_revparse__to_type() #0 {
  %1 = call i32 @assert_invalid_single_spec(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @test_object(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* null)
  %3 = load i32, i32* @GIT_EPEEL, align 4
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_revparse_single(i32* @g_obj, i32 %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 @cl_assert_equal_i(i32 %3, i32 %5)
  %7 = call i32 @test_object(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %8 = call i32 @test_object(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %9 = call i32 @test_object(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %10 = call i32 @test_object(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert_invalid_single_spec(i8*) #1

declare dso_local i32 @test_object(i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_revparse_single(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

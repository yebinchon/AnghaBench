; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_delete.c_test_network_remote_delete__remove_branch_upstream_configuration_settings.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_delete.c_test_network_remote_delete__remove_branch_upstream_configuration_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"branch.mergeless.remote\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"branch.master.remote\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"branch.mergeless.merge\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"branch.master.merge\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_delete__remove_branch_upstream_configuration_settings() #0 {
  %1 = load i32, i32* @_repo, align 4
  %2 = call i32 @assert_config_entry_existence(i32 %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 1)
  %3 = load i32, i32* @_repo, align 4
  %4 = call i32 @assert_config_entry_existence(i32 %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %5 = load i32, i32* @_repo, align 4
  %6 = call i32 @git_remote_delete(i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @_repo, align 4
  %9 = call i32 @assert_config_entry_existence(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 0)
  %10 = load i32, i32* @_repo, align 4
  %11 = call i32 @assert_config_entry_existence(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %12 = load i32, i32* @_repo, align 4
  %13 = call i32 @assert_config_entry_existence(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %14 = load i32, i32* @_repo, align 4
  %15 = call i32 @assert_config_entry_existence(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 0)
  ret void
}

declare dso_local i32 @assert_config_entry_existence(i32, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_remote_delete(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

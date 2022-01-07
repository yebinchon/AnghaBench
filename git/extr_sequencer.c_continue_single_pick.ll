; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_continue_single_pick.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_continue_single_pick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@__const.continue_single_pick.argv = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [37 x i8] c"no cherry-pick or revert in progress\00", align 1
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*)* @continue_single_pick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @continue_single_pick(%struct.repository* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.repository*, align 8
  %4 = alloca [2 x i8*], align 16
  store %struct.repository* %0, %struct.repository** %3, align 8
  %5 = bitcast [2 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([2 x i8*]* @__const.continue_single_pick.argv to i8*), i64 16, i1 false)
  %6 = load %struct.repository*, %struct.repository** %3, align 8
  %7 = call i32 @git_path_cherry_pick_head(%struct.repository* %6)
  %8 = call i32 @file_exists(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.repository*, %struct.repository** %3, align 8
  %12 = call i32 @git_path_revert_head(%struct.repository* %11)
  %13 = call i32 @file_exists(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @error(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %10, %1
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %20 = load i32, i32* @RUN_GIT_CMD, align 4
  %21 = call i32 @run_command_v_opt(i8** %19, i32 %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @file_exists(i32) #2

declare dso_local i32 @git_path_cherry_pick_head(%struct.repository*) #2

declare dso_local i32 @git_path_revert_head(%struct.repository*) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @run_command_v_opt(i8**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

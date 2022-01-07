; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_rollback_single_pick.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_rollback_single_pick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"no cherry-pick or revert in progress\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cannot resolve HEAD\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"cannot abort from a branch yet to be born\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*)* @rollback_single_pick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rollback_single_pick(%struct.repository* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.object_id, align 4
  store %struct.repository* %0, %struct.repository** %3, align 8
  %5 = load %struct.repository*, %struct.repository** %3, align 8
  %6 = call i32 @git_path_cherry_pick_head(%struct.repository* %5)
  %7 = call i32 @file_exists(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load %struct.repository*, %struct.repository** %3, align 8
  %11 = call i32 @git_path_revert_head(%struct.repository* %10)
  %12 = call i32 @file_exists(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @error(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %31

17:                                               ; preds = %9, %1
  %18 = call i64 @read_ref_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.object_id* %4, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @error(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %17
  %24 = call i64 @is_null_oid(%struct.object_id* %4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %28 = call i32 @error(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %23
  %30 = call i32 @reset_merge(%struct.object_id* %4)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %26, %20, %14
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @file_exists(i32) #1

declare dso_local i32 @git_path_cherry_pick_head(%struct.repository*) #1

declare dso_local i32 @git_path_revert_head(%struct.repository*) #1

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @read_ref_full(i8*, i32, %struct.object_id*, i32*) #1

declare dso_local i64 @is_null_oid(%struct.object_id*) #1

declare dso_local i32 @reset_merge(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

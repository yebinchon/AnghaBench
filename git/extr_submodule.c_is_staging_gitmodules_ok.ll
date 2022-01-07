; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_is_staging_gitmodules_ok.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_is_staging_gitmodules_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32* }
%struct.stat = type { i32 }

@GITMODULES_FILE = common dso_local global i32 0, align 4
@DATA_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_staging_gitmodules_ok(%struct.index_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  %6 = load %struct.index_state*, %struct.index_state** %3, align 8
  %7 = load i32, i32* @GITMODULES_FILE, align 4
  %8 = load i32, i32* @GITMODULES_FILE, align 4
  %9 = call i32 @strlen(i32 %8)
  %10 = call i32 @index_name_pos(%struct.index_state* %6, i32 %7, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.index_state*, %struct.index_state** %3, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load i32, i32* @GITMODULES_FILE, align 4
  %21 = call i64 @lstat(i32 %20, %struct.stat* %5)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.index_state*, %struct.index_state** %3, align 8
  %25 = load %struct.index_state*, %struct.index_state** %3, align 8
  %26 = getelementptr inbounds %struct.index_state, %struct.index_state* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ie_match_stat(%struct.index_state* %24, i32 %31, %struct.stat* %5, i32 0)
  %33 = load i32, i32* @DATA_CHANGED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %39

37:                                               ; preds = %23, %19
  br label %38

38:                                               ; preds = %37, %13, %1
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %36
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @index_name_pos(%struct.index_state*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i32 @ie_match_stat(%struct.index_state*, i32, %struct.stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

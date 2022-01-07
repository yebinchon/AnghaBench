; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_state.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i32, %struct.wt_status_state }
%struct.wt_status_state = type { i64, i64, i64, i64, i64, i64, i64 }

@WT_STATUS_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_longstatus_print_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print_state(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wt_status_state*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %5 = load i32, i32* @WT_STATUS_HEADER, align 4
  %6 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %7 = call i8* @color(i32 %5, %struct.wt_status* %6)
  store i8* %7, i8** %3, align 8
  %8 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %9 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %8, i32 0, i32 1
  store %struct.wt_status_state* %9, %struct.wt_status_state** %4, align 8
  %10 = load %struct.wt_status_state*, %struct.wt_status_state** %4, align 8
  %11 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.wt_status_state*, %struct.wt_status_state** %4, align 8
  %16 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @show_rebase_information(%struct.wt_status* %20, i8* %21)
  %23 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %24 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @show_merge_in_progress(%struct.wt_status* %28, i8* %29)
  br label %76

31:                                               ; preds = %1
  %32 = load %struct.wt_status_state*, %struct.wt_status_state** %4, align 8
  %33 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @show_am_in_progress(%struct.wt_status* %37, i8* %38)
  br label %75

40:                                               ; preds = %31
  %41 = load %struct.wt_status_state*, %struct.wt_status_state** %4, align 8
  %42 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.wt_status_state*, %struct.wt_status_state** %4, align 8
  %47 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45, %40
  %51 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @show_rebase_in_progress(%struct.wt_status* %51, i8* %52)
  br label %74

54:                                               ; preds = %45
  %55 = load %struct.wt_status_state*, %struct.wt_status_state** %4, align 8
  %56 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @show_cherry_pick_in_progress(%struct.wt_status* %60, i8* %61)
  br label %73

63:                                               ; preds = %54
  %64 = load %struct.wt_status_state*, %struct.wt_status_state** %4, align 8
  %65 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @show_revert_in_progress(%struct.wt_status* %69, i8* %70)
  br label %72

72:                                               ; preds = %68, %63
  br label %73

73:                                               ; preds = %72, %59
  br label %74

74:                                               ; preds = %73, %50
  br label %75

75:                                               ; preds = %74, %36
  br label %76

76:                                               ; preds = %75, %27
  %77 = load %struct.wt_status_state*, %struct.wt_status_state** %4, align 8
  %78 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @show_bisect_in_progress(%struct.wt_status* %82, i8* %83)
  br label %85

85:                                               ; preds = %81, %76
  ret void
}

declare dso_local i8* @color(i32, %struct.wt_status*) #1

declare dso_local i32 @show_rebase_information(%struct.wt_status*, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @show_merge_in_progress(%struct.wt_status*, i8*) #1

declare dso_local i32 @show_am_in_progress(%struct.wt_status*, i8*) #1

declare dso_local i32 @show_rebase_in_progress(%struct.wt_status*, i8*) #1

declare dso_local i32 @show_cherry_pick_in_progress(%struct.wt_status*, i8*) #1

declare dso_local i32 @show_revert_in_progress(%struct.wt_status*, i8*) #1

declare dso_local i32 @show_bisect_in_progress(%struct.wt_status*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

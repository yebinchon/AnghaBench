; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_stash_summary.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_stash_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"refs/stash\00", align 1
@stash_count_refs = common dso_local global i32 0, align 4
@GIT_COLOR_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Your stash currently has %d entry\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Your stash currently has %d entries\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_longstatus_print_stash_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print_stash_summary(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  %3 = alloca i32, align 4
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @stash_count_refs, align 4
  %5 = call i32 @for_each_reflog_ent(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %4, i32* %3)
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %10 = load i32, i32* @GIT_COLOR_NORMAL, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @Q_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @status_printf_ln(%struct.wt_status* %9, i32 %10, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @for_each_reflog_ent(i8*, i32, i32*) #1

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i32, i32, i32) #1

declare dso_local i32 @Q_(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

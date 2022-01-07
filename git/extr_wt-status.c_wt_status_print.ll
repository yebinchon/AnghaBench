; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_print.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_status_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"count/changed\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"count/untracked\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"count/ignored\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"finalize_deferred_config() should have been called\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wt_status_print(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %3 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %4 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %7 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @trace2_data_intmax(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %12 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %15 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @trace2_data_intmax(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %20 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %23 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @trace2_data_intmax(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %28 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @trace2_region_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %32 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %48 [
    i32 129, label %34
    i32 131, label %37
    i32 130, label %40
    i32 128, label %43
    i32 132, label %45
    i32 133, label %45
  ]

34:                                               ; preds = %1
  %35 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %36 = call i32 @wt_shortstatus_print(%struct.wt_status* %35)
  br label %48

37:                                               ; preds = %1
  %38 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %39 = call i32 @wt_porcelain_print(%struct.wt_status* %38)
  br label %48

40:                                               ; preds = %1
  %41 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %42 = call i32 @wt_porcelain_v2_print(%struct.wt_status* %41)
  br label %48

43:                                               ; preds = %1
  %44 = call i32 @BUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  br label %48

45:                                               ; preds = %1, %1
  %46 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %47 = call i32 @wt_longstatus_print(%struct.wt_status* %46)
  br label %48

48:                                               ; preds = %1, %45, %43, %40, %37, %34
  %49 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %50 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @trace2_region_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  ret void
}

declare dso_local i32 @trace2_data_intmax(i8*, i32, i8*, i32) #1

declare dso_local i32 @trace2_region_enter(i8*, i8*, i32) #1

declare dso_local i32 @wt_shortstatus_print(%struct.wt_status*) #1

declare dso_local i32 @wt_porcelain_print(%struct.wt_status*) #1

declare dso_local i32 @wt_porcelain_v2_print(%struct.wt_status*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @wt_longstatus_print(%struct.wt_status*) #1

declare dso_local i32 @trace2_region_leave(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c___mon_event_count.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c___mon_event_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmid_read = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mbm_state*, %struct.mbm_state* }
%struct.mbm_state = type { i32, i32, i32 }

@RMID_VAL_ERROR = common dso_local global i32 0, align 4
@RMID_VAL_UNAVAIL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.rmid_read*)* @__mon_event_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mon_event_count(i64 %0, %struct.rmid_read* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.rmid_read*, align 8
  %6 = alloca %struct.mbm_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.rmid_read* %1, %struct.rmid_read** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.rmid_read*, %struct.rmid_read** %5, align 8
  %11 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @__rmid_read(i64 %9, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @RMID_VAL_ERROR, align 4
  %16 = load i32, i32* @RMID_VAL_UNAVAIL, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.rmid_read*, %struct.rmid_read** %5, align 8
  %23 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %89

26:                                               ; preds = %2
  %27 = load %struct.rmid_read*, %struct.rmid_read** %5, align 8
  %28 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %52 [
    i32 128, label %30
    i32 129, label %36
    i32 130, label %44
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.rmid_read*, %struct.rmid_read** %5, align 8
  %33 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, %31
  store i32 %35, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %89

36:                                               ; preds = %26
  %37 = load %struct.rmid_read*, %struct.rmid_read** %5, align 8
  %38 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.mbm_state*, %struct.mbm_state** %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %41, i64 %42
  store %struct.mbm_state* %43, %struct.mbm_state** %6, align 8
  br label %55

44:                                               ; preds = %26
  %45 = load %struct.rmid_read*, %struct.rmid_read** %5, align 8
  %46 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.mbm_state*, %struct.mbm_state** %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %49, i64 %50
  store %struct.mbm_state* %51, %struct.mbm_state** %6, align 8
  br label %55

52:                                               ; preds = %26
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %89

55:                                               ; preds = %44, %36
  %56 = load %struct.rmid_read*, %struct.rmid_read** %5, align 8
  %57 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %62 = call i32 @memset(%struct.mbm_state* %61, i32 0, i32 12)
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %65 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %67 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  store i32 0, i32* %3, align 4
  br label %89

68:                                               ; preds = %55
  %69 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %70 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @mbm_overflow_count(i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %76 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %81 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mbm_state*, %struct.mbm_state** %6, align 8
  %83 = getelementptr inbounds %struct.mbm_state, %struct.mbm_state* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rmid_read*, %struct.rmid_read** %5, align 8
  %86 = getelementptr inbounds %struct.rmid_read, %struct.rmid_read* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %68, %60, %52, %30, %20
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @__rmid_read(i64, i32) #1

declare dso_local i32 @memset(%struct.mbm_state*, i32, i32) #1

declare dso_local i32 @mbm_overflow_count(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

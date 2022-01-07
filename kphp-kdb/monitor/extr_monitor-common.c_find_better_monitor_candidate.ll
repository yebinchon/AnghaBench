; ModuleID = '/home/carl/AnghaBench/kphp-kdb/monitor/extr_monitor-common.c_find_better_monitor_candidate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/monitor/extr_monitor-common.c_find_better_monitor_candidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.proc_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@CDATA_PIDS = common dso_local global i32 0, align 4
@CD_ZOMBIE = common dso_local global i32 0, align 4
@CD_MON_PRIO_MASK = common dso_local global i32 0, align 4
@CDataUserInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cdata_my_pid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @find_better_monitor_candidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_better_monitor_candidate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %80, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @CDATA_PIDS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %83

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.proc_data* @get_proc_status(i32 %12)
  store %struct.proc_data* %13, %struct.proc_data** %5, align 8
  %14 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %15 = call i32 @assert(%struct.proc_data* %14)
  %16 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %17 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @CD_ZOMBIE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  br label %80

27:                                               ; preds = %11
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @CD_MON_PRIO_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %80

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @CD_MON_PRIO_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %42 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CDataUserInfo, i32 0, i32 0), align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %80

50:                                               ; preds = %40
  %51 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %52 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CDataUserInfo, i32 0, i32 0), align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @cdata_my_pid, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %80

64:                                               ; preds = %59, %50
  br label %65

65:                                               ; preds = %64, %34
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @try_reap(i32 %66)
  %68 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %69 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CD_ZOMBIE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %84

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %63, %49, %33, %26
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %7

83:                                               ; preds = %7
  store i32 -1, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %77
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.proc_data* @get_proc_status(i32) #1

declare dso_local i32 @assert(%struct.proc_data*) #1

declare dso_local i32 @try_reap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

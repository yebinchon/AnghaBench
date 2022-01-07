; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_pending_timer_fn.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_pending_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_service_queue = type { i64*, %struct.throtl_service_queue* }
%struct.timer_list = type { i32 }
%struct.throtl_grp = type { i32 }
%struct.throtl_data = type { i32, %struct.request_queue* }
%struct.request_queue = type { i32 }

@pending_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"dispatch nr_queued=%u read=%u write=%u\00", align 1
@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"bios disp=%u\00", align 1
@THROTL_TG_WAS_EMPTY = common dso_local global i32 0, align 4
@kthrotld_workqueue = common dso_local global i32 0, align 4
@sq = common dso_local global %struct.throtl_service_queue* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @throtl_pending_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_pending_timer_fn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.throtl_service_queue*, align 8
  %4 = alloca %struct.throtl_grp*, align 8
  %5 = alloca %struct.throtl_data*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.throtl_service_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %10 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %11 = ptrtoint %struct.throtl_service_queue* %10 to i32
  %12 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %13 = load i32, i32* @pending_timer, align 4
  %14 = call %struct.throtl_service_queue* @from_timer(i32 %11, %struct.timer_list* %12, i32 %13)
  store %struct.throtl_service_queue* %14, %struct.throtl_service_queue** %3, align 8
  %15 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %16 = call %struct.throtl_grp* @sq_to_tg(%struct.throtl_service_queue* %15)
  store %struct.throtl_grp* %16, %struct.throtl_grp** %4, align 8
  %17 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %18 = call %struct.throtl_data* @sq_to_td(%struct.throtl_service_queue* %17)
  store %struct.throtl_data* %18, %struct.throtl_data** %5, align 8
  %19 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %20 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %19, i32 0, i32 1
  %21 = load %struct.request_queue*, %struct.request_queue** %20, align 8
  store %struct.request_queue* %21, %struct.request_queue** %6, align 8
  %22 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %23 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %26 = call i64 @throtl_can_upgrade(%struct.throtl_data* %25, i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %30 = call i32 @throtl_upgrade_state(%struct.throtl_data* %29)
  br label %31

31:                                               ; preds = %28, %1
  br label %32

32:                                               ; preds = %106, %31
  %33 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %34 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %33, i32 0, i32 1
  %35 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %34, align 8
  store %struct.throtl_service_queue* %35, %struct.throtl_service_queue** %7, align 8
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %78
  %37 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %38 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %39 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @READ, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %45 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @WRITE, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %43, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %53 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @READ, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %59 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @WRITE, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (%struct.throtl_service_queue*, i8*, i32, ...) @throtl_log(%struct.throtl_service_queue* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %57, i64 %63)
  %65 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %66 = call i32 @throtl_select_dispatch(%struct.throtl_service_queue* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %36
  %70 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 (%struct.throtl_service_queue*, i8*, i32, ...) @throtl_log(%struct.throtl_service_queue* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %36
  %74 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %75 = call i64 @throtl_schedule_next_dispatch(%struct.throtl_service_queue* %74, i32 0)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %86

78:                                               ; preds = %73
  %79 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %80 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_irq(i32* %80)
  %82 = call i32 (...) @cpu_relax()
  %83 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %84 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %83, i32 0, i32 0
  %85 = call i32 @spin_lock_irq(i32* %84)
  br label %36

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  br label %118

90:                                               ; preds = %86
  %91 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %7, align 8
  %92 = icmp ne %struct.throtl_service_queue* %91, null
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %95 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @THROTL_TG_WAS_EMPTY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %93
  %101 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %102 = call i32 @tg_update_disptime(%struct.throtl_grp* %101)
  %103 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %7, align 8
  %104 = call i64 @throtl_schedule_next_dispatch(%struct.throtl_service_queue* %103, i32 0)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %100
  %107 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %7, align 8
  store %struct.throtl_service_queue* %107, %struct.throtl_service_queue** %3, align 8
  %108 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %109 = call %struct.throtl_grp* @sq_to_tg(%struct.throtl_service_queue* %108)
  store %struct.throtl_grp* %109, %struct.throtl_grp** %4, align 8
  br label %32

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %93
  br label %117

112:                                              ; preds = %90
  %113 = load i32, i32* @kthrotld_workqueue, align 4
  %114 = load %struct.throtl_data*, %struct.throtl_data** %5, align 8
  %115 = getelementptr inbounds %struct.throtl_data, %struct.throtl_data* %114, i32 0, i32 0
  %116 = call i32 @queue_work(i32 %113, i32* %115)
  br label %117

117:                                              ; preds = %112, %111
  br label %118

118:                                              ; preds = %117, %89
  %119 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %120 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock_irq(i32* %120)
  ret void
}

declare dso_local %struct.throtl_service_queue* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.throtl_grp* @sq_to_tg(%struct.throtl_service_queue*) #1

declare dso_local %struct.throtl_data* @sq_to_td(%struct.throtl_service_queue*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @throtl_can_upgrade(%struct.throtl_data*, i32*) #1

declare dso_local i32 @throtl_upgrade_state(%struct.throtl_data*) #1

declare dso_local i32 @throtl_log(%struct.throtl_service_queue*, i8*, i32, ...) #1

declare dso_local i32 @throtl_select_dispatch(%struct.throtl_service_queue*) #1

declare dso_local i64 @throtl_schedule_next_dispatch(%struct.throtl_service_queue*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @tg_update_disptime(%struct.throtl_grp*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_pd_init.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iocost.c_ioc_pd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkg_policy_data = type { i32 }
%struct.ioc_gq = type { i64, %struct.ioc_gq**, %struct.TYPE_8__, %struct.TYPE_8__, i32, i8*, i8*, i32, i32, i32, i32, i32, %struct.ioc*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ioc = type { i32, i32 }
%struct.blkcg_gq = type { %struct.blkcg_gq*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ioc_now = type { i32 }

@HWEIGHT_WHOLE = common dso_local global i8* null, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@iocg_waitq_timer_fn = common dso_local global i32 0, align 4
@iocg_delay_timer_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkg_policy_data*)* @ioc_pd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc_pd_init(%struct.blkg_policy_data* %0) #0 {
  %2 = alloca %struct.blkg_policy_data*, align 8
  %3 = alloca %struct.ioc_gq*, align 8
  %4 = alloca %struct.blkcg_gq*, align 8
  %5 = alloca %struct.ioc*, align 8
  %6 = alloca %struct.ioc_now, align 4
  %7 = alloca %struct.blkcg_gq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ioc_gq*, align 8
  store %struct.blkg_policy_data* %0, %struct.blkg_policy_data** %2, align 8
  %10 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %2, align 8
  %11 = call %struct.ioc_gq* @pd_to_iocg(%struct.blkg_policy_data* %10)
  store %struct.ioc_gq* %11, %struct.ioc_gq** %3, align 8
  %12 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %13 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %12, i32 0, i32 13
  %14 = call %struct.blkcg_gq* @pd_to_blkg(i32* %13)
  store %struct.blkcg_gq* %14, %struct.blkcg_gq** %4, align 8
  %15 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %16 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.ioc* @q_to_ioc(i32 %17)
  store %struct.ioc* %18, %struct.ioc** %5, align 8
  %19 = load %struct.ioc*, %struct.ioc** %5, align 8
  %20 = call i32 @ioc_now(%struct.ioc* %19, %struct.ioc_now* %6)
  %21 = load %struct.ioc*, %struct.ioc** %5, align 8
  %22 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %23 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %22, i32 0, i32 12
  store %struct.ioc* %21, %struct.ioc** %23, align 8
  %24 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %25 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %24, i32 0, i32 11
  %26 = getelementptr inbounds %struct.ioc_now, %struct.ioc_now* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @atomic64_set(i32* %25, i32 %27)
  %29 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %30 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %29, i32 0, i32 10
  %31 = getelementptr inbounds %struct.ioc_now, %struct.ioc_now* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @atomic64_set(i32* %30, i32 %32)
  %34 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %35 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %34, i32 0, i32 9
  %36 = call i32 @atomic64_set(i32* %35, i32 0)
  %37 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %38 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %37, i32 0, i32 8
  %39 = load %struct.ioc*, %struct.ioc** %5, align 8
  %40 = getelementptr inbounds %struct.ioc, %struct.ioc* %39, i32 0, i32 1
  %41 = call i32 @atomic64_read(i32* %40)
  %42 = call i32 @atomic64_set(i32* %38, i32 %41)
  %43 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %44 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %43, i32 0, i32 7
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load i8*, i8** @HWEIGHT_WHOLE, align 8
  %47 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %48 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @HWEIGHT_WHOLE, align 8
  %50 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %51 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %53 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %52, i32 0, i32 4
  %54 = call i32 @init_waitqueue_head(i32* %53)
  %55 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %56 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %55, i32 0, i32 3
  %57 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %58 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %59 = call i32 @hrtimer_init(%struct.TYPE_8__* %56, i32 %57, i32 %58)
  %60 = load i32, i32* @iocg_waitq_timer_fn, align 4
  %61 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %62 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %65 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %64, i32 0, i32 2
  %66 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %67 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %68 = call i32 @hrtimer_init(%struct.TYPE_8__* %65, i32 %66, i32 %67)
  %69 = load i32, i32* @iocg_delay_timer_fn, align 4
  %70 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %71 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  %74 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %82 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.blkcg_gq*, %struct.blkcg_gq** %4, align 8
  store %struct.blkcg_gq* %83, %struct.blkcg_gq** %7, align 8
  br label %84

84:                                               ; preds = %98, %1
  %85 = load %struct.blkcg_gq*, %struct.blkcg_gq** %7, align 8
  %86 = icmp ne %struct.blkcg_gq* %85, null
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load %struct.blkcg_gq*, %struct.blkcg_gq** %7, align 8
  %89 = call %struct.ioc_gq* @blkg_to_iocg(%struct.blkcg_gq* %88)
  store %struct.ioc_gq* %89, %struct.ioc_gq** %9, align 8
  %90 = load %struct.ioc_gq*, %struct.ioc_gq** %9, align 8
  %91 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %92 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %91, i32 0, i32 1
  %93 = load %struct.ioc_gq**, %struct.ioc_gq*** %92, align 8
  %94 = load %struct.ioc_gq*, %struct.ioc_gq** %9, align 8
  %95 = getelementptr inbounds %struct.ioc_gq, %struct.ioc_gq* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.ioc_gq*, %struct.ioc_gq** %93, i64 %96
  store %struct.ioc_gq* %90, %struct.ioc_gq** %97, align 8
  br label %98

98:                                               ; preds = %87
  %99 = load %struct.blkcg_gq*, %struct.blkcg_gq** %7, align 8
  %100 = getelementptr inbounds %struct.blkcg_gq, %struct.blkcg_gq* %99, i32 0, i32 0
  %101 = load %struct.blkcg_gq*, %struct.blkcg_gq** %100, align 8
  store %struct.blkcg_gq* %101, %struct.blkcg_gq** %7, align 8
  br label %84

102:                                              ; preds = %84
  %103 = load %struct.ioc*, %struct.ioc** %5, align 8
  %104 = getelementptr inbounds %struct.ioc, %struct.ioc* %103, i32 0, i32 0
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @spin_lock_irqsave(i32* %104, i64 %105)
  %107 = load %struct.ioc_gq*, %struct.ioc_gq** %3, align 8
  %108 = call i32 @weight_updated(%struct.ioc_gq* %107)
  %109 = load %struct.ioc*, %struct.ioc** %5, align 8
  %110 = getelementptr inbounds %struct.ioc, %struct.ioc* %109, i32 0, i32 0
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  ret void
}

declare dso_local %struct.ioc_gq* @pd_to_iocg(%struct.blkg_policy_data*) #1

declare dso_local %struct.blkcg_gq* @pd_to_blkg(i32*) #1

declare dso_local %struct.ioc* @q_to_ioc(i32) #1

declare dso_local i32 @ioc_now(%struct.ioc*, %struct.ioc_now*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.ioc_gq* @blkg_to_iocg(%struct.blkcg_gq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @weight_updated(%struct.ioc_gq*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

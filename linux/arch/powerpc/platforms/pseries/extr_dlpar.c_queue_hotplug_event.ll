; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_queue_hotplug_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dlpar.c_queue_hotplug_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseries_hp_errorlog = type { i32 }
%struct.pseries_hp_work = type { %struct.pseries_hp_errorlog* }
%struct.work_struct = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@pseries_hp_work_fn = common dso_local global i32 0, align 4
@pseries_hp_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @queue_hotplug_event(%struct.pseries_hp_errorlog* %0) #0 {
  %2 = alloca %struct.pseries_hp_errorlog*, align 8
  %3 = alloca %struct.pseries_hp_work*, align 8
  %4 = alloca %struct.pseries_hp_errorlog*, align 8
  store %struct.pseries_hp_errorlog* %0, %struct.pseries_hp_errorlog** %2, align 8
  %5 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %2, align 8
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.pseries_hp_errorlog* @kmemdup(%struct.pseries_hp_errorlog* %5, i32 4, i32 %6)
  store %struct.pseries_hp_errorlog* %7, %struct.pseries_hp_errorlog** %4, align 8
  %8 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %4, align 8
  %9 = icmp ne %struct.pseries_hp_errorlog* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.pseries_hp_work* @kmalloc(i32 8, i32 %12)
  store %struct.pseries_hp_work* %13, %struct.pseries_hp_work** %3, align 8
  %14 = load %struct.pseries_hp_work*, %struct.pseries_hp_work** %3, align 8
  %15 = icmp ne %struct.pseries_hp_work* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.pseries_hp_work*, %struct.pseries_hp_work** %3, align 8
  %18 = bitcast %struct.pseries_hp_work* %17 to %struct.work_struct*
  %19 = load i32, i32* @pseries_hp_work_fn, align 4
  %20 = call i32 @INIT_WORK(%struct.work_struct* %18, i32 %19)
  %21 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %4, align 8
  %22 = load %struct.pseries_hp_work*, %struct.pseries_hp_work** %3, align 8
  %23 = getelementptr inbounds %struct.pseries_hp_work, %struct.pseries_hp_work* %22, i32 0, i32 0
  store %struct.pseries_hp_errorlog* %21, %struct.pseries_hp_errorlog** %23, align 8
  %24 = load i32, i32* @pseries_hp_wq, align 4
  %25 = load %struct.pseries_hp_work*, %struct.pseries_hp_work** %3, align 8
  %26 = bitcast %struct.pseries_hp_work* %25 to %struct.work_struct*
  %27 = call i32 @queue_work(i32 %24, %struct.work_struct* %26)
  br label %31

28:                                               ; preds = %11
  %29 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %4, align 8
  %30 = call i32 @kfree(%struct.pseries_hp_errorlog* %29)
  br label %31

31:                                               ; preds = %10, %28, %16
  ret void
}

declare dso_local %struct.pseries_hp_errorlog* @kmemdup(%struct.pseries_hp_errorlog*, i32, i32) #1

declare dso_local %struct.pseries_hp_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(%struct.work_struct*, i32) #1

declare dso_local i32 @queue_work(i32, %struct.work_struct*) #1

declare dso_local i32 @kfree(%struct.pseries_hp_errorlog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_ras_hotplug_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_ras_hotplug_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseries_errorlog = type { i64 }
%struct.pseries_hp_errorlog = type { i64 }
%struct.rtas_error_log = type { i32 }

@ras_log_buf_lock = common dso_local global i32 0, align 4
@ras_check_exception_token = common dso_local global i32 0, align 4
@RTAS_VECTOR_EXTERNAL_INTERRUPT = common dso_local global i32 0, align 4
@RTAS_HOTPLUG_EVENTS = common dso_local global i32 0, align 4
@ras_log_buf = common dso_local global i64 0, align 8
@PSERIES_ELOG_SECT_ID_HOTPLUG = common dso_local global i32 0, align 4
@PSERIES_HP_ELOG_RESOURCE_MEM = common dso_local global i64 0, align 8
@PSERIES_HP_ELOG_RESOURCE_CPU = common dso_local global i64 0, align 8
@PSERIES_HP_ELOG_RESOURCE_PMEM = common dso_local global i64 0, align 8
@ERR_TYPE_RTAS_LOG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ras_hotplug_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ras_hotplug_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pseries_errorlog*, align 8
  %6 = alloca %struct.pseries_hp_errorlog*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = call i32 @spin_lock(i32* @ras_log_buf_lock)
  %8 = load i32, i32* @ras_check_exception_token, align 4
  %9 = load i32, i32* @RTAS_VECTOR_EXTERNAL_INTERRUPT, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @virq_to_hw(i32 %10)
  %12 = load i32, i32* @RTAS_HOTPLUG_EVENTS, align 4
  %13 = call i32 @__pa(i64* @ras_log_buf)
  %14 = call i32 (...) @rtas_get_error_log_max()
  %15 = call i32 @rtas_call(i32 %8, i32 6, i32 1, i32* null, i32 %9, i32 %11, i32 %12, i32 0, i32 %13, i32 %14)
  %16 = load i64, i64* @ras_log_buf, align 8
  %17 = inttoptr i64 %16 to %struct.rtas_error_log*
  %18 = load i32, i32* @PSERIES_ELOG_SECT_ID_HOTPLUG, align 4
  %19 = call %struct.pseries_errorlog* @get_pseries_errorlog(%struct.rtas_error_log* %17, i32 %18)
  store %struct.pseries_errorlog* %19, %struct.pseries_errorlog** %5, align 8
  %20 = load %struct.pseries_errorlog*, %struct.pseries_errorlog** %5, align 8
  %21 = getelementptr inbounds %struct.pseries_errorlog, %struct.pseries_errorlog* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.pseries_hp_errorlog*
  store %struct.pseries_hp_errorlog* %23, %struct.pseries_hp_errorlog** %6, align 8
  %24 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %6, align 8
  %25 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PSERIES_HP_ELOG_RESOURCE_MEM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %2
  %30 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %6, align 8
  %31 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PSERIES_HP_ELOG_RESOURCE_CPU, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %6, align 8
  %37 = getelementptr inbounds %struct.pseries_hp_errorlog, %struct.pseries_hp_errorlog* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PSERIES_HP_ELOG_RESOURCE_PMEM, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %29, %2
  %42 = load %struct.pseries_hp_errorlog*, %struct.pseries_hp_errorlog** %6, align 8
  %43 = call i32 @queue_hotplug_event(%struct.pseries_hp_errorlog* %42)
  br label %48

44:                                               ; preds = %35
  %45 = load i64, i64* @ras_log_buf, align 8
  %46 = load i32, i32* @ERR_TYPE_RTAS_LOG, align 4
  %47 = call i32 @log_error(i64 %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %44, %41
  %49 = call i32 @spin_unlock(i32* @ras_log_buf_lock)
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %50
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @virq_to_hw(i32) #1

declare dso_local i32 @__pa(i64*) #1

declare dso_local i32 @rtas_get_error_log_max(...) #1

declare dso_local %struct.pseries_errorlog* @get_pseries_errorlog(%struct.rtas_error_log*, i32) #1

declare dso_local i32 @queue_hotplug_event(%struct.pseries_hp_errorlog*) #1

declare dso_local i32 @log_error(i64, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

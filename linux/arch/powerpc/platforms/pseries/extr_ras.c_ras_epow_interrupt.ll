; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_ras_epow_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_ras_epow_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtas_error_log = type { i32 }

@EPOW_SENSOR_TOKEN = common dso_local global i32 0, align 4
@EPOW_SENSOR_INDEX = common dso_local global i32 0, align 4
@ras_log_buf_lock = common dso_local global i32 0, align 4
@ras_check_exception_token = common dso_local global i32 0, align 4
@RTAS_VECTOR_EXTERNAL_INTERRUPT = common dso_local global i32 0, align 4
@RTAS_EPOW_WARNING = common dso_local global i32 0, align 4
@ras_log_buf = common dso_local global i64 0, align 8
@ERR_TYPE_RTAS_LOG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ras_epow_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ras_epow_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @EPOW_SENSOR_TOKEN, align 4
  %9 = load i32, i32* @EPOW_SENSOR_INDEX, align 4
  %10 = call i32 @rtas_get_sensor_fast(i32 %8, i32 %9, i32* %6)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %15

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = call i32 @spin_lock(i32* @ras_log_buf_lock)
  %17 = load i32, i32* @ras_check_exception_token, align 4
  %18 = load i32, i32* @RTAS_VECTOR_EXTERNAL_INTERRUPT, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @virq_to_hw(i32 %19)
  %21 = load i32, i32* @RTAS_EPOW_WARNING, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @__pa(i64* @ras_log_buf)
  %24 = call i32 (...) @rtas_get_error_log_max()
  %25 = call i32 @rtas_call(i32 %17, i32 6, i32 1, i32* null, i32 %18, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i64, i64* @ras_log_buf, align 8
  %27 = load i32, i32* @ERR_TYPE_RTAS_LOG, align 4
  %28 = call i32 @log_error(i64 %26, i32 %27, i32 0)
  %29 = load i64, i64* @ras_log_buf, align 8
  %30 = inttoptr i64 %29 to %struct.rtas_error_log*
  %31 = call i32 @rtas_parse_epow_errlog(%struct.rtas_error_log* %30)
  %32 = call i32 @spin_unlock(i32* @ras_log_buf_lock)
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %33
}

declare dso_local i32 @rtas_get_sensor_fast(i32, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @virq_to_hw(i32) #1

declare dso_local i32 @__pa(i64*) #1

declare dso_local i32 @rtas_get_error_log_max(...) #1

declare dso_local i32 @log_error(i64, i32, i32) #1

declare dso_local i32 @rtas_parse_epow_errlog(%struct.rtas_error_log*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

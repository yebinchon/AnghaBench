; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_ras_error_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ras.c_ras_error_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtas_error_log = type { i32 }

@ras_log_buf_lock = common dso_local global i32 0, align 4
@ras_check_exception_token = common dso_local global i32 0, align 4
@RTAS_VECTOR_EXTERNAL_INTERRUPT = common dso_local global i32 0, align 4
@RTAS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ras_log_buf = common dso_local global i64 0, align 8
@RTAS_SEVERITY_ERROR_SYNC = common dso_local global i64 0, align 8
@ERR_TYPE_RTAS_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"Fatal hardware error detected. Check RTAS error log for details. Powering off immediately\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Recoverable hardware error detected\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ras_error_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ras_error_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rtas_error_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = call i32 @spin_lock(i32* @ras_log_buf_lock)
  %9 = load i32, i32* @ras_check_exception_token, align 4
  %10 = load i32, i32* @RTAS_VECTOR_EXTERNAL_INTERRUPT, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @virq_to_hw(i32 %11)
  %13 = load i32, i32* @RTAS_INTERNAL_ERROR, align 4
  %14 = call i32 @__pa(i64* @ras_log_buf)
  %15 = call i32 (...) @rtas_get_error_log_max()
  %16 = call i32 @rtas_call(i32 %9, i32 6, i32 1, i32* null, i32 %10, i32 %12, i32 %13, i32 1, i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i64, i64* @ras_log_buf, align 8
  %18 = inttoptr i64 %17 to %struct.rtas_error_log*
  store %struct.rtas_error_log* %18, %struct.rtas_error_log** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.rtas_error_log*, %struct.rtas_error_log** %5, align 8
  %23 = call i64 @rtas_error_severity(%struct.rtas_error_log* %22)
  %24 = load i64, i64* @RTAS_SEVERITY_ERROR_SYNC, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %28

27:                                               ; preds = %21, %2
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i64, i64* @ras_log_buf, align 8
  %30 = load i32, i32* @ERR_TYPE_RTAS_LOG, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @log_error(i64 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = call i32 @pr_emerg(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 (...) @emergency_sync()
  %38 = call i32 (...) @kernel_power_off()
  br label %41

39:                                               ; preds = %28
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %35
  %42 = call i32 @spin_unlock(i32* @ras_log_buf_lock)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %43
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @virq_to_hw(i32) #1

declare dso_local i32 @__pa(i64*) #1

declare dso_local i32 @rtas_get_error_log_max(...) #1

declare dso_local i64 @rtas_error_severity(%struct.rtas_error_log*) #1

declare dso_local i32 @log_error(i64, i32, i32) #1

declare dso_local i32 @pr_emerg(i8*) #1

declare dso_local i32 @emergency_sync(...) #1

declare dso_local i32 @kernel_power_off(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

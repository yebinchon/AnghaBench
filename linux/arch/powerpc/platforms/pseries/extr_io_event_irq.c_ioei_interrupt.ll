; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_io_event_irq.c_ioei_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_io_event_irq.c_ioei_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseries_io_event = type { i32 }
%struct.rtas_error_log = type { i32 }

@ioei_check_exception_token = common dso_local global i32 0, align 4
@RTAS_VECTOR_EXTERNAL_INTERRUPT = common dso_local global i32 0, align 4
@RTAS_IO_EVENTS = common dso_local global i32 0, align 4
@ioei_rtas_buf = common dso_local global i64 0, align 8
@RTAS_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@pseries_ioei_notifier_list = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ioei_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioei_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pseries_io_event*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  br label %7

7:                                                ; preds = %27, %26, %2
  %8 = load i32, i32* @ioei_check_exception_token, align 4
  %9 = load i32, i32* @RTAS_VECTOR_EXTERNAL_INTERRUPT, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @virq_to_hw(i32 %10)
  %12 = load i32, i32* @RTAS_IO_EVENTS, align 4
  %13 = load i64, i64* @ioei_rtas_buf, align 8
  %14 = call i32 @__pa(i64 %13)
  %15 = load i32, i32* @RTAS_DATA_BUF_SIZE, align 4
  %16 = call i32 @rtas_call(i32 %8, i32 6, i32 1, i32* null, i32 %9, i32 %11, i32 %12, i32 1, i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  br label %30

20:                                               ; preds = %7
  %21 = load i64, i64* @ioei_rtas_buf, align 8
  %22 = inttoptr i64 %21 to %struct.rtas_error_log*
  %23 = call %struct.pseries_io_event* @ioei_find_event(%struct.rtas_error_log* %22)
  store %struct.pseries_io_event* %23, %struct.pseries_io_event** %5, align 8
  %24 = load %struct.pseries_io_event*, %struct.pseries_io_event** %5, align 8
  %25 = icmp ne %struct.pseries_io_event* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %7

27:                                               ; preds = %20
  %28 = load %struct.pseries_io_event*, %struct.pseries_io_event** %5, align 8
  %29 = call i32 @atomic_notifier_call_chain(i32* @pseries_ioei_notifier_list, i32 0, %struct.pseries_io_event* %28)
  br label %7

30:                                               ; preds = %19
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %31
}

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @virq_to_hw(i32) #1

declare dso_local i32 @__pa(i64) #1

declare dso_local %struct.pseries_io_event* @ioei_find_event(%struct.rtas_error_log*) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, %struct.pseries_io_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

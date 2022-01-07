; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_smp_handle_ext_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c_smp_handle_ext_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pcpu_devices = common dso_local global %struct.TYPE_2__* null, align 8
@ec_stop_cpu = common dso_local global i32 0, align 4
@ec_schedule = common dso_local global i32 0, align 4
@ec_call_function_single = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @smp_handle_ext_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_handle_ext_call() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcpu_devices, align 8
  %3 = call i64 (...) @smp_processor_id()
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i64 %3
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = call i64 @xchg(i32* %5, i32 0)
  store i64 %6, i64* %1, align 8
  %7 = load i32, i32* @ec_stop_cpu, align 4
  %8 = call i64 @test_bit(i32 %7, i64* %1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @smp_stop_cpu()
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @ec_schedule, align 4
  %14 = call i64 @test_bit(i32 %13, i64* %1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 (...) @scheduler_ipi()
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i32, i32* @ec_call_function_single, align 4
  %20 = call i64 @test_bit(i32 %19, i64* %1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (...) @generic_smp_call_function_single_interrupt()
  br label %24

24:                                               ; preds = %22, %18
  ret void
}

declare dso_local i64 @xchg(i32*, i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @smp_stop_cpu(...) #1

declare dso_local i32 @scheduler_ipi(...) #1

declare dso_local i32 @generic_smp_call_function_single_interrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

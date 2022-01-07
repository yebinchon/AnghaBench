; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_stop_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_ipl.c_stop_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shutdown_trigger = type { i32 }

@ON_PANIC_STR = common dso_local global i32 0, align 4
@ON_RESTART_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shutdown_trigger*)* @stop_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_run(%struct.shutdown_trigger* %0) #0 {
  %2 = alloca %struct.shutdown_trigger*, align 8
  store %struct.shutdown_trigger* %0, %struct.shutdown_trigger** %2, align 8
  %3 = load %struct.shutdown_trigger*, %struct.shutdown_trigger** %2, align 8
  %4 = getelementptr inbounds %struct.shutdown_trigger, %struct.shutdown_trigger* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ON_PANIC_STR, align 4
  %7 = call i64 @strcmp(i32 %5, i32 %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.shutdown_trigger*, %struct.shutdown_trigger** %2, align 8
  %11 = getelementptr inbounds %struct.shutdown_trigger, %struct.shutdown_trigger* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ON_RESTART_STR, align 4
  %14 = call i64 @strcmp(i32 %12, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9, %1
  %17 = call i32 (...) @disabled_wait()
  br label %18

18:                                               ; preds = %16, %9
  %19 = call i32 (...) @smp_stop_cpu()
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @disabled_wait(...) #1

declare dso_local i32 @smp_stop_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

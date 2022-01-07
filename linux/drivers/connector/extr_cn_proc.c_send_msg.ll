; ModuleID = '/home/carl/AnghaBench/linux/drivers/connector/extr_cn_proc.c_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/connector/extr_cn_proc.c_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cn_msg = type { i64, i64 }
%struct.proc_event = type { i32 }

@proc_event_counts = common dso_local global i32 0, align 4
@CN_IDX_PROC = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cn_msg*)* @send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_msg(%struct.cn_msg* %0) #0 {
  %2 = alloca %struct.cn_msg*, align 8
  store %struct.cn_msg* %0, %struct.cn_msg** %2, align 8
  %3 = call i32 (...) @preempt_disable()
  %4 = load i32, i32* @proc_event_counts, align 4
  %5 = call i64 @__this_cpu_inc_return(i32 %4)
  %6 = sub nsw i64 %5, 1
  %7 = load %struct.cn_msg*, %struct.cn_msg** %2, align 8
  %8 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %7, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = call i32 (...) @smp_processor_id()
  %10 = load %struct.cn_msg*, %struct.cn_msg** %2, align 8
  %11 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.proc_event*
  %14 = getelementptr inbounds %struct.proc_event, %struct.proc_event* %13, i32 0, i32 0
  store i32 %9, i32* %14, align 4
  %15 = load %struct.cn_msg*, %struct.cn_msg** %2, align 8
  %16 = load i32, i32* @CN_IDX_PROC, align 4
  %17 = load i32, i32* @GFP_NOWAIT, align 4
  %18 = call i32 @cn_netlink_send(%struct.cn_msg* %15, i32 0, i32 %16, i32 %17)
  %19 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @__this_cpu_inc_return(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cn_netlink_send(%struct.cn_msg*, i32, i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

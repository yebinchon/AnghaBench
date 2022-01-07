; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_perf_callchain_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_perf_callchain_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)* }
%struct.perf_callchain_entry_ctx = type { i32 }
%struct.pt_regs = type { i32, i32, i32 }
%struct.stackframe = type { i32, i32, i32 }

@perf_guest_cbs = common dso_local global %struct.TYPE_2__* null, align 8
@callchain_trace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_callchain_kernel(%struct.perf_callchain_entry_ctx* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.perf_callchain_entry_ctx*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.stackframe, align 4
  store %struct.perf_callchain_entry_ctx* %0, %struct.perf_callchain_entry_ctx** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_guest_cbs, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_guest_cbs, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64 (...)*, i64 (...)** %10, align 8
  %12 = call i64 (...) %11()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %31

15:                                               ; preds = %8, %2
  %16 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %5, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %5, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @callchain_trace, align 4
  %29 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %30 = call i32 @walk_stackframe(%struct.stackframe* %5, i32 %28, %struct.perf_callchain_entry_ctx* %29)
  br label %31

31:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @walk_stackframe(%struct.stackframe*, i32, %struct.perf_callchain_entry_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

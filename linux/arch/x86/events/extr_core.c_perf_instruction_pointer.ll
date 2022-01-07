; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_perf_instruction_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_perf_instruction_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)*, i64 (...)* }
%struct.pt_regs = type { i64 }

@perf_guest_cbs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @perf_instruction_pointer(%struct.pt_regs* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_guest_cbs, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_guest_cbs, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64 (...)*, i64 (...)** %8, align 8
  %10 = call i64 (...) %9()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_guest_cbs, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64 (...)*, i64 (...)** %14, align 8
  %16 = call i64 (...) %15()
  store i64 %16, i64* %2, align 8
  br label %24

17:                                               ; preds = %6, %1
  %18 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %22 = call i64 @code_segment_base(%struct.pt_regs* %21)
  %23 = add i64 %20, %22
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %17, %12
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

declare dso_local i64 @code_segment_base(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

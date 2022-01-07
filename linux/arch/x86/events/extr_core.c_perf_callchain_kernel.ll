; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_perf_callchain_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_perf_callchain_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)* }
%struct.perf_callchain_entry_ctx = type { i32 }
%struct.pt_regs = type { i64, i64 }
%struct.unwind_state = type { i32 }

@perf_guest_cbs = common dso_local global %struct.TYPE_2__* null, align 8
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_callchain_kernel(%struct.perf_callchain_entry_ctx* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.perf_callchain_entry_ctx*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.unwind_state, align 4
  %6 = alloca i64, align 8
  store %struct.perf_callchain_entry_ctx* %0, %struct.perf_callchain_entry_ctx** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_guest_cbs, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @perf_guest_cbs, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64 (...)*, i64 (...)** %11, align 8
  %13 = call i64 (...) %12()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %57

16:                                               ; preds = %9, %2
  %17 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @perf_callchain_store(%struct.perf_callchain_entry_ctx* %17, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %57

24:                                               ; preds = %16
  %25 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %26 = call i64 @perf_hw_regs(%struct.pt_regs* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @current, align 4
  %30 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %31 = call i32 @unwind_start(%struct.unwind_state* %5, i32 %29, %struct.pt_regs* %30, i8* null)
  br label %39

32:                                               ; preds = %24
  %33 = load i32, i32* @current, align 4
  %34 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @unwind_start(%struct.unwind_state* %5, i32 %33, %struct.pt_regs* null, i8* %37)
  br label %39

39:                                               ; preds = %32, %28
  br label %40

40:                                               ; preds = %55, %39
  %41 = call i32 @unwind_done(%struct.unwind_state* %5)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = call i64 @unwind_get_return_address(%struct.unwind_state* %5)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @perf_callchain_store(%struct.perf_callchain_entry_ctx* %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %44
  br label %57

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = call i32 @unwind_next_frame(%struct.unwind_state* %5)
  br label %40

57:                                               ; preds = %15, %23, %53, %40
  ret void
}

declare dso_local i64 @perf_callchain_store(%struct.perf_callchain_entry_ctx*, i64) #1

declare dso_local i64 @perf_hw_regs(%struct.pt_regs*) #1

declare dso_local i32 @unwind_start(%struct.unwind_state*, i32, %struct.pt_regs*, i8*) #1

declare dso_local i32 @unwind_done(%struct.unwind_state*) #1

declare dso_local i64 @unwind_get_return_address(%struct.unwind_state*) #1

declare dso_local i32 @unwind_next_frame(%struct.unwind_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

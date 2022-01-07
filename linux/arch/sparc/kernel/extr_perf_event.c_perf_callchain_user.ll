; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_perf_callchain_user.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_perf_callchain_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.perf_callchain_entry_ctx = type { i32 }
%struct.pt_regs = type { i32 }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@TIF_32BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_callchain_user(%struct.perf_callchain_entry_ctx* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.perf_callchain_entry_ctx*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.perf_callchain_entry_ctx* %0, %struct.perf_callchain_entry_ctx** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = call %struct.TYPE_3__* (...) @current_thread_info()
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @get_thread_fault_code()
  store i32 %10, i32* %6, align 4
  %11 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx* %11, i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %42

21:                                               ; preds = %2
  %22 = call i32 (...) @flushw_user()
  %23 = call i32 (...) @pagefault_disable()
  %24 = load i32, i32* @TIF_32BIT, align 4
  %25 = call i64 @test_thread_flag(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %30 = call i32 @perf_callchain_user_32(%struct.perf_callchain_entry_ctx* %28, %struct.pt_regs* %29)
  br label %35

31:                                               ; preds = %21
  %32 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %34 = call i32 @perf_callchain_user_64(%struct.perf_callchain_entry_ctx* %32, %struct.pt_regs* %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = call i32 (...) @pagefault_enable()
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @set_thread_fault_code(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call %struct.TYPE_3__* (...) @current_thread_info()
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %20
  ret void
}

declare dso_local %struct.TYPE_3__* @current_thread_info(...) #1

declare dso_local i32 @get_thread_fault_code(...) #1

declare dso_local i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx*, i32) #1

declare dso_local i32 @flushw_user(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @perf_callchain_user_32(%struct.perf_callchain_entry_ctx*, %struct.pt_regs*) #1

declare dso_local i32 @perf_callchain_user_64(%struct.perf_callchain_entry_ctx*, %struct.pt_regs*) #1

declare dso_local i32 @pagefault_enable(...) #1

declare dso_local i32 @set_thread_fault_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_perf_callchain_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_perf_callchain_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_callchain_entry_ctx = type { i64, i64 }
%struct.pt_regs = type { i64, i64* }
%struct.sparc_stackf = type { i64, i64 }

@UREG_I6 = common dso_local global i64 0, align 8
@STACK_BIAS = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@return_to_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_callchain_kernel(%struct.perf_callchain_entry_ctx* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.perf_callchain_entry_ctx*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sparc_stackf*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i64, align 8
  store %struct.perf_callchain_entry_ctx* %0, %struct.perf_callchain_entry_ctx** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %10 = call i32 (...) @stack_trace_flush()
  %11 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx* %11, i64 %14)
  %16 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @UREG_I6, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @STACK_BIAS, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %71, %2
  %26 = call i32 (...) @current_thread_info()
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @kstack_valid(i32 %26, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %79

31:                                               ; preds = %25
  %32 = load i64, i64* %6, align 8
  %33 = inttoptr i64 %32 to %struct.sparc_stackf*
  store %struct.sparc_stackf* %33, %struct.sparc_stackf** %7, align 8
  %34 = load %struct.sparc_stackf*, %struct.sparc_stackf** %7, align 8
  %35 = getelementptr inbounds %struct.sparc_stackf, %struct.sparc_stackf* %34, i64 1
  %36 = bitcast %struct.sparc_stackf* %35 to %struct.pt_regs*
  store %struct.pt_regs* %36, %struct.pt_regs** %8, align 8
  %37 = call i32 (...) @current_thread_info()
  %38 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %39 = call i64 @kstack_is_trap_frame(i32 %37, %struct.pt_regs* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %31
  %42 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %43 = call i64 @user_mode(%struct.pt_regs* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %79

46:                                               ; preds = %41
  %47 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %9, align 8
  %50 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @UREG_I6, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @STACK_BIAS, align 8
  %57 = add i64 %55, %56
  store i64 %57, i64* %6, align 8
  br label %67

58:                                               ; preds = %31
  %59 = load %struct.sparc_stackf*, %struct.sparc_stackf** %7, align 8
  %60 = getelementptr inbounds %struct.sparc_stackf, %struct.sparc_stackf* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %9, align 8
  %62 = load %struct.sparc_stackf*, %struct.sparc_stackf** %7, align 8
  %63 = getelementptr inbounds %struct.sparc_stackf, %struct.sparc_stackf* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @STACK_BIAS, align 8
  %66 = add i64 %64, %65
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %58, %46
  %68 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx* %68, i64 %69)
  br label %71

71:                                               ; preds = %67
  %72 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.perf_callchain_entry_ctx, %struct.perf_callchain_entry_ctx* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.perf_callchain_entry_ctx*, %struct.perf_callchain_entry_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.perf_callchain_entry_ctx, %struct.perf_callchain_entry_ctx* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %25, label %79

79:                                               ; preds = %71, %45, %30
  ret void
}

declare dso_local i32 @stack_trace_flush(...) #1

declare dso_local i32 @perf_callchain_store(%struct.perf_callchain_entry_ctx*, i64) #1

declare dso_local i32 @kstack_valid(i32, i64) #1

declare dso_local i32 @current_thread_info(...) #1

declare dso_local i64 @kstack_is_trap_frame(i32, %struct.pt_regs*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

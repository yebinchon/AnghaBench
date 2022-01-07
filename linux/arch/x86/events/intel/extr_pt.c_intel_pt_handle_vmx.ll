; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_intel_pt_handle_vmx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_pt.c_intel_pt_handle_vmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.pt = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.perf_event* }
%struct.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@pt_ctx = common dso_local global i32 0, align 4
@pt_pmu = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PERF_AUX_FLAG_PARTIAL = common dso_local global i32 0, align 4
@MSR_IA32_RTIT_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_pt_handle_vmx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = call %struct.pt* @this_cpu_ptr(i32* @pt_ctx)
  store %struct.pt* %6, %struct.pt** %3, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pt_pmu, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load %struct.pt*, %struct.pt** %3, align 8
  %14 = getelementptr inbounds %struct.pt, %struct.pt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @WRITE_ONCE(i32 %15, i32 %16)
  %18 = load %struct.pt*, %struct.pt** %3, align 8
  %19 = getelementptr inbounds %struct.pt, %struct.pt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.perf_event*, %struct.perf_event** %20, align 8
  store %struct.perf_event* %21, %struct.perf_event** %4, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %23 = icmp ne %struct.perf_event* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %10
  %25 = load %struct.pt*, %struct.pt** %3, align 8
  %26 = getelementptr inbounds %struct.pt, %struct.pt* %25, i32 0, i32 0
  %27 = load i32, i32* @PERF_AUX_FLAG_PARTIAL, align 4
  %28 = call i32 @perf_aux_output_flag(%struct.TYPE_6__* %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %10
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %34 = icmp ne %struct.perf_event* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* @MSR_IA32_RTIT_CTL, align 4
  %37 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %38 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wrmsrl(i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %35, %32, %29
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @local_irq_restore(i64 %43)
  br label %45

45:                                               ; preds = %42, %9
  ret void
}

declare dso_local %struct.pt* @this_cpu_ptr(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @perf_aux_output_flag(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

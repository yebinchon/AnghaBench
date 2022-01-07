; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_uncore_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_uncore_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@boot_cpu_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@uncore_nhmex = common dso_local global i32 0, align 4
@wsmex_uncore_mbox_events = common dso_local global i32 0, align 4
@nhmex_uncore_mbox = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@nhmex_uncore_cbox = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@nhmex_msr_uncores = common dso_local global i32 0, align 4
@uncore_msr_uncores = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nhmex_uncore_cpu_init() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_cpu_data, i32 0, i32 0), align 8
  %2 = icmp eq i32 %1, 46
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 1, i32* @uncore_nhmex, align 4
  br label %6

4:                                                ; preds = %0
  %5 = load i32, i32* @wsmex_uncore_mbox_events, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nhmex_uncore_mbox, i32 0, i32 0), align 4
  br label %6

6:                                                ; preds = %4, %3
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nhmex_uncore_cbox, i32 0, i32 0), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_cpu_data, i32 0, i32 1), align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_cpu_data, i32 0, i32 1), align 8
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nhmex_uncore_cbox, i32 0, i32 0), align 8
  br label %12

12:                                               ; preds = %10, %6
  %13 = load i32, i32* @nhmex_msr_uncores, align 4
  store i32 %13, i32* @uncore_msr_uncores, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

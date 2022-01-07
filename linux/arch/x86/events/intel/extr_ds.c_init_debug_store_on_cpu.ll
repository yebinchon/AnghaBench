; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_init_debug_store_on_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_init_debug_store_on_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_store = type { i32 }
%struct.TYPE_2__ = type { %struct.debug_store* }

@cpu_hw_events = common dso_local global i32 0, align 4
@MSR_IA32_DS_AREA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_debug_store_on_cpu(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.debug_store*, align 8
  %4 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @cpu_hw_events, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.debug_store* @per_cpu(i32 %5, i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store %struct.debug_store* %7, %struct.debug_store** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %10 = load %struct.debug_store*, %struct.debug_store** %9, align 8
  store %struct.debug_store* %10, %struct.debug_store** %3, align 8
  %11 = load %struct.debug_store*, %struct.debug_store** %3, align 8
  %12 = icmp ne %struct.debug_store* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %25

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @MSR_IA32_DS_AREA, align 4
  %17 = load %struct.debug_store*, %struct.debug_store** %3, align 8
  %18 = ptrtoint %struct.debug_store* %17 to i64
  %19 = trunc i64 %18 to i32
  %20 = load %struct.debug_store*, %struct.debug_store** %3, align 8
  %21 = ptrtoint %struct.debug_store* %20 to i64
  %22 = trunc i64 %21 to i32
  %23 = ashr i32 %22, 32
  %24 = call i32 @wrmsr_on_cpu(i32 %15, i32 %16, i32 %19, i32 %23)
  br label %25

25:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.debug_store* @per_cpu(i32, i32) #1

declare dso_local i32 @wrmsr_on_cpu(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

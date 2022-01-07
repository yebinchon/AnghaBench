; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_update_turbo_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_update_turbo_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@MSR_IA32_MISC_ENABLE = common dso_local global i32 0, align 4
@MSR_IA32_MISC_ENABLE_TURBO_DISABLE = common dso_local global i32 0, align 4
@global = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_turbo_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_turbo_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cpudata*, align 8
  %3 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %4 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %3, i64 0
  %5 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  store %struct.cpudata* %5, %struct.cpudata** %2, align 8
  %6 = load i32, i32* @MSR_IA32_MISC_ENABLE, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @rdmsrl(i32 %6, i32 %7)
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @MSR_IA32_MISC_ENABLE_TURBO_DISABLE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %0
  %14 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %15 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cpudata*, %struct.cpudata** %2, align 8
  %19 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %17, %21
  br label %23

23:                                               ; preds = %13, %0
  %24 = phi i1 [ true, %0 ], [ %22, %13 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @global, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

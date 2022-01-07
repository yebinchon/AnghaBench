; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_get_epp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_get_epp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i32 }

@X86_FEATURE_HWP_EPP = common dso_local global i32 0, align 4
@MSR_HWP_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpudata*, i32)* @intel_pstate_get_epp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pstate_get_epp(%struct.cpudata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpudata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpudata* %0, %struct.cpudata** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @X86_FEATURE_HWP_EPP, align 4
  %8 = call i64 @boot_cpu_has(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %15 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MSR_HWP_REQUEST, align 4
  %18 = call i32 @rdmsrl_on_cpu(i32 %16, i32 %17, i32* %5)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 255
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  %30 = call i32 @intel_pstate_get_epb(%struct.cpudata* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %21
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @rdmsrl_on_cpu(i32, i32, i32*) #1

declare dso_local i32 @intel_pstate_get_epb(%struct.cpudata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

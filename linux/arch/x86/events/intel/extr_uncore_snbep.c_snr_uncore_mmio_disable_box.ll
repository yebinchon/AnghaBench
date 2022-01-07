; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snr_uncore_mmio_disable_box.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snr_uncore_mmio_disable_box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32 }

@SNBEP_PMON_BOX_CTL_FRZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*)* @snr_uncore_mmio_disable_box to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snr_uncore_mmio_disable_box(%struct.intel_uncore_box* %0) #0 {
  %2 = alloca %struct.intel_uncore_box*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %2, align 8
  %4 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %5 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %11 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @readl(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @SNBEP_PMON_BOX_CTL_FRZ, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %2, align 8
  %19 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @writel(i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

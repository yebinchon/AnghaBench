; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_xen_convert_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_xen_convert_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_pmu_regs = type { i32, i64, i32, i32 }
%struct.pt_regs = type { i32, i32, i32 }

@PMU_SAMPLE_PV = common dso_local global i32 0, align 4
@PMU_SAMPLE_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_pmu_regs*, %struct.pt_regs*, i32)* @xen_convert_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_convert_regs(%struct.xen_pmu_regs* %0, %struct.pt_regs* %1, i32 %2) #0 {
  %4 = alloca %struct.xen_pmu_regs*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  store %struct.xen_pmu_regs* %0, %struct.xen_pmu_regs** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.xen_pmu_regs*, %struct.xen_pmu_regs** %4, align 8
  %8 = getelementptr inbounds %struct.xen_pmu_regs, %struct.xen_pmu_regs* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.xen_pmu_regs*, %struct.xen_pmu_regs** %4, align 8
  %13 = getelementptr inbounds %struct.xen_pmu_regs, %struct.xen_pmu_regs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.xen_pmu_regs*, %struct.xen_pmu_regs** %4, align 8
  %18 = getelementptr inbounds %struct.xen_pmu_regs, %struct.xen_pmu_regs* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PMU_SAMPLE_PV, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PMU_SAMPLE_USER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 3
  store i32 %35, i32* %33, align 4
  br label %41

36:                                               ; preds = %26
  %37 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, -4
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %36, %31
  br label %58

42:                                               ; preds = %3
  %43 = load %struct.xen_pmu_regs*, %struct.xen_pmu_regs** %4, align 8
  %44 = getelementptr inbounds %struct.xen_pmu_regs, %struct.xen_pmu_regs* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, 3
  store i32 %51, i32* %49, align 4
  br label %57

52:                                               ; preds = %42
  %53 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, -4
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %47
  br label %58

58:                                               ; preds = %57, %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

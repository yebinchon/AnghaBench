; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.c_reprogram_counter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.c_reprogram_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.kvm_pmc* (%struct.kvm_pmu*, i32)* }
%struct.kvm_pmc = type { i32 }
%struct.kvm_pmu = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@INTEL_PMC_IDX_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reprogram_counter(%struct.kvm_pmu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_pmc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_pmu* %0, %struct.kvm_pmu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.kvm_pmc* (%struct.kvm_pmu*, i32)*, %struct.kvm_pmc* (%struct.kvm_pmu*, i32)** %11, align 8
  %13 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.kvm_pmc* %12(%struct.kvm_pmu* %13, i32 %14)
  store %struct.kvm_pmc* %15, %struct.kvm_pmc** %5, align 8
  %16 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %17 = icmp ne %struct.kvm_pmc* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %21 = call i64 @pmc_is_gp(%struct.kvm_pmc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %25 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @reprogram_gp_counter(%struct.kvm_pmc* %24, i32 %27)
  br label %42

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @INTEL_PMC_IDX_FIXED, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @fixed_ctrl_field(i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.kvm_pmc*, %struct.kvm_pmc** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @reprogram_fixed_counter(%struct.kvm_pmc* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %18, %29, %23
  ret void
}

declare dso_local i64 @pmc_is_gp(%struct.kvm_pmc*) #1

declare dso_local i32 @reprogram_gp_counter(%struct.kvm_pmc*, i32) #1

declare dso_local i32 @fixed_ctrl_field(i32, i32) #1

declare dso_local i32 @reprogram_fixed_counter(%struct.kvm_pmc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

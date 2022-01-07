; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.h_pmc_read_counter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.h_pmc_read_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmc = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_pmc*)* @pmc_read_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_read_counter(%struct.kvm_pmc* %0) #0 {
  %2 = alloca %struct.kvm_pmc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_pmc* %0, %struct.kvm_pmc** %2, align 8
  %6 = load %struct.kvm_pmc*, %struct.kvm_pmc** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.kvm_pmc*, %struct.kvm_pmc** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.kvm_pmc*, %struct.kvm_pmc** %2, align 8
  %15 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @perf_event_read_value(i64 %16, i32* %4, i32* %5)
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %13, %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.kvm_pmc*, %struct.kvm_pmc** %2, align 8
  %25 = call i32 @pmc_bitmask(%struct.kvm_pmc* %24)
  %26 = and i32 %23, %25
  ret i32 %26
}

declare dso_local i64 @perf_event_read_value(i64, i32*, i32*) #1

declare dso_local i32 @pmc_bitmask(%struct.kvm_pmc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

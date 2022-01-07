; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_set_target_expiration.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_set_target_expiration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@APIC_TMICT = common dso_local global i32 0, align 4
@APIC_BUS_CYCLE_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_lapic*)* @set_target_expiration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_target_expiration(%struct.kvm_lapic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  %6 = call i32 (...) @rdtsc()
  store i32 %6, i32* %5, align 4
  %7 = call i32 (...) @ktime_get()
  store i32 %7, i32* %4, align 4
  %8 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %9 = load i32, i32* @APIC_TMICT, align 4
  %10 = call i64 @kvm_lapic_get_reg(%struct.kvm_lapic* %8, i32 %9)
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @APIC_BUS_CYCLE_NS, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %13, %16
  %18 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  store i32 0, i32* %2, align 4
  br label %59

30:                                               ; preds = %1
  %31 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %32 = call i32 @limit_periodic_timer_frequency(%struct.kvm_lapic* %31)
  %33 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @kvm_read_l1_tsc(i32 %35, i32 %36)
  %38 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %42 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @nsec_to_cycles(i32 %40, i32 %44)
  %46 = add nsw i64 %37, %45
  %47 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %48 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ktime_add_ns(i32 %50, i32 %54)
  %56 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %57 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %30, %26
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @kvm_lapic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @limit_periodic_timer_frequency(%struct.kvm_lapic*) #1

declare dso_local i64 @kvm_read_l1_tsc(i32, i32) #1

declare dso_local i64 @nsec_to_cycles(i32, i32) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

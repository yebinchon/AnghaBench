; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_update_target_expiration.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_update_target_expiration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@APIC_TMICT = common dso_local global i32 0, align 4
@APIC_BUS_CYCLE_NS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_lapic*, i32)* @update_target_expiration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_target_expiration(%struct.kvm_lapic* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %10 = load i32, i32* @APIC_TMICT, align 4
  %11 = call i64 @kvm_lapic_get_reg(%struct.kvm_lapic* %9, i32 %10)
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @APIC_BUS_CYCLE_NS, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %23 = call i32 @limit_periodic_timer_frequency(%struct.kvm_lapic* %22)
  %24 = call i64 (...) @ktime_get()
  store i64 %24, i64* %5, align 8
  %25 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @ktime_sub(i32 %28, i64 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @ktime_to_ns(i64 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @ktime_to_ns(i64 %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %41 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @mul_u64_u32_div(i32 %39, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %46 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @nsec_to_cycles(i32 %47, i32 %48)
  %50 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @nsec_to_cycles(i32 %52, i32 %53)
  %55 = sub nsw i64 %49, %54
  %56 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %57 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %55
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @ktime_add_ns(i64 %63, i32 %64)
  %66 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %67 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  ret void
}

declare dso_local i64 @kvm_lapic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @limit_periodic_timer_frequency(%struct.kvm_lapic*) #1

declare dso_local i64 @ktime_get(...) #1

declare dso_local i64 @ktime_sub(i32, i64) #1

declare dso_local i64 @ktime_to_ns(i64) #1

declare dso_local i32 @mul_u64_u32_div(i32, i32, i32) #1

declare dso_local i64 @nsec_to_cycles(i32, i32) #1

declare dso_local i32 @ktime_add_ns(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

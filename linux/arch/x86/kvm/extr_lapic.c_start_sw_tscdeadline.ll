; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_start_sw_tscdeadline.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_start_sw_tscdeadline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { %struct.kvm_timer, %struct.kvm_vcpu* }
%struct.kvm_timer = type { i64, i64, i32 }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HRTIMER_MODE_ABS_HARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_lapic*)* @start_sw_tscdeadline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_sw_tscdeadline(%struct.kvm_lapic* %0) #0 {
  %2 = alloca %struct.kvm_lapic*, align 8
  %3 = alloca %struct.kvm_timer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %2, align 8
  %12 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %13 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %12, i32 0, i32 0
  store %struct.kvm_timer* %13, %struct.kvm_timer** %3, align 8
  %14 = load %struct.kvm_timer*, %struct.kvm_timer** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %18 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %17, i32 0, i32 1
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %18, align 8
  store %struct.kvm_vcpu* %19, %struct.kvm_vcpu** %8, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi i1 [ true, %1 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %86

36:                                               ; preds = %30
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @local_irq_save(i64 %37)
  %39 = call i32 (...) @ktime_get()
  store i32 %39, i32* %11, align 4
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %41 = call i32 (...) @rdtsc()
  %42 = call i64 @kvm_read_l1_tsc(%struct.kvm_vcpu* %40, i32 %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = sub i64 %43, %44
  %46 = mul i64 %45, 1000000
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @do_div(i64 %47, i64 %48)
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp ugt i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @likely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %36
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %59 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ugt i64 %57, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %56
  %67 = load i32, i32* %11, align 4
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @ktime_add_ns(i32 %67, i64 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.kvm_timer*, %struct.kvm_timer** %3, align 8
  %72 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ktime_sub_ns(i32 %70, i64 %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.kvm_timer*, %struct.kvm_timer** %3, align 8
  %76 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %75, i32 0, i32 2
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @HRTIMER_MODE_ABS_HARD, align 4
  %79 = call i32 @hrtimer_start(i32* %76, i32 %77, i32 %78)
  br label %83

80:                                               ; preds = %56, %36
  %81 = load %struct.kvm_lapic*, %struct.kvm_lapic** %2, align 8
  %82 = call i32 @apic_timer_expired(%struct.kvm_lapic* %81)
  br label %83

83:                                               ; preds = %80, %66
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @local_irq_restore(i64 %84)
  br label %86

86:                                               ; preds = %83, %35
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @kvm_read_l1_tsc(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ktime_add_ns(i32, i64) #1

declare dso_local i32 @ktime_sub_ns(i32, i64) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @apic_timer_expired(%struct.kvm_lapic*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

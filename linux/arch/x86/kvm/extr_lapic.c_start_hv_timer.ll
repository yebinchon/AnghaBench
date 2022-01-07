; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_start_hv_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_start_hv_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.kvm_vcpu*, i32, i32*)* }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_lapic = type { %struct.kvm_vcpu*, %struct.kvm_timer }
%struct.kvm_timer = type { i32, i32, i32, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_lapic*)* @start_hv_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_hv_timer(%struct.kvm_lapic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca %struct.kvm_timer*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  %7 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %7, i32 0, i32 1
  store %struct.kvm_timer* %8, %struct.kvm_timer** %4, align 8
  %9 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %9, i32 0, i32 0
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  store %struct.kvm_vcpu* %11, %struct.kvm_vcpu** %5, align 8
  %12 = call i32 (...) @preemptible()
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64 (%struct.kvm_vcpu*, i32, i32*)*, i64 (%struct.kvm_vcpu*, i32, i32*)** %15, align 8
  %17 = icmp ne i64 (%struct.kvm_vcpu*, i32, i32*)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

19:                                               ; preds = %1
  %20 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %71

25:                                               ; preds = %19
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64 (%struct.kvm_vcpu*, i32, i32*)*, i64 (%struct.kvm_vcpu*, i32, i32*)** %27, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %30 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %31 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i64 %28(%struct.kvm_vcpu* %29, i32 %32, i32* %6)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %71

36:                                               ; preds = %25
  %37 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %40 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %39, i32 0, i32 2
  %41 = call i32 @hrtimer_cancel(i32* %40)
  %42 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %43 = call i32 @apic_lvtt_period(%struct.kvm_lapic* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %63, label %45

45:                                               ; preds = %36
  %46 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %46, i32 0, i32 1
  %48 = call i64 @atomic_read(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %52 = call i32 @cancel_hv_timer(%struct.kvm_lapic* %51)
  br label %62

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %58 = call i32 @apic_timer_expired(%struct.kvm_lapic* %57)
  %59 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %60 = call i32 @cancel_hv_timer(%struct.kvm_lapic* %59)
  br label %61

61:                                               ; preds = %56, %53
  br label %62

62:                                               ; preds = %61, %50
  br label %63

63:                                               ; preds = %62, %36
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.kvm_timer*, %struct.kvm_timer** %4, align 8
  %68 = getelementptr inbounds %struct.kvm_timer, %struct.kvm_timer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @trace_kvm_hv_timer_state(i32 %66, i32 %69)
  store i32 1, i32* %2, align 4
  br label %71

71:                                               ; preds = %63, %35, %24, %18
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @preemptible(...) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @apic_lvtt_period(%struct.kvm_lapic*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cancel_hv_timer(%struct.kvm_lapic*) #1

declare dso_local i32 @apic_timer_expired(%struct.kvm_lapic*) #1

declare dso_local i32 @trace_kvm_hv_timer_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

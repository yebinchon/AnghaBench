; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c__kvm_vz_save_htimer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c__kvm_vz_save_htimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@MIPS_EXC_INT_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32*, i32*)* @_kvm_vz_save_htimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_kvm_vz_save_htimer(%struct.kvm_vcpu* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = call i32 (...) @read_gc0_compare()
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  %15 = call i32 (...) @ktime_get()
  store i32 %15, i32* %11, align 4
  %16 = call i32 (...) @read_gc0_count()
  store i32 %16, i32* %9, align 4
  %17 = call i32 (...) @back_to_back_c0_hazard()
  %18 = call i32 (...) @read_gc0_cause()
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = call i32 (...) @back_to_back_c0_hazard()
  %22 = call i32 (...) @read_gc0_count()
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sub nsw i32 %28, 1
  %30 = icmp sgt i32 %25, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %33 = load i32, i32* @MIPS_EXC_INT_TIMER, align 4
  %34 = call i32 @kvm_vz_queue_irq(%struct.kvm_vcpu* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %3
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @kvm_mips_restore_hrtimer(%struct.kvm_vcpu* %36, i32 %37, i32 %38, i32 -65536)
  ret void
}

declare dso_local i32 @read_gc0_compare(...) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @read_gc0_count(...) #1

declare dso_local i32 @back_to_back_c0_hazard(...) #1

declare dso_local i32 @read_gc0_cause(...) #1

declare dso_local i32 @kvm_vz_queue_irq(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mips_restore_hrtimer(%struct.kvm_vcpu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

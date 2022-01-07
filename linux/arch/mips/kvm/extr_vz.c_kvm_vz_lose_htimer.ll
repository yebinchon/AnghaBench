; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_lose_htimer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_lose_htimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@MIPS_GCTL0_GT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_vz_lose_htimer(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = call i32 (...) @preempt_disable()
  %7 = call i32 (...) @read_c0_guestctl0()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MIPS_GCTL0_GT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MIPS_GCTL0_GT, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @write_c0_guestctl0(i32 %16)
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %19 = call i32 @_kvm_vz_save_htimer(%struct.kvm_vcpu* %18, i32* %4, i32* %5)
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @_kvm_vz_restore_stimer(%struct.kvm_vcpu* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %12, %1
  %25 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @read_c0_guestctl0(...) #1

declare dso_local i32 @write_c0_guestctl0(i32) #1

declare dso_local i32 @_kvm_vz_save_htimer(%struct.kvm_vcpu*, i32*, i32*) #1

declare dso_local i32 @_kvm_vz_restore_stimer(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

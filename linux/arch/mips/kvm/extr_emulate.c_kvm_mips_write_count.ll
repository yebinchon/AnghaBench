; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_write_count.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_write_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mips_write_count(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mips_coproc*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  store %struct.mips_coproc* %10, %struct.mips_coproc** %5, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = call i32 @kvm_mips_count_time(%struct.kvm_vcpu* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @kvm_mips_ktime_to_count(%struct.kvm_vcpu* %14, i32 %15)
  %17 = sub nsw i64 %13, %16
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call i64 @kvm_mips_count_disabled(%struct.kvm_vcpu* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @kvm_write_c0_guest_count(%struct.mips_coproc* %25, i64 %26)
  br label %33

28:                                               ; preds = %2
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @kvm_mips_resume_hrtimer(%struct.kvm_vcpu* %29, i32 %30, i64 %31)
  br label %33

33:                                               ; preds = %28, %24
  ret void
}

declare dso_local i32 @kvm_mips_count_time(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_mips_ktime_to_count(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @kvm_mips_count_disabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_write_c0_guest_count(%struct.mips_coproc*, i64) #1

declare dso_local i32 @kvm_mips_resume_hrtimer(%struct.kvm_vcpu*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

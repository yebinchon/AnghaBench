; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_regmap.c_vcpu_write_spsr32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_regmap.c_vcpu_write_spsr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64* }

@SYS_SPSR = common dso_local global i32 0, align 4
@spsr_abt = common dso_local global i32 0, align 4
@spsr_und = common dso_local global i32 0, align 4
@spsr_irq = common dso_local global i32 0, align 4
@spsr_fiq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcpu_write_spsr32(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call i32 @vcpu_spsr32_mode(%struct.kvm_vcpu* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = call %struct.TYPE_4__* @vcpu_gp_regs(%struct.kvm_vcpu* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 %14, i64* %21, align 8
  br label %44

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %44 [
    i32 129, label %24
    i32 132, label %28
    i32 128, label %32
    i32 130, label %36
    i32 131, label %40
  ]

24:                                               ; preds = %22
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* @SYS_SPSR, align 4
  %27 = call i32 @write_sysreg_el1(i64 %25, i32 %26)
  br label %44

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @spsr_abt, align 4
  %31 = call i32 @write_sysreg(i64 %29, i32 %30)
  br label %44

32:                                               ; preds = %22
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* @spsr_und, align 4
  %35 = call i32 @write_sysreg(i64 %33, i32 %34)
  br label %44

36:                                               ; preds = %22
  %37 = load i64, i64* %4, align 8
  %38 = load i32, i32* @spsr_irq, align 4
  %39 = call i32 @write_sysreg(i64 %37, i32 %38)
  br label %44

40:                                               ; preds = %22
  %41 = load i64, i64* %4, align 8
  %42 = load i32, i32* @spsr_fiq, align 4
  %43 = call i32 @write_sysreg(i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %13, %22, %40, %36, %32, %28, %24
  ret void
}

declare dso_local i32 @vcpu_spsr32_mode(%struct.kvm_vcpu*) #1

declare dso_local %struct.TYPE_4__* @vcpu_gp_regs(%struct.kvm_vcpu*) #1

declare dso_local i32 @write_sysreg_el1(i64, i32) #1

declare dso_local i32 @write_sysreg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_regmap.c_vcpu_read_spsr32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_regmap.c_vcpu_read_spsr32.c"
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
define dso_local i64 @vcpu_read_spsr32(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = call i32 @vcpu_spsr32_mode(%struct.kvm_vcpu* %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = call %struct.TYPE_4__* @vcpu_gp_regs(%struct.kvm_vcpu* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %2, align 8
  br label %40

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %38 [
    i32 129, label %23
    i32 132, label %26
    i32 128, label %29
    i32 130, label %32
    i32 131, label %35
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @SYS_SPSR, align 4
  %25 = call i64 @read_sysreg_el1(i32 %24)
  store i64 %25, i64* %2, align 8
  br label %40

26:                                               ; preds = %21
  %27 = load i32, i32* @spsr_abt, align 4
  %28 = call i64 @read_sysreg(i32 %27)
  store i64 %28, i64* %2, align 8
  br label %40

29:                                               ; preds = %21
  %30 = load i32, i32* @spsr_und, align 4
  %31 = call i64 @read_sysreg(i32 %30)
  store i64 %31, i64* %2, align 8
  br label %40

32:                                               ; preds = %21
  %33 = load i32, i32* @spsr_irq, align 4
  %34 = call i64 @read_sysreg(i32 %33)
  store i64 %34, i64* %2, align 8
  br label %40

35:                                               ; preds = %21
  %36 = load i32, i32* @spsr_fiq, align 4
  %37 = call i64 @read_sysreg(i32 %36)
  store i64 %37, i64* %2, align 8
  br label %40

38:                                               ; preds = %21
  %39 = call i32 (...) @BUG()
  br label %40

40:                                               ; preds = %12, %23, %26, %29, %32, %35, %38
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i32 @vcpu_spsr32_mode(%struct.kvm_vcpu*) #1

declare dso_local %struct.TYPE_4__* @vcpu_gp_regs(%struct.kvm_vcpu*) #1

declare dso_local i64 @read_sysreg_el1(i32) #1

declare dso_local i64 @read_sysreg(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

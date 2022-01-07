; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_mips_num_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_mips_num_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { i32 }

@kvm_mips_get_one_regs = common dso_local global i32 0, align 4
@kvm_mips_get_one_regs_fpu = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MIPS_FPIR_F64 = common dso_local global i32 0, align 4
@kvm_mips_get_one_regs_msa = common dso_local global i32 0, align 4
@kvm_mips_callbacks = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kvm_vcpu*)* @kvm_mips_num_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_mips_num_regs(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load i32, i32* @kvm_mips_get_one_regs, align 4
  %5 = call i32 @ARRAY_SIZE(i32 %4)
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = call i64 @kvm_mips_guest_can_have_fpu(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @kvm_mips_get_one_regs_fpu, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = add nsw i32 %13, 48
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, %15
  store i64 %17, i64* %3, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  %19 = load i32, i32* @MIPS_FPIR_F64, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 16
  store i64 %24, i64* %3, align 8
  br label %25

25:                                               ; preds = %22, %11
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = call i64 @kvm_mips_guest_can_have_msa(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* @kvm_mips_get_one_regs_msa, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = add nsw i32 %33, 32
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kvm_mips_callbacks, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %40, align 8
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %43 = call i64 %41(%struct.kvm_vcpu* %42)
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @kvm_mips_guest_can_have_fpu(i32*) #1

declare dso_local i64 @kvm_mips_guest_can_have_msa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

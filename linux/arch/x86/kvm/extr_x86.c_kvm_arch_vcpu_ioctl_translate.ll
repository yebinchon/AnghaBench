; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_translate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_translation = type { i64, i32, i32, i64, i64 }

@UNMAPPED_GVA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_translate(%struct.kvm_vcpu* %0, %struct.kvm_translation* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_translation*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_translation* %1, %struct.kvm_translation** %4, align 8
  %8 = load %struct.kvm_translation*, %struct.kvm_translation** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_translation, %struct.kvm_translation* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = call i32 @vcpu_load(%struct.kvm_vcpu* %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @srcu_read_lock(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @kvm_mmu_gva_to_gpa_system(%struct.kvm_vcpu* %18, i64 %19, i32* null)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @srcu_read_unlock(i32* %24, i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.kvm_translation*, %struct.kvm_translation** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_translation, %struct.kvm_translation* %28, i32 0, i32 4
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @UNMAPPED_GVA, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load %struct.kvm_translation*, %struct.kvm_translation** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_translation, %struct.kvm_translation* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.kvm_translation*, %struct.kvm_translation** %4, align 8
  %37 = getelementptr inbounds %struct.kvm_translation, %struct.kvm_translation* %36, i32 0, i32 2
  store i32 1, i32* %37, align 4
  %38 = load %struct.kvm_translation*, %struct.kvm_translation** %4, align 8
  %39 = getelementptr inbounds %struct.kvm_translation, %struct.kvm_translation* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = call i32 @vcpu_put(%struct.kvm_vcpu* %40)
  ret i32 0
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i64 @kvm_mmu_gva_to_gpa_system(%struct.kvm_vcpu*, i64, i32*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

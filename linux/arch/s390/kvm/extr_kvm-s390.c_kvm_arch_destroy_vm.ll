; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_destroy_vm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_destroy_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"vm 0x%pK destroyed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_destroy_vm(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %3 = load %struct.kvm*, %struct.kvm** %2, align 8
  %4 = call i32 @kvm_free_vcpus(%struct.kvm* %3)
  %5 = load %struct.kvm*, %struct.kvm** %2, align 8
  %6 = call i32 @sca_dispose(%struct.kvm* %5)
  %7 = load %struct.kvm*, %struct.kvm** %2, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @debug_unregister(i32 %10)
  %12 = load %struct.kvm*, %struct.kvm** %2, align 8
  %13 = call i32 @kvm_s390_gisa_destroy(%struct.kvm* %12)
  %14 = load %struct.kvm*, %struct.kvm** %2, align 8
  %15 = getelementptr inbounds %struct.kvm, %struct.kvm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @free_page(i64 %17)
  %19 = load %struct.kvm*, %struct.kvm** %2, align 8
  %20 = call i32 @kvm_is_ucontrol(%struct.kvm* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.kvm*, %struct.kvm** %2, align 8
  %24 = getelementptr inbounds %struct.kvm, %struct.kvm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @gmap_remove(i32 %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.kvm*, %struct.kvm** %2, align 8
  %30 = call i32 @kvm_s390_destroy_adapters(%struct.kvm* %29)
  %31 = load %struct.kvm*, %struct.kvm** %2, align 8
  %32 = call i32 @kvm_s390_clear_float_irqs(%struct.kvm* %31)
  %33 = load %struct.kvm*, %struct.kvm** %2, align 8
  %34 = call i32 @kvm_s390_vsie_destroy(%struct.kvm* %33)
  %35 = load %struct.kvm*, %struct.kvm** %2, align 8
  %36 = call i32 @KVM_EVENT(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.kvm* %35)
  ret void
}

declare dso_local i32 @kvm_free_vcpus(%struct.kvm*) #1

declare dso_local i32 @sca_dispose(%struct.kvm*) #1

declare dso_local i32 @debug_unregister(i32) #1

declare dso_local i32 @kvm_s390_gisa_destroy(%struct.kvm*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kvm_is_ucontrol(%struct.kvm*) #1

declare dso_local i32 @gmap_remove(i32) #1

declare dso_local i32 @kvm_s390_destroy_adapters(%struct.kvm*) #1

declare dso_local i32 @kvm_s390_clear_float_irqs(%struct.kvm*) #1

declare dso_local i32 @kvm_s390_vsie_destroy(%struct.kvm*) #1

declare dso_local i32 @KVM_EVENT(i32, i8*, %struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

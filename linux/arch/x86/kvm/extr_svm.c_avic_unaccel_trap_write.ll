; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_avic_unaccel_trap_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_avic_unaccel_trap_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@AVIC_UNACCEL_ACCESS_OFFSET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @avic_unaccel_trap_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avic_unaccel_trap_write(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.kvm_lapic*, align 8
  %5 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %6 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %7 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.kvm_lapic*, %struct.kvm_lapic** %9, align 8
  store %struct.kvm_lapic* %10, %struct.kvm_lapic** %4, align 8
  %11 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %12 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AVIC_UNACCEL_ACCESS_OFFSET_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %38 [
    i32 129, label %20
    i32 128, label %27
    i32 130, label %34
  ]

20:                                               ; preds = %1
  %21 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %22 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %21, i32 0, i32 0
  %23 = call i32 @avic_handle_apic_id_update(%struct.TYPE_10__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %46

26:                                               ; preds = %20
  br label %39

27:                                               ; preds = %1
  %28 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %29 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %28, i32 0, i32 0
  %30 = call i32 @avic_handle_ldr_update(%struct.TYPE_10__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %46

33:                                               ; preds = %27
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %36 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %35, i32 0, i32 0
  %37 = call i32 @avic_handle_dfr_update(%struct.TYPE_10__* %36)
  br label %39

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %38, %34, %33, %26
  %40 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %42, i32 %43)
  %45 = call i32 @kvm_lapic_reg_write(%struct.kvm_lapic* %40, i32 %41, i32 %44)
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %39, %32, %25
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @avic_handle_apic_id_update(%struct.TYPE_10__*) #1

declare dso_local i32 @avic_handle_ldr_update(%struct.TYPE_10__*) #1

declare dso_local i32 @avic_handle_dfr_update(%struct.TYPE_10__*) #1

declare dso_local i32 @kvm_lapic_reg_write(%struct.kvm_lapic*, i32, i32) #1

declare dso_local i32 @kvm_lapic_get_reg(%struct.kvm_lapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c___apic_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c___apic_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i32 }

@LAPIC_MMIO_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_lapic*, i32)* @__apic_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__apic_read(%struct.kvm_lapic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_lapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @LAPIC_MMIO_LENGTH, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %31 [
    i32 131, label %13
    i32 128, label %14
    i32 130, label %22
    i32 129, label %28
  ]

13:                                               ; preds = %11
  br label %35

14:                                               ; preds = %11
  %15 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %16 = call i32 @apic_lvtt_tscdeadline(%struct.kvm_lapic* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %37

19:                                               ; preds = %14
  %20 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %21 = call i32 @apic_get_tmcct(%struct.kvm_lapic* %20)
  store i32 %21, i32* %6, align 4
  br label %35

22:                                               ; preds = %11
  %23 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %24 = call i32 @apic_update_ppr(%struct.kvm_lapic* %23)
  %25 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %35

28:                                               ; preds = %11
  %29 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %30 = call i32 @report_tpr_access(%struct.kvm_lapic* %29, i32 0)
  br label %31

31:                                               ; preds = %11, %28
  %32 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %22, %19, %13
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %18, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @apic_lvtt_tscdeadline(%struct.kvm_lapic*) #1

declare dso_local i32 @apic_get_tmcct(%struct.kvm_lapic*) #1

declare dso_local i32 @apic_update_ppr(%struct.kvm_lapic*) #1

declare dso_local i32 @kvm_lapic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @report_tpr_access(%struct.kvm_lapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

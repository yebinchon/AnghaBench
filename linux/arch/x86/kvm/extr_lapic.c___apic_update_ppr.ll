; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c___apic_update_ppr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c___apic_update_ppr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i32 }

@APIC_PROCPRI = common dso_local global i32 0, align 4
@APIC_TASKPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_lapic*, i32*)* @__apic_update_ppr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__apic_update_ppr(%struct.kvm_lapic* %0, i32* %1) #0 {
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %11 = load i32, i32* @APIC_PROCPRI, align 4
  %12 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %14 = load i32, i32* @APIC_TASKPRI, align 4
  %15 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %17 = call i32 @apic_find_highest_isr(%struct.kvm_lapic* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 240
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 240
  %29 = icmp sge i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 255
  store i32 %32, i32* %7, align 4
  br label %36

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 240
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %44 = load i32, i32* @APIC_PROCPRI, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local i32 @kvm_lapic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @apic_find_highest_isr(%struct.kvm_lapic*) #1

declare dso_local i32 @kvm_lapic_set_reg(%struct.kvm_lapic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

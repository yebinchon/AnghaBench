; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_msi.c_irq_msi_compose_msg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_msi.c_irq_msi_compose_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.irq_data = type { i32 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.irq_cfg = type { i32, i32 }

@MSI_ADDR_BASE_HI = common dso_local global i32 0, align 4
@MSI_ADDR_BASE_LO = common dso_local global i32 0, align 4
@apic = common dso_local global %struct.TYPE_2__* null, align 8
@MSI_ADDR_DEST_MODE_PHYSICAL = common dso_local global i32 0, align 4
@MSI_ADDR_DEST_MODE_LOGICAL = common dso_local global i32 0, align 4
@MSI_ADDR_REDIRECTION_CPU = common dso_local global i32 0, align 4
@MSI_DATA_TRIGGER_EDGE = common dso_local global i32 0, align 4
@MSI_DATA_LEVEL_ASSERT = common dso_local global i32 0, align 4
@MSI_DATA_DELIVERY_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @irq_msi_compose_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_msi_compose_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.irq_cfg*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %7 = call %struct.irq_cfg* @irqd_cfg(%struct.irq_data* %6)
  store %struct.irq_cfg* %7, %struct.irq_cfg** %5, align 8
  %8 = load i32, i32* @MSI_ADDR_BASE_HI, align 4
  %9 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %10 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = call i64 (...) @x2apic_enabled()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.irq_cfg*, %struct.irq_cfg** %5, align 8
  %15 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MSI_ADDR_EXT_DEST_ID(i32 %16)
  %18 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %19 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %13, %2
  %23 = load i32, i32* @MSI_ADDR_BASE_LO, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @MSI_ADDR_DEST_MODE_PHYSICAL, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @MSI_ADDR_DEST_MODE_LOGICAL, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = or i32 %23, %33
  %35 = load i32, i32* @MSI_ADDR_REDIRECTION_CPU, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.irq_cfg*, %struct.irq_cfg** %5, align 8
  %38 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MSI_ADDR_DEST_ID(i32 %39)
  %41 = or i32 %36, %40
  %42 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %43 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @MSI_DATA_TRIGGER_EDGE, align 4
  %45 = load i32, i32* @MSI_DATA_LEVEL_ASSERT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MSI_DATA_DELIVERY_FIXED, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.irq_cfg*, %struct.irq_cfg** %5, align 8
  %50 = getelementptr inbounds %struct.irq_cfg, %struct.irq_cfg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MSI_DATA_VECTOR(i32 %51)
  %53 = or i32 %48, %52
  %54 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %55 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local %struct.irq_cfg* @irqd_cfg(%struct.irq_data*) #1

declare dso_local i64 @x2apic_enabled(...) #1

declare dso_local i32 @MSI_ADDR_EXT_DEST_ID(i32) #1

declare dso_local i32 @MSI_ADDR_DEST_ID(i32) #1

declare dso_local i32 @MSI_DATA_VECTOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

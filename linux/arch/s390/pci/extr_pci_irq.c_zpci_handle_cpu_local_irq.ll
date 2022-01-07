; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_irq.c_zpci_handle_cpu_local_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_irq.c_zpci_handle_cpu_local_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airq_iv = type { i32 }

@zpci_ibv = common dso_local global %struct.airq_iv** null, align 8
@SIC_IRQ_MODE_D_SINGLE = common dso_local global i32 0, align 4
@PCI_ISC = common dso_local global i32 0, align 4
@IRQIO_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @zpci_handle_cpu_local_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zpci_handle_cpu_local_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.airq_iv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load %struct.airq_iv**, %struct.airq_iv*** @zpci_ibv, align 8
  %7 = call i64 (...) @smp_processor_id()
  %8 = getelementptr inbounds %struct.airq_iv*, %struct.airq_iv** %6, i64 %7
  %9 = load %struct.airq_iv*, %struct.airq_iv** %8, align 8
  store %struct.airq_iv* %9, %struct.airq_iv** %3, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %33, %32, %1
  %11 = load %struct.airq_iv*, %struct.airq_iv** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.airq_iv*, %struct.airq_iv** %3, align 8
  %14 = call i32 @airq_iv_end(%struct.airq_iv* %13)
  %15 = call i64 @airq_iv_scan(%struct.airq_iv* %11, i64 %12, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %18, label %33

18:                                               ; preds = %10
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %18
  br label %40

26:                                               ; preds = %21
  %27 = load i32, i32* @SIC_IRQ_MODE_D_SINGLE, align 4
  %28 = load i32, i32* @PCI_ISC, align 4
  %29 = call i64 @zpci_set_irq_ctrl(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %40

32:                                               ; preds = %26
  store i64 0, i64* %4, align 8
  br label %10

33:                                               ; preds = %10
  %34 = load i32, i32* @IRQIO_MSI, align 4
  %35 = call i32 @inc_irq_stat(i32 %34)
  %36 = load %struct.airq_iv*, %struct.airq_iv** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @airq_iv_get_data(%struct.airq_iv* %36, i64 %37)
  %39 = call i32 @generic_handle_irq(i32 %38)
  br label %10

40:                                               ; preds = %31, %25
  ret void
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @airq_iv_scan(%struct.airq_iv*, i64, i32) #1

declare dso_local i32 @airq_iv_end(%struct.airq_iv*) #1

declare dso_local i64 @zpci_set_irq_ctrl(i32, i32) #1

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @airq_iv_get_data(%struct.airq_iv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

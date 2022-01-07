; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_irq.c_zpci_floating_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_irq.c_zpci_floating_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airq_iv = type { i32 }
%struct.airq_struct = type { i32 }

@IRQIO_PCF = common dso_local global i32 0, align 4
@zpci_sbv = common dso_local global %struct.airq_iv* null, align 8
@SIC_IRQ_MODE_SINGLE = common dso_local global i32 0, align 4
@PCI_ISC = common dso_local global i32 0, align 4
@zpci_ibv = common dso_local global %struct.airq_iv** null, align 8
@IRQIO_MSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airq_struct*, i32)* @zpci_floating_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zpci_floating_irq_handler(%struct.airq_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.airq_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.airq_iv*, align 8
  %8 = alloca i32, align 4
  store %struct.airq_struct* %0, %struct.airq_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @IRQIO_PCF, align 4
  %10 = call i32 @inc_irq_stat(i32 %9)
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %58, %30, %2
  %12 = load %struct.airq_iv*, %struct.airq_iv** @zpci_sbv, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.airq_iv*, %struct.airq_iv** @zpci_sbv, align 8
  %15 = call i32 @airq_iv_end(%struct.airq_iv* %14)
  %16 = call i64 @airq_iv_scan(%struct.airq_iv* %12, i64 %13, i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %31

19:                                               ; preds = %11
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %59

24:                                               ; preds = %19
  %25 = load i32, i32* @SIC_IRQ_MODE_SINGLE, align 4
  %26 = load i32, i32* @PCI_ISC, align 4
  %27 = call i64 @zpci_set_irq_ctrl(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %59

30:                                               ; preds = %24
  store i64 0, i64* %5, align 8
  br label %11

31:                                               ; preds = %11
  %32 = load %struct.airq_iv**, %struct.airq_iv*** @zpci_ibv, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.airq_iv*, %struct.airq_iv** %32, i64 %33
  %35 = load %struct.airq_iv*, %struct.airq_iv** %34, align 8
  store %struct.airq_iv* %35, %struct.airq_iv** %7, align 8
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %45, %31
  %37 = load %struct.airq_iv*, %struct.airq_iv** %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.airq_iv*, %struct.airq_iv** %7, align 8
  %40 = call i32 @airq_iv_end(%struct.airq_iv* %39)
  %41 = call i64 @airq_iv_scan(%struct.airq_iv* %37, i64 %38, i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %58

45:                                               ; preds = %36
  %46 = load i32, i32* @IRQIO_MSI, align 4
  %47 = call i32 @inc_irq_stat(i32 %46)
  %48 = load %struct.airq_iv*, %struct.airq_iv** %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @airq_iv_lock(%struct.airq_iv* %48, i64 %49)
  %51 = load %struct.airq_iv*, %struct.airq_iv** %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @airq_iv_get_data(%struct.airq_iv* %51, i64 %52)
  %54 = call i32 @generic_handle_irq(i32 %53)
  %55 = load %struct.airq_iv*, %struct.airq_iv** %7, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @airq_iv_unlock(%struct.airq_iv* %55, i64 %56)
  br label %36

58:                                               ; preds = %44
  br label %11

59:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i64 @airq_iv_scan(%struct.airq_iv*, i64, i32) #1

declare dso_local i32 @airq_iv_end(%struct.airq_iv*) #1

declare dso_local i64 @zpci_set_irq_ctrl(i32, i32) #1

declare dso_local i32 @airq_iv_lock(%struct.airq_iv*, i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @airq_iv_get_data(%struct.airq_iv*, i64) #1

declare dso_local i32 @airq_iv_unlock(%struct.airq_iv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

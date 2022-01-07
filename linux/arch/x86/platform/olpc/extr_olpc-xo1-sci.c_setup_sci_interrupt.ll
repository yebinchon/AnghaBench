; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_setup_sci_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo1-sci.c_setup_sci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@sci_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SCI is mapped to IRQ %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"SCI unmapped. Mapping to IRQ 3\0A\00", align 1
@CS5536_PIC_INT_SEL1 = common dso_local global i32 0, align 4
@CS5536_PIC_INT_SEL2 = common dso_local global i32 0, align 4
@acpi_base = common dso_local global i64 0, align 8
@CS5536_PM1_STS = common dso_local global i64 0, align 8
@CS5536_PM_PWRBTN = common dso_local global i32 0, align 4
@CS5536_PM_RTC = common dso_local global i32 0, align 4
@xo1_sci_intr = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"can't request interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @setup_sci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_sci_interrupt(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @rdmsr(i32 1363148832, i32 %7, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 20
  %12 = and i32 %11, 15
  store i32 %12, i32* @sci_irq, align 4
  %13 = load i32, i32* @sci_irq, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @sci_irq, align 4
  %19 = call i32 (i32*, i8*, ...) @dev_info(i32* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %28

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 (i32*, i8*, ...) @dev_info(i32* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 3, i32* @sci_irq, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, 3145728
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @wrmsrl(i32 1363148832, i32 %26)
  br label %28

28:                                               ; preds = %20, %15
  %29 = load i32, i32* @sci_irq, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* @CS5536_PIC_INT_SEL1, align 4
  %33 = call i32 @inb(i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @sci_irq, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @CS5536_PIC_INT_SEL1, align 4
  %40 = call i32 @outb(i32 %38, i32 %39)
  br label %52

41:                                               ; preds = %28
  %42 = load i32, i32* @CS5536_PIC_INT_SEL2, align 4
  %43 = call i32 @inb(i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @sci_irq, align 4
  %45 = sub nsw i32 %44, 8
  %46 = shl i32 1, %45
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @CS5536_PIC_INT_SEL2, align 4
  %51 = call i32 @outb(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %41, %31
  %53 = load i64, i64* @acpi_base, align 8
  %54 = load i64, i64* @CS5536_PM1_STS, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @inl(i64 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @CS5536_PM_PWRBTN, align 4
  %58 = load i32, i32* @CS5536_PM_RTC, align 4
  %59 = or i32 %57, %58
  %60 = shl i32 %59, 16
  %61 = or i32 %60, 65535
  %62 = load i64, i64* @acpi_base, align 8
  %63 = load i64, i64* @CS5536_PM1_STS, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @outl(i32 %61, i64 %64)
  %66 = load i32, i32* @sci_irq, align 4
  %67 = load i32, i32* @xo1_sci_intr, align 4
  %68 = load i32, i32* @DRV_NAME, align 4
  %69 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %70 = call i32 @request_irq(i32 %66, i32 %67, i32 0, i32 %68, %struct.platform_device* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %52
  %74 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %52
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

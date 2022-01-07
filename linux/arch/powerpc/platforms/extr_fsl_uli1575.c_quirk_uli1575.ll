; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_quirk_uli1575.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/extr_fsl_uli1575.c_quirk_uli1575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@uli_pirq_to_irq = common dso_local global i32* null, align 8
@ULI_PIRQD = common dso_local global i32 0, align 4
@ULI_PIRQA = common dso_local global i32 0, align 4
@ULI_PIRQB = common dso_local global i32 0, align 4
@ULI_PIRQF = common dso_local global i32 0, align 4
@ULI_PIRQE = common dso_local global i32 0, align 4
@ULI_PIRQG = common dso_local global i32 0, align 4
@ULI_8259_IRQ11 = common dso_local global i32 0, align 4
@ULI_8259_IRQ14 = common dso_local global i32 0, align 4
@ULI_8259_IRQ15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_uli1575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_uli1575(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = call i32 (...) @is_quirk_valid()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %77

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %33, %8
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load i32*, i32** @uli_pirq_to_irq, align 8
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @uli_pirq_to_irq, align 8
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 %20, 2
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 4
  %27 = or i32 %18, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 72, %29
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pci_write_config_byte(%struct.pci_dev* %28, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %12
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = load i32, i32* @ULI_PIRQD, align 4
  %39 = call i32 @pci_write_config_byte(%struct.pci_dev* %37, i32 134, i32 %38)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = load i32, i32* @ULI_PIRQA, align 4
  %42 = call i32 @pci_write_config_byte(%struct.pci_dev* %40, i32 135, i32 %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = load i32, i32* @ULI_PIRQB, align 4
  %45 = call i32 @pci_write_config_byte(%struct.pci_dev* %43, i32 136, i32 %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = load i32, i32* @ULI_PIRQF, align 4
  %48 = call i32 @pci_write_config_byte(%struct.pci_dev* %46, i32 137, i32 %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = load i32, i32* @ULI_PIRQF, align 4
  %51 = call i32 @pci_write_config_byte(%struct.pci_dev* %49, i32 138, i32 %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = load i32, i32* @ULI_PIRQF, align 4
  %54 = call i32 @pci_write_config_byte(%struct.pci_dev* %52, i32 139, i32 %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %56 = load i32, i32* @ULI_PIRQF, align 4
  %57 = call i32 @pci_write_config_byte(%struct.pci_dev* %55, i32 140, i32 %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = load i32, i32* @ULI_PIRQE, align 4
  %60 = call i32 @pci_write_config_byte(%struct.pci_dev* %58, i32 141, i32 %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %62 = load i32, i32* @ULI_PIRQG, align 4
  %63 = call i32 @pci_write_config_byte(%struct.pci_dev* %61, i32 142, i32 %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %65 = load i32, i32* @ULI_PIRQG, align 4
  %66 = call i32 @pci_write_config_byte(%struct.pci_dev* %64, i32 143, i32 %65)
  %67 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %68 = load i32, i32* @ULI_8259_IRQ11, align 4
  %69 = call i32 @pci_write_config_byte(%struct.pci_dev* %67, i32 116, i32 %68)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %71 = load i32, i32* @ULI_8259_IRQ14, align 4
  %72 = or i32 48, %71
  %73 = call i32 @pci_write_config_byte(%struct.pci_dev* %70, i32 68, i32 %72)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %75 = load i32, i32* @ULI_8259_IRQ15, align 4
  %76 = call i32 @pci_write_config_byte(%struct.pci_dev* %74, i32 117, i32 %75)
  br label %77

77:                                               ; preds = %36, %7
  ret void
}

declare dso_local i32 @is_quirk_valid(...) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

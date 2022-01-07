; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_bridge_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_pci-xtalk-bridge.c_bridge_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.bridge_irq_chip_data = type { i32, i32 }
%struct.irq_alloc_info = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bridge_irq_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @bridge_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bridge_irq_chip_data*, align 8
  %11 = alloca %struct.irq_alloc_info*, align 8
  %12 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.irq_alloc_info*
  store %struct.irq_alloc_info* %14, %struct.irq_alloc_info** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %19 = icmp ne %struct.irq_alloc_info* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %63

23:                                               ; preds = %17
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.bridge_irq_chip_data* @kzalloc(i32 8, i32 %24)
  store %struct.bridge_irq_chip_data* %25, %struct.bridge_irq_chip_data** %10, align 8
  %26 = load %struct.bridge_irq_chip_data*, %struct.bridge_irq_chip_data** %10, align 8
  %27 = icmp ne %struct.bridge_irq_chip_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %63

31:                                               ; preds = %23
  %32 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %32, i32 %33, i32 %34, i8* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %31
  %40 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %41 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bridge_irq_chip_data*, %struct.bridge_irq_chip_data** %10, align 8
  %44 = getelementptr inbounds %struct.bridge_irq_chip_data, %struct.bridge_irq_chip_data* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %46 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bridge_irq_chip_data*, %struct.bridge_irq_chip_data** %10, align 8
  %49 = getelementptr inbounds %struct.bridge_irq_chip_data, %struct.bridge_irq_chip_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %11, align 8
  %53 = getelementptr inbounds %struct.irq_alloc_info, %struct.irq_alloc_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bridge_irq_chip_data*, %struct.bridge_irq_chip_data** %10, align 8
  %56 = load i32, i32* @handle_level_irq, align 4
  %57 = call i32 @irq_domain_set_info(%struct.irq_domain* %50, i32 %51, i32 %54, i32* @bridge_irq_chip, %struct.bridge_irq_chip_data* %55, i32 %56, i32* null, i32* null)
  br label %61

58:                                               ; preds = %31
  %59 = load %struct.bridge_irq_chip_data*, %struct.bridge_irq_chip_data** %10, align 8
  %60 = call i32 @kfree(%struct.bridge_irq_chip_data* %59)
  br label %61

61:                                               ; preds = %58, %39
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %28, %20
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.bridge_irq_chip_data* @kzalloc(i32, i32) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, i8*) #1

declare dso_local i32 @irq_domain_set_info(%struct.irq_domain*, i32, i32, i32*, %struct.bridge_irq_chip_data*, i32, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.bridge_irq_chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

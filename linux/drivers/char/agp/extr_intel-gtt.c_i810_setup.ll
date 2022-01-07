; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_i810_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_intel-gtt.c_i810_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@I810_GTT_ORDER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_private = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@I810_MMADR_BAR = common dso_local global i32 0, align 4
@I810_PGETBL_ENABLED = common dso_local global i32 0, align 4
@I810_PGETBL_CTL = common dso_local global i64 0, align 8
@I810_PTE_BASE = common dso_local global i64 0, align 8
@I810_DRAM_CTL = common dso_local global i64 0, align 8
@I810_DRAM_ROW_0 = common dso_local global i32 0, align 4
@I810_DRAM_ROW_0_SDRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"detected 4MB dedicated video ram\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @i810_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i810_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @I810_GTT_ORDER, align 4
  %5 = call i8* @alloc_gatt_pages(i32 %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %49

11:                                               ; preds = %0
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 2), align 8
  %14 = load i32, i32* @I810_MMADR_BAR, align 4
  %15 = call i64 @pci_resource_start(%struct.TYPE_3__* %13, i32 %14)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @KB(i32 64)
  %18 = call i64 @ioremap(i64 %16, i32 %17)
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 3), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 3), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %1, align 4
  br label %49

24:                                               ; preds = %11
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @virt_to_phys(i8* %25)
  %27 = load i32, i32* @I810_PGETBL_ENABLED, align 4
  %28 = or i32 %26, %27
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 3), align 8
  %30 = load i64, i64* @I810_PGETBL_CTL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %28, i64 %31)
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* @I810_PTE_BASE, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 4), align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 3), align 8
  %37 = load i64, i64* @I810_DRAM_CTL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  %40 = load i32, i32* @I810_DRAM_ROW_0, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @I810_DRAM_ROW_0_SDRAM, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %24
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 2), align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1024, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1), align 8
  br label %48

48:                                               ; preds = %44, %24
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %48, %21, %8
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i8* @alloc_gatt_pages(i32) #1

declare dso_local i64 @pci_resource_start(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @ioremap(i64, i32) #1

declare dso_local i32 @KB(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

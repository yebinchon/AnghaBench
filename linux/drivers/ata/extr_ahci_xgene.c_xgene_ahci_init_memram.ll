; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_xgene.c_xgene_ahci_init_memram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_xgene.c_xgene_ahci_init_memram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_ahci_context = type { i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Release memory from shutdown\0A\00", align 1
@CFG_MEM_RAM_SHUTDOWN = common dso_local global i64 0, align 8
@BLOCK_MEM_RDY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to release memory from shutdown\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_ahci_context*)* @xgene_ahci_init_memram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_ahci_init_memram(%struct.xgene_ahci_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_ahci_context*, align 8
  store %struct.xgene_ahci_context* %0, %struct.xgene_ahci_context** %3, align 8
  %4 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %3, align 8
  %5 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @dev_dbg(i32 %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CFG_MEM_RAM_SHUTDOWN, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 0, i64 %12)
  %14 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %3, align 8
  %15 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CFG_MEM_RAM_SHUTDOWN, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = call i32 @msleep(i32 1)
  %21 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %3, align 8
  %22 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BLOCK_MEM_RDY, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %3, align 8
  %30 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

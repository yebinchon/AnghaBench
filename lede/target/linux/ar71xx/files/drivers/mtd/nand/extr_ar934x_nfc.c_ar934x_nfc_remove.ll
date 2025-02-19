; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_remove.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ar934x_nfc = type { i32 }
%struct.mtd_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ar934x_nfc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ar934x_nfc*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.ar934x_nfc* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ar934x_nfc* %6, %struct.ar934x_nfc** %3, align 8
  %7 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %8 = icmp ne %struct.ar934x_nfc* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %11 = call %struct.mtd_info* @ar934x_nfc_to_mtd(%struct.ar934x_nfc* %10)
  store %struct.mtd_info* %11, %struct.mtd_info** %4, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %13 = call i32 @nand_release(%struct.mtd_info* %12)
  %14 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %15 = call i32 @ar934x_nfc_free_buf(%struct.ar934x_nfc* %14)
  %16 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %17 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.ar934x_nfc* %19)
  br label %21

21:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local %struct.ar934x_nfc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mtd_info* @ar934x_nfc_to_mtd(%struct.ar934x_nfc*) #1

declare dso_local i32 @nand_release(%struct.mtd_info*) #1

declare dso_local i32 @ar934x_nfc_free_buf(%struct.ar934x_nfc*) #1

declare dso_local i32 @free_irq(i32, %struct.ar934x_nfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_wait_done.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_wait_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar934x_nfc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar934x_nfc*)* @ar934x_nfc_wait_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar934x_nfc_wait_done(%struct.ar934x_nfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar934x_nfc*, align 8
  %4 = alloca i32, align 4
  store %struct.ar934x_nfc* %0, %struct.ar934x_nfc** %3, align 8
  %5 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %6 = call i64 @ar934x_nfc_use_irq(%struct.ar934x_nfc* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %10 = call i32 @ar934x_nfc_wait_irq(%struct.ar934x_nfc* %9)
  store i32 %10, i32* %4, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %13 = call i32 @ar934x_nfc_wait_dev_ready(%struct.ar934x_nfc* %12)
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %14
  %20 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %21 = call i32 @ar934x_nfc_wait_dma_ready(%struct.ar934x_nfc* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %17
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @ar934x_nfc_use_irq(%struct.ar934x_nfc*) #1

declare dso_local i32 @ar934x_nfc_wait_irq(%struct.ar934x_nfc*) #1

declare dso_local i32 @ar934x_nfc_wait_dev_ready(%struct.ar934x_nfc*) #1

declare dso_local i32 @ar934x_nfc_wait_dma_ready(%struct.ar934x_nfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

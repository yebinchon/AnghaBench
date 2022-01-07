; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_send_cmd.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar934x_nfc = type { i32 }

@AR934X_NFC_CMD_INPUT_SEL_SIU = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_ADDR_SEL_0 = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_SEQ_1C = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_CMD0_M = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_CMD0_S = common dso_local global i32 0, align 4
@AR934X_NFC_REG_INT_STATUS = common dso_local global i32 0, align 4
@AR934X_NFC_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar934x_nfc*, i32)* @ar934x_nfc_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar934x_nfc_send_cmd(%struct.ar934x_nfc* %0, i32 %1) #0 {
  %3 = alloca %struct.ar934x_nfc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ar934x_nfc* %0, %struct.ar934x_nfc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @AR934X_NFC_CMD_INPUT_SEL_SIU, align 4
  %7 = load i32, i32* @AR934X_NFC_CMD_ADDR_SEL_0, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @AR934X_NFC_CMD_SEQ_1C, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AR934X_NFC_CMD_CMD0_M, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @AR934X_NFC_CMD_CMD0_S, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %19 = load i32, i32* @AR934X_NFC_REG_INT_STATUS, align 4
  %20 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %18, i32 %19, i32 0)
  %21 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %22 = load i32, i32* @AR934X_NFC_REG_CTRL, align 4
  %23 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %24 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %21, i32 %22, i32 %25)
  %27 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ar934x_nfc_write_cmd_reg(%struct.ar934x_nfc* %27, i32 %28)
  %30 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %3, align 8
  %31 = call i32 @ar934x_nfc_wait_dev_ready(%struct.ar934x_nfc* %30)
  ret void
}

declare dso_local i32 @ar934x_nfc_wr(%struct.ar934x_nfc*, i32, i32) #1

declare dso_local i32 @ar934x_nfc_write_cmd_reg(%struct.ar934x_nfc*, i32) #1

declare dso_local i32 @ar934x_nfc_wait_dev_ready(%struct.ar934x_nfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

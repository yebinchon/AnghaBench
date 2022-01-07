; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_send_erase.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_ar934x_nfc.c_ar934x_nfc_send_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar934x_nfc = type { i32, i32, i64 }

@AR934X_NFC_CTRL_ADDR_CYCLE0_M = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_ADDR_CYCLE0_S = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_ADDR_CYCLE1_M = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_ADDR_CYCLE1_S = common dso_local global i32 0, align 4
@AR934X_NFC_CTRL_SMALL_PAGE = common dso_local global i32 0, align 4
@NAND_CMD_ERASE1 = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_CMD0_S = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_CMD1_S = common dso_local global i32 0, align 4
@AR934X_NFC_CMD_SEQ_ERASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"erase page %d, a0:%08x a1:%08x cmd:%08x ctrl:%08x\0A\00", align 1
@AR934X_NFC_REG_INT_STATUS = common dso_local global i32 0, align 4
@AR934X_NFC_REG_CTRL = common dso_local global i32 0, align 4
@AR934X_NFC_REG_ADDR0_0 = common dso_local global i32 0, align 4
@AR934X_NFC_REG_ADDR0_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar934x_nfc*, i32, i32, i32)* @ar934x_nfc_send_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar934x_nfc_send_erase(%struct.ar934x_nfc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ar934x_nfc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ar934x_nfc* %0, %struct.ar934x_nfc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @ar934x_nfc_get_addr(%struct.ar934x_nfc* %13, i32 %14, i32 %15, i32* %9, i32* %10)
  %17 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %18 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %21 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %4
  %25 = load i32, i32* @AR934X_NFC_CTRL_ADDR_CYCLE0_M, align 4
  %26 = load i32, i32* @AR934X_NFC_CTRL_ADDR_CYCLE0_S, align 4
  %27 = shl i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %11, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @AR934X_NFC_CTRL_ADDR_CYCLE1_M, align 4
  %32 = load i32, i32* @AR934X_NFC_CTRL_ADDR_CYCLE1_S, align 4
  %33 = shl i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* @AR934X_NFC_CTRL_SMALL_PAGE, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %42 = getelementptr inbounds %struct.ar934x_nfc, %struct.ar934x_nfc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @AR934X_NFC_CTRL_ADDR_CYCLE0_S, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %24, %4
  %50 = load i32, i32* @NAND_CMD_ERASE1, align 4
  %51 = load i32, i32* @AR934X_NFC_CMD_CMD0_S, align 4
  %52 = shl i32 %50, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @AR934X_NFC_CMD_CMD1_S, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* @AR934X_NFC_CMD_SEQ_ERASE, align 4
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @nfc_dbg(%struct.ar934x_nfc* %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %69 = load i32, i32* @AR934X_NFC_REG_INT_STATUS, align 4
  %70 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %68, i32 %69, i32 0)
  %71 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %72 = load i32, i32* @AR934X_NFC_REG_CTRL, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %71, i32 %72, i32 %73)
  %75 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %76 = load i32, i32* @AR934X_NFC_REG_ADDR0_0, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %75, i32 %76, i32 %77)
  %79 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %80 = load i32, i32* @AR934X_NFC_REG_ADDR0_1, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @ar934x_nfc_wr(%struct.ar934x_nfc* %79, i32 %80, i32 %81)
  %83 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @ar934x_nfc_write_cmd_reg(%struct.ar934x_nfc* %83, i32 %84)
  %86 = load %struct.ar934x_nfc*, %struct.ar934x_nfc** %5, align 8
  %87 = call i32 @ar934x_nfc_wait_dev_ready(%struct.ar934x_nfc* %86)
  ret void
}

declare dso_local i32 @ar934x_nfc_get_addr(%struct.ar934x_nfc*, i32, i32, i32*, i32*) #1

declare dso_local i32 @nfc_dbg(%struct.ar934x_nfc*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ar934x_nfc_wr(%struct.ar934x_nfc*, i32, i32) #1

declare dso_local i32 @ar934x_nfc_write_cmd_reg(%struct.ar934x_nfc*, i32) #1

declare dso_local i32 @ar934x_nfc_wait_dev_ready(%struct.ar934x_nfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

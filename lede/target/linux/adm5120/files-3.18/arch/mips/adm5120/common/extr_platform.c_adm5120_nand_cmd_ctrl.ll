; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/arch/mips/adm5120/common/extr_platform.c_adm5120_nand_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/arch/mips/adm5120/common/extr_platform.c_adm5120_nand_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@NAND_REG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @adm5120_nand_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm5120_nand_cmd_ctrl(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NAND_CLE, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @adm5120_nand_set_cle(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @NAND_ALE, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @adm5120_nand_set_ale(i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NAND_NCE, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @adm5120_nand_set_cen(i32 %22)
  br label %24

24:                                               ; preds = %11, %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @NAND_CMD_NONE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @NAND_REG_DATA, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @NAND_WRITE_REG(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  ret void
}

declare dso_local i32 @adm5120_nand_set_cle(i32) #1

declare dso_local i32 @adm5120_nand_set_ale(i32) #1

declare dso_local i32 @adm5120_nand_set_cen(i32) #1

declare dso_local i32 @NAND_WRITE_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

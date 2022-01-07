; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlr/extr_platform-flash.c_xlr_nand_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlr/extr_platform-flash.c_xlr_nand_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.nand_chip = type { i32 }

@NAND_CLE = common dso_local global i32 0, align 4
@nand_priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @xlr_nand_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlr_nand_ctrl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NAND_CLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nand_priv, i32 0, i32 1), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nand_priv, i32 0, i32 0), align 4
  %14 = call i32 @FLASH_NAND_CLE(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @nlm_write_reg(i32 %12, i32 %14, i32 %15)
  br label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @NAND_ALE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nand_priv, i32 0, i32 1), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @nand_priv, i32 0, i32 0), align 4
  %25 = call i32 @FLASH_NAND_ALE(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @nlm_write_reg(i32 %23, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  br label %29

29:                                               ; preds = %28, %11
  ret void
}

declare dso_local i32 @nlm_write_reg(i32, i32, i32) #1

declare dso_local i32 @FLASH_NAND_CLE(i32) #1

declare dso_local i32 @FLASH_NAND_ALE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

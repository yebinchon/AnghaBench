; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ath79/extr_common.c_ath79_ddr_ctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ath79/extr_common.c_ath79_ddr_ctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AR71XX_DDR_CTRL_BASE = common dso_local global i32 0, align 4
@AR71XX_DDR_CTRL_SIZE = common dso_local global i32 0, align 4
@ath79_ddr_base = common dso_local global i8* null, align 8
@ath79_ddr_wb_flush_base = common dso_local global i8* null, align 8
@ath79_ddr_pci_win_base = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath79_ddr_ctrl_init() #0 {
  %1 = load i32, i32* @AR71XX_DDR_CTRL_BASE, align 4
  %2 = load i32, i32* @AR71XX_DDR_CTRL_SIZE, align 4
  %3 = call i8* @ioremap_nocache(i32 %1, i32 %2)
  store i8* %3, i8** @ath79_ddr_base, align 8
  %4 = call i64 (...) @soc_is_ar913x()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %0
  %7 = call i64 (...) @soc_is_ar724x()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = call i64 (...) @soc_is_ar933x()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %6, %0
  %13 = load i8*, i8** @ath79_ddr_base, align 8
  %14 = getelementptr i8, i8* %13, i64 124
  store i8* %14, i8** @ath79_ddr_wb_flush_base, align 8
  store i8* null, i8** @ath79_ddr_pci_win_base, align 8
  br label %20

15:                                               ; preds = %9
  %16 = load i8*, i8** @ath79_ddr_base, align 8
  %17 = getelementptr i8, i8* %16, i64 156
  store i8* %17, i8** @ath79_ddr_wb_flush_base, align 8
  %18 = load i8*, i8** @ath79_ddr_base, align 8
  %19 = getelementptr i8, i8* %18, i64 124
  store i8* %19, i8** @ath79_ddr_pci_win_base, align 8
  br label %20

20:                                               ; preds = %15, %12
  ret void
}

declare dso_local i8* @ioremap_nocache(i32, i32) #1

declare dso_local i64 @soc_is_ar913x(...) #1

declare dso_local i64 @soc_is_ar724x(...) #1

declare dso_local i64 @soc_is_ar933x(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

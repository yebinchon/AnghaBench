; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_mips_cdmm.c_mips_cdmm_cur_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_mips_cdmm.c_mips_cdmm_cur_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIPS_CDMMBASE_EN = common dso_local global i64 0, align 8
@MIPS_CDMMBASE_ADDR_SHIFT = common dso_local global i64 0, align 8
@MIPS_CDMMBASE_ADDR_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @mips_cdmm_cur_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mips_cdmm_cur_base() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 (...) @read_c0_cdmmbase()
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @MIPS_CDMMBASE_EN, align 8
  %6 = and i64 %4, %5
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %15

9:                                                ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @MIPS_CDMMBASE_ADDR_SHIFT, align 8
  %12 = lshr i64 %10, %11
  %13 = load i64, i64* @MIPS_CDMMBASE_ADDR_START, align 8
  %14 = shl i64 %12, %13
  store i64 %14, i64* %1, align 8
  br label %15

15:                                               ; preds = %9, %8
  %16 = load i64, i64* %1, align 8
  ret i64 %16
}

declare dso_local i64 @read_c0_cdmmbase(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

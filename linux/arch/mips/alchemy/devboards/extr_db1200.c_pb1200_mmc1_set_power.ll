; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_db1200.c_pb1200_mmc1_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_db1200.c_pb1200_mmc1_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCSR_BOARD = common dso_local global i32 0, align 4
@BCSR_BOARD_SD1PWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pb1200_mmc1_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pb1200_mmc1_set_power(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, i32* @BCSR_BOARD, align 4
  %9 = load i32, i32* @BCSR_BOARD_SD1PWR, align 4
  %10 = call i32 @bcsr_mod(i32 %8, i32 0, i32 %9)
  %11 = call i32 @msleep(i32 400)
  br label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @BCSR_BOARD, align 4
  %14 = load i32, i32* @BCSR_BOARD_SD1PWR, align 4
  %15 = call i32 @bcsr_mod(i32 %13, i32 %14, i32 0)
  br label %16

16:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @bcsr_mod(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

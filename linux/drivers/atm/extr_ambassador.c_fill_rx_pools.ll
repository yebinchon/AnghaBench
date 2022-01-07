; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_fill_rx_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_fill_rx_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_POOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"fill_rx_pools %p\00", align 1
@NUM_RX_POOLS = common dso_local global i8 0, align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @fill_rx_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_rx_pools(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @DBG_FLOW, align 4
  %5 = load i32, i32* @DBG_POOL, align 4
  %6 = or i32 %4, %5
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @PRINTD(i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i8 0, i8* %3, align 1
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @NUM_RX_POOLS, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load i32*, i32** %2, align 8
  %17 = load i8, i8* %3, align 1
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i32 @fill_rx_pool(i32* %16, i8 zeroext %17, i32 %18)
  br label %20

20:                                               ; preds = %15
  %21 = load i8, i8* %3, align 1
  %22 = add i8 %21, 1
  store i8 %22, i8* %3, align 1
  br label %9

23:                                               ; preds = %9
  ret void
}

declare dso_local i32 @PRINTD(i32, i8*, i32*) #1

declare dso_local i32 @fill_rx_pool(i32*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_lp.c_lp_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_lp.c_lp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lp_table = common dso_local global i32* null, align 8
@LP_PSELECP = common dso_local global i32 0, align 4
@LP_DELAY = common dso_local global i32 0, align 4
@LP_PINITP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lp_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @lp_table, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %4, i64 %6
  %8 = call i32 @lp_claim_parport_or_block(i32* %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @LP_PSELECP, align 4
  %11 = call i32 @w_ctr(i32 %9, i32 %10)
  %12 = load i32, i32* @LP_DELAY, align 4
  %13 = call i32 @udelay(i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @LP_PSELECP, align 4
  %16 = load i32, i32* @LP_PINITP, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @w_ctr(i32 %14, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @r_str(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32*, i32** @lp_table, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @lp_release_parport(i32* %24)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @lp_claim_parport_or_block(i32*) #1

declare dso_local i32 @w_ctr(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @r_str(i32) #1

declare dso_local i32 @lp_release_parport(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

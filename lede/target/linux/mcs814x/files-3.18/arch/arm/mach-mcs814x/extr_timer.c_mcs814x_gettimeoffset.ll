; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_timer.c_mcs814x_gettimeoffset.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/arch/arm/mach-mcs814x/extr_timer.c_mcs814x_gettimeoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mcs814x_timer_base = common dso_local global i64 0, align 8
@TIMER_VAL = common dso_local global i64 0, align 8
@last_reload = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mcs814x_gettimeoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs814x_gettimeoffset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @mcs814x_timer_base, align 8
  %4 = load i64, i64* @TIMER_VAL, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @readl_relaxed(i64 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @last_reload, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @last_reload, align 4
  %13 = sub i32 -1, %12
  %14 = add nsw i32 %11, %13
  %15 = call i32 @ticks2usecs(i32 %14)
  store i32 %15, i32* %1, align 4
  br label %21

16:                                               ; preds = %0
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @last_reload, align 4
  %19 = sub nsw i32 %17, %18
  %20 = call i32 @ticks2usecs(i32 %19)
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @ticks2usecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

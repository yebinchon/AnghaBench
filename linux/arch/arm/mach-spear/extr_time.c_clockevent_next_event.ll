; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-spear/extr_time.c_clockevent_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-spear/extr_time.c_clockevent_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@gpt_base = common dso_local global i64 0, align 8
@CLKEVT = common dso_local global i32 0, align 4
@CTRL_ENABLE = common dso_local global i32 0, align 4
@CTRL_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @clockevent_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clockevent_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load i64, i64* @gpt_base, align 8
  %7 = load i32, i32* @CLKEVT, align 4
  %8 = call i64 @CR(i32 %7)
  %9 = add nsw i64 %6, %8
  %10 = call i32 @readw(i64 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CTRL_ENABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CTRL_ENABLE, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i64, i64* @gpt_base, align 8
  %21 = load i32, i32* @CLKEVT, align 4
  %22 = call i64 @CR(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = call i32 @writew(i32 %19, i64 %23)
  br label %25

25:                                               ; preds = %15, %2
  %26 = load i64, i64* %3, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* @gpt_base, align 8
  %29 = load i32, i32* @CLKEVT, align 4
  %30 = call i64 @LOAD(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = call i32 @writew(i32 %27, i64 %31)
  %33 = load i32, i32* @CTRL_ENABLE, align 4
  %34 = load i32, i32* @CTRL_INT_ENABLE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i64, i64* @gpt_base, align 8
  %40 = load i32, i32* @CLKEVT, align 4
  %41 = call i64 @CR(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = call i32 @writew(i32 %38, i64 %42)
  ret i32 0
}

declare dso_local i32 @readw(i64) #1

declare dso_local i64 @CR(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i64 @LOAD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

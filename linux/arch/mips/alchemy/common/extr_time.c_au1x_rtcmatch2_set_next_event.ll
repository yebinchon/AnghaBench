; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_time.c_au1x_rtcmatch2_set_next_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_time.c_au1x_rtcmatch2_set_next_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@AU1000_SYS_RTCREAD = common dso_local global i32 0, align 4
@AU1000_SYS_CNTRCTRL = common dso_local global i32 0, align 4
@SYS_CNTRL_M21 = common dso_local global i32 0, align 4
@AU1000_SYS_RTCMATCH2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @au1x_rtcmatch2_set_next_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1x_rtcmatch2_set_next_event(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %5 = load i32, i32* @AU1000_SYS_RTCREAD, align 4
  %6 = call i32 @alchemy_rdsys(i32 %5)
  %7 = sext i32 %6 to i64
  %8 = load i64, i64* %3, align 8
  %9 = add i64 %8, %7
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %16, %2
  %11 = load i32, i32* @AU1000_SYS_CNTRCTRL, align 4
  %12 = call i32 @alchemy_rdsys(i32 %11)
  %13 = load i32, i32* @SYS_CNTRL_M21, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %10

17:                                               ; preds = %10
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* @AU1000_SYS_RTCMATCH2, align 4
  %20 = call i32 @alchemy_wrsys(i64 %18, i32 %19)
  ret i32 0
}

declare dso_local i32 @alchemy_rdsys(i32) #1

declare dso_local i32 @alchemy_wrsys(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

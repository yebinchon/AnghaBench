; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clock_event_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clock_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_channel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FLAG_CLOCKEVENT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_cmt_channel*, i32)* @sh_cmt_clock_event_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_cmt_clock_event_start(%struct.sh_cmt_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_cmt_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.sh_cmt_channel* %0, %struct.sh_cmt_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %6 = load i32, i32* @FLAG_CLOCKEVENT, align 4
  %7 = call i32 @sh_cmt_start(%struct.sh_cmt_channel* %5, i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %12 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %13 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HZ, align 4
  %18 = sdiv i32 %17, 2
  %19 = add nsw i32 %16, %18
  %20 = load i32, i32* @HZ, align 4
  %21 = sdiv i32 %19, %20
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @sh_cmt_set_next(%struct.sh_cmt_channel* %11, i32 %22)
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %26 = load %struct.sh_cmt_channel*, %struct.sh_cmt_channel** %3, align 8
  %27 = getelementptr inbounds %struct.sh_cmt_channel, %struct.sh_cmt_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sh_cmt_set_next(%struct.sh_cmt_channel* %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @sh_cmt_start(%struct.sh_cmt_channel*, i32) #1

declare dso_local i32 @sh_cmt_set_next(%struct.sh_cmt_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

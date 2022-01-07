; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_mtu2.c_sh_mtu2_start_stop_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_mtu2.c_sh_mtu2_start_stop_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mtu2_channel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mtu2_channel*, i32)* @sh_mtu2_start_stop_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mtu2_start_stop_ch(%struct.sh_mtu2_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_mtu2_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sh_mtu2_channel* %0, %struct.sh_mtu2_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %8 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @raw_spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %14 = load i32, i32* @TSTR, align 4
  %15 = call i64 @sh_mtu2_read(%struct.sh_mtu2_channel* %13, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %20 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 1, %21
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %6, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %6, align 8
  br label %35

26:                                               ; preds = %2
  %27 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %28 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 1, %29
  %31 = xor i32 %30, -1
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %6, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %26, %18
  %36 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %37 = load i32, i32* @TSTR, align 4
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @sh_mtu2_write(%struct.sh_mtu2_channel* %36, i32 %37, i64 %38)
  %40 = load %struct.sh_mtu2_channel*, %struct.sh_mtu2_channel** %3, align 8
  %41 = getelementptr inbounds %struct.sh_mtu2_channel, %struct.sh_mtu2_channel* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @raw_spin_unlock_irqrestore(i32* %43, i64 %44)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sh_mtu2_read(%struct.sh_mtu2_channel*, i32) #1

declare dso_local i32 @sh_mtu2_write(%struct.sh_mtu2_channel*, i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

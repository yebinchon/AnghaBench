; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_mib_start.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_mib_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@AR8XXX_MIB_WORK_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*)* @ar8xxx_mib_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8xxx_mib_start(%struct.ar8xxx_priv* %0) #0 {
  %2 = alloca %struct.ar8xxx_priv*, align 8
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %2, align 8
  %3 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %4 = call i32 @ar8xxx_has_mib_counters(%struct.ar8xxx_priv* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %13

7:                                                ; preds = %1
  %8 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %9 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %8, i32 0, i32 0
  %10 = load i32, i32* @AR8XXX_MIB_WORK_DELAY, align 4
  %11 = call i32 @msecs_to_jiffies(i32 %10)
  %12 = call i32 @schedule_delayed_work(i32* %9, i32 %11)
  br label %13

13:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @ar8xxx_has_mib_counters(%struct.ar8xxx_priv*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_suni.c_suni_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_suni.c_suni_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.suni_priv = type { %struct.suni_priv*, %struct.atm_dev* }
%struct.atm_dev = type { i32 }

@sunis_lock = common dso_local global i32 0, align 4
@sunis = common dso_local global %struct.suni_priv* null, align 8
@poll_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*)* @suni_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suni_stop(%struct.atm_dev* %0) #0 {
  %2 = alloca %struct.atm_dev*, align 8
  %3 = alloca %struct.suni_priv**, align 8
  %4 = alloca i64, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @sunis_lock, i64 %5)
  store %struct.suni_priv** @sunis, %struct.suni_priv*** %3, align 8
  br label %7

7:                                                ; preds = %14, %1
  %8 = load %struct.suni_priv**, %struct.suni_priv*** %3, align 8
  %9 = load %struct.suni_priv*, %struct.suni_priv** %8, align 8
  %10 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %11 = call %struct.suni_priv* @PRIV(%struct.atm_dev* %10)
  %12 = icmp ne %struct.suni_priv* %9, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.suni_priv**, %struct.suni_priv*** %3, align 8
  %16 = load %struct.suni_priv*, %struct.suni_priv** %15, align 8
  %17 = getelementptr inbounds %struct.suni_priv, %struct.suni_priv* %16, i32 0, i32 1
  %18 = load %struct.atm_dev*, %struct.atm_dev** %17, align 8
  %19 = call %struct.suni_priv* @PRIV(%struct.atm_dev* %18)
  %20 = getelementptr inbounds %struct.suni_priv, %struct.suni_priv* %19, i32 0, i32 0
  store %struct.suni_priv** %20, %struct.suni_priv*** %3, align 8
  br label %7

21:                                               ; preds = %7
  %22 = load %struct.suni_priv**, %struct.suni_priv*** %3, align 8
  %23 = load %struct.suni_priv*, %struct.suni_priv** %22, align 8
  %24 = getelementptr inbounds %struct.suni_priv, %struct.suni_priv* %23, i32 0, i32 1
  %25 = load %struct.atm_dev*, %struct.atm_dev** %24, align 8
  %26 = call %struct.suni_priv* @PRIV(%struct.atm_dev* %25)
  %27 = getelementptr inbounds %struct.suni_priv, %struct.suni_priv* %26, i32 0, i32 0
  %28 = load %struct.suni_priv*, %struct.suni_priv** %27, align 8
  %29 = load %struct.suni_priv**, %struct.suni_priv*** %3, align 8
  store %struct.suni_priv* %28, %struct.suni_priv** %29, align 8
  %30 = load %struct.suni_priv*, %struct.suni_priv** @sunis, align 8
  %31 = icmp ne %struct.suni_priv* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = call i32 @del_timer_sync(i32* @poll_timer)
  br label %34

34:                                               ; preds = %32, %21
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* @sunis_lock, i64 %35)
  %37 = load %struct.atm_dev*, %struct.atm_dev** %2, align 8
  %38 = call %struct.suni_priv* @PRIV(%struct.atm_dev* %37)
  %39 = call i32 @kfree(%struct.suni_priv* %38)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.suni_priv* @PRIV(%struct.atm_dev*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.suni_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

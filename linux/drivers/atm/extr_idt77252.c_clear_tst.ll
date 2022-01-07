; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_clear_tst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_clear_tst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32, i32 }
%struct.vc_map = type { i32 }

@TST_SWITCH_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*, %struct.vc_map*)* @clear_tst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_tst(%struct.idt77252_dev* %0, %struct.vc_map* %1) #0 {
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca %struct.vc_map*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  store %struct.vc_map* %1, %struct.vc_map** %4, align 8
  %7 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %8 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %12 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %13 = call i32 @__clear_tst(%struct.idt77252_dev* %11, %struct.vc_map* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @TST_SWITCH_PENDING, align 4
  %15 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %16 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %15, i32 0, i32 2
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %19 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %18, i32 0, i32 1
  %20 = call i32 @timer_pending(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %24 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %23, i32 0, i32 1
  %25 = load i64, i64* @jiffies, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @mod_timer(i32* %24, i64 %26)
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %30 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__clear_tst(%struct.idt77252_dev*, %struct.vc_map*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_change_tst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_change_tst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32, i32 }
%struct.vc_map = type { i32 }

@TST_SWITCH_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*, %struct.vc_map*, i32, i32)* @change_tst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_tst(%struct.idt77252_dev* %0, %struct.vc_map* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.idt77252_dev*, align 8
  %6 = alloca %struct.vc_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %5, align 8
  store %struct.vc_map* %1, %struct.vc_map** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %12 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %16 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %17 = call i32 @__clear_tst(%struct.idt77252_dev* %15, %struct.vc_map* %16)
  %18 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %19 = load %struct.vc_map*, %struct.vc_map** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @__fill_tst(%struct.idt77252_dev* %18, %struct.vc_map* %19, i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @TST_SWITCH_PENDING, align 4
  %24 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %25 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %24, i32 0, i32 2
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %28 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %27, i32 0, i32 1
  %29 = call i32 @timer_pending(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %4
  %32 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %33 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %32, i32 0, i32 1
  %34 = load i64, i64* @jiffies, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @mod_timer(i32* %33, i64 %35)
  br label %37

37:                                               ; preds = %31, %4
  %38 = load %struct.idt77252_dev*, %struct.idt77252_dev** %5, align 8
  %39 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %10, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__clear_tst(%struct.idt77252_dev*, %struct.vc_map*) #1

declare dso_local i32 @__fill_tst(%struct.idt77252_dev*, %struct.vc_map*, i32, i32) #1

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

; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-footbridge/extr_dc21285.c_dc21285_enable_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-footbridge/extr_dc21285.c_dc21285_enable_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }

@serr_timer = common dso_local global %struct.timer_list zeroinitializer, align 4
@IRQ_PCI_SERR = common dso_local global i32 0, align 4
@perr_timer = common dso_local global %struct.timer_list zeroinitializer, align 4
@IRQ_PCI_PERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @dc21285_enable_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc21285_enable_error(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %3 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %4 = call i32 @del_timer(%struct.timer_list* %3)
  %5 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %6 = icmp eq %struct.timer_list* %5, @serr_timer
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @IRQ_PCI_SERR, align 4
  %9 = call i32 @enable_irq(i32 %8)
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = icmp eq %struct.timer_list* %11, @perr_timer
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @IRQ_PCI_PERR, align 4
  %15 = call i32 @enable_irq(i32 %14)
  br label %16

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32 @del_timer(%struct.timer_list*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

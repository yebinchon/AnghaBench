; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c_del_virt_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_vtime.c_del_virt_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtimer_list = type { i32 }

@virt_timer_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @del_virt_timer(%struct.vtimer_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtimer_list*, align 8
  %4 = alloca i64, align 8
  store %struct.vtimer_list* %0, %struct.vtimer_list** %3, align 8
  %5 = load %struct.vtimer_list*, %struct.vtimer_list** %3, align 8
  %6 = call i32 @vtimer_pending(%struct.vtimer_list* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

9:                                                ; preds = %1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @virt_timer_lock, i64 %10)
  %12 = load %struct.vtimer_list*, %struct.vtimer_list** %3, align 8
  %13 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %12, i32 0, i32 0
  %14 = call i32 @list_del_init(i32* %13)
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* @virt_timer_lock, i64 %15)
  store i32 1, i32* %2, align 4
  br label %17

17:                                               ; preds = %9, %8
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @vtimer_pending(%struct.vtimer_list*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_free_irq_by_fd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_free_irq_by_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_entry = type { i32 }

@irq_lock = common dso_local global i32 0, align 4
@IGNORE_IRQ = common dso_local global i32 0, align 4
@IGNORE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_irq_by_fd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_entry*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @irq_lock, i64 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.irq_entry* @get_irq_entry_by_fd(i32 %7)
  store %struct.irq_entry* %8, %struct.irq_entry** %3, align 8
  %9 = load %struct.irq_entry*, %struct.irq_entry** %3, align 8
  %10 = icmp ne %struct.irq_entry* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.irq_entry*, %struct.irq_entry** %3, align 8
  %13 = load i32, i32* @IGNORE_IRQ, align 4
  %14 = load i32, i32* @IGNORE_DEV, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @do_free_by_irq_and_dev(%struct.irq_entry* %12, i32 -1, i32* null, i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = call i32 (...) @garbage_collect_irq_entries()
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @irq_lock, i64 %19)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.irq_entry* @get_irq_entry_by_fd(i32) #1

declare dso_local i32 @do_free_by_irq_and_dev(%struct.irq_entry*, i32, i32*, i32) #1

declare dso_local i32 @garbage_collect_irq_entries(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

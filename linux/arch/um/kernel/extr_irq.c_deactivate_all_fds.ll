; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_deactivate_all_fds.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_deactivate_all_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_entry = type { %struct.irq_entry* }

@active_fds = common dso_local global %struct.irq_entry* null, align 8
@IGNORE_IRQ = common dso_local global i32 0, align 4
@IGNORE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deactivate_all_fds() #0 {
  %1 = alloca %struct.irq_entry*, align 8
  %2 = call i32 (...) @os_set_ioignore()
  %3 = load %struct.irq_entry*, %struct.irq_entry** @active_fds, align 8
  store %struct.irq_entry* %3, %struct.irq_entry** %1, align 8
  br label %4

4:                                                ; preds = %7, %0
  %5 = load %struct.irq_entry*, %struct.irq_entry** %1, align 8
  %6 = icmp ne %struct.irq_entry* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load %struct.irq_entry*, %struct.irq_entry** %1, align 8
  %9 = load i32, i32* @IGNORE_IRQ, align 4
  %10 = load i32, i32* @IGNORE_DEV, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @do_free_by_irq_and_dev(%struct.irq_entry* %8, i32 -1, i32* null, i32 %11)
  %13 = load %struct.irq_entry*, %struct.irq_entry** %1, align 8
  %14 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %13, i32 0, i32 0
  %15 = load %struct.irq_entry*, %struct.irq_entry** %14, align 8
  store %struct.irq_entry* %15, %struct.irq_entry** %1, align 8
  br label %4

16:                                               ; preds = %4
  %17 = call i32 (...) @os_close_epoll_fd()
  ret i32 0
}

declare dso_local i32 @os_set_ioignore(...) #1

declare dso_local i32 @do_free_by_irq_and_dev(%struct.irq_entry*, i32, i32*, i32) #1

declare dso_local i32 @os_close_epoll_fd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

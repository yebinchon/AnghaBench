; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_assign_epoll_events_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_assign_epoll_events_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_entry = type { i32, %struct.irq_fd** }
%struct.irq_fd = type { i32 }

@MAX_IRQ_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_entry*)* @assign_epoll_events_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_epoll_events_to_irq(%struct.irq_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_fd*, align 8
  store %struct.irq_entry* %0, %struct.irq_entry** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MAX_IRQ_TYPE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load %struct.irq_entry*, %struct.irq_entry** %3, align 8
  %13 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %12, i32 0, i32 1
  %14 = load %struct.irq_fd**, %struct.irq_fd*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.irq_fd*, %struct.irq_fd** %14, i64 %16
  %18 = load %struct.irq_fd*, %struct.irq_fd** %17, align 8
  store %struct.irq_fd* %18, %struct.irq_fd** %6, align 8
  %19 = load %struct.irq_fd*, %struct.irq_fd** %6, align 8
  %20 = icmp ne %struct.irq_fd* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load %struct.irq_fd*, %struct.irq_fd** %6, align 8
  %23 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %21, %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %7

31:                                               ; preds = %7
  %32 = load i32, i32* %5, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.irq_entry*, %struct.irq_entry** %3, align 8
  %37 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.irq_entry*, %struct.irq_entry** %3, align 8
  %40 = call i32 @os_add_epoll_fd(i32 %35, i32 %38, %struct.irq_entry* %39)
  store i32 %40, i32* %2, align 4
  br label %46

41:                                               ; preds = %31
  %42 = load %struct.irq_entry*, %struct.irq_entry** %3, align 8
  %43 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @os_del_epoll_fd(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %34
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @os_add_epoll_fd(i32, i32, %struct.irq_entry*) #1

declare dso_local i32 @os_del_epoll_fd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

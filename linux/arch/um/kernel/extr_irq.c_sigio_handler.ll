; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_sigio_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_sigio_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siginfo = type { i32 }
%struct.uml_pt_regs = type { i32 }
%struct.irq_entry = type { %struct.irq_fd** }
%struct.irq_fd = type { i64, i32 }

@EINTR = common dso_local global i32 0, align 4
@MAX_IRQ_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigio_handler(i32 %0, %struct.siginfo* %1, %struct.uml_pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.siginfo*, align 8
  %6 = alloca %struct.uml_pt_regs*, align 8
  %7 = alloca %struct.irq_entry*, align 8
  %8 = alloca %struct.irq_fd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.siginfo* %1, %struct.siginfo** %5, align 8
  store %struct.uml_pt_regs* %2, %struct.uml_pt_regs** %6, align 8
  br label %12

12:                                               ; preds = %3, %21, %80
  %13 = call i32 (...) @os_waiting_for_events_epoll()
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @EINTR, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %12

22:                                               ; preds = %16
  br label %81

23:                                               ; preds = %12
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %77, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %24
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @os_epoll_get_data_pointer(i32 %29)
  %31 = inttoptr i64 %30 to %struct.irq_entry*
  store %struct.irq_entry* %31, %struct.irq_entry** %7, align 8
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %73, %28
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @MAX_IRQ_TYPE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %32
  %37 = load %struct.irq_entry*, %struct.irq_entry** %7, align 8
  %38 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %37, i32 0, i32 0
  %39 = load %struct.irq_fd**, %struct.irq_fd*** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.irq_fd*, %struct.irq_fd** %39, i64 %41
  %43 = load %struct.irq_fd*, %struct.irq_fd** %42, align 8
  store %struct.irq_fd* %43, %struct.irq_fd** %8, align 8
  %44 = load %struct.irq_fd*, %struct.irq_fd** %8, align 8
  %45 = icmp eq %struct.irq_fd* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %73

47:                                               ; preds = %36
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.irq_fd*, %struct.irq_fd** %8, align 8
  %50 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @os_epoll_triggered(i32 %48, i32 %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.irq_fd*, %struct.irq_fd** %8, align 8
  %56 = load %struct.uml_pt_regs*, %struct.uml_pt_regs** %6, align 8
  %57 = call i32 @irq_io_loop(%struct.irq_fd* %55, %struct.uml_pt_regs* %56)
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.irq_fd*, %struct.irq_fd** %8, align 8
  %60 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.irq_entry*, %struct.irq_entry** %7, align 8
  %65 = getelementptr inbounds %struct.irq_entry, %struct.irq_entry* %64, i32 0, i32 0
  %66 = load %struct.irq_fd**, %struct.irq_fd*** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.irq_fd*, %struct.irq_fd** %66, i64 %68
  store %struct.irq_fd* null, %struct.irq_fd** %69, align 8
  %70 = load %struct.irq_fd*, %struct.irq_fd** %8, align 8
  %71 = call i32 @kfree(%struct.irq_fd* %70)
  br label %72

72:                                               ; preds = %63, %58
  br label %73

73:                                               ; preds = %72, %46
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %32

76:                                               ; preds = %32
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %24

80:                                               ; preds = %24
  br label %12

81:                                               ; preds = %22
  %82 = call i32 (...) @free_irqs()
  ret void
}

declare dso_local i32 @os_waiting_for_events_epoll(...) #1

declare dso_local i64 @os_epoll_get_data_pointer(i32) #1

declare dso_local i64 @os_epoll_triggered(i32, i32) #1

declare dso_local i32 @irq_io_loop(%struct.irq_fd*, %struct.uml_pt_regs*) #1

declare dso_local i32 @kfree(%struct.irq_fd*) #1

declare dso_local i32 @free_irqs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

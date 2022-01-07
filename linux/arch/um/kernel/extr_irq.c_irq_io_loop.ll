; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_irq_io_loop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_irq.c_irq_io_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_fd = type { i32, i32, i32, i32 }
%struct.uml_pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_fd*, %struct.uml_pt_regs*)* @irq_io_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_io_loop(%struct.irq_fd* %0, %struct.uml_pt_regs* %1) #0 {
  %3 = alloca %struct.irq_fd*, align 8
  %4 = alloca %struct.uml_pt_regs*, align 8
  store %struct.irq_fd* %0, %struct.irq_fd** %3, align 8
  store %struct.uml_pt_regs* %1, %struct.uml_pt_regs** %4, align 8
  %5 = load %struct.irq_fd*, %struct.irq_fd** %3, align 8
  %6 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = load %struct.irq_fd*, %struct.irq_fd** %3, align 8
  %11 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %31, %9
  %13 = load %struct.irq_fd*, %struct.irq_fd** %3, align 8
  %14 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.irq_fd*, %struct.irq_fd** %3, align 8
  %16 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.uml_pt_regs*, %struct.uml_pt_regs** %4, align 8
  %19 = call i32 @do_IRQ(i32 %17, %struct.uml_pt_regs* %18)
  br label %20

20:                                               ; preds = %12
  %21 = load %struct.irq_fd*, %struct.irq_fd** %3, align 8
  %22 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.irq_fd*, %struct.irq_fd** %3, align 8
  %27 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %25, %20
  %32 = phi i1 [ false, %20 ], [ %30, %25 ]
  br i1 %32, label %12, label %33

33:                                               ; preds = %31
  %34 = load %struct.irq_fd*, %struct.irq_fd** %3, align 8
  %35 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load %struct.irq_fd*, %struct.irq_fd** %3, align 8
  %40 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %33
  br label %45

42:                                               ; preds = %2
  %43 = load %struct.irq_fd*, %struct.irq_fd** %3, align 8
  %44 = getelementptr inbounds %struct.irq_fd, %struct.irq_fd* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %41
  ret void
}

declare dso_local i32 @do_IRQ(i32, %struct.uml_pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

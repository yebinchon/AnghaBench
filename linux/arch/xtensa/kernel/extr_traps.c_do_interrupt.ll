; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_traps.c_do_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_traps.c_do_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@do_interrupt.int_level_mask = internal constant [8 x i32] [i32 0, i32 134, i32 133, i32 132, i32 131, i32 130, i32 129, i32 128], align 16
@interrupt = common dso_local global i32 0, align 4
@LOCKLEVEL = common dso_local global i32 0, align 4
@intenable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_interrupt(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %8 = call i32 (...) @trace_hardirqs_off()
  %9 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %10 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %9)
  store %struct.pt_regs* %10, %struct.pt_regs** %3, align 8
  %11 = call i32 (...) @irq_enter()
  br label %12

12:                                               ; preds = %47, %1
  %13 = load i32, i32* @interrupt, align 4
  %14 = call i32 @xtensa_get_sr(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @xtensa_get_sr(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @LOCKLEVEL, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %40, %12
  %22 = load i32, i32* %7, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* @do_interrupt.int_level_mask, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %25, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* @do_interrupt.int_level_mask, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %43

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %7, align 4
  br label %21

43:                                               ; preds = %32, %21
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @__ffs(i32 %48)
  %50 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %51 = call i32 @do_IRQ(i32 %49, %struct.pt_regs* %50)
  br label %12

52:                                               ; preds = %46
  %53 = call i32 (...) @irq_exit()
  %54 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %55 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %54)
  ret void
}

declare dso_local i32 @trace_hardirqs_off(...) #1

declare dso_local %struct.pt_regs* @set_irq_regs(%struct.pt_regs*) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i32 @xtensa_get_sr(i32) #1

declare dso_local i32 @do_IRQ(i32, %struct.pt_regs*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @irq_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

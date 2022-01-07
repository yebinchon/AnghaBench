; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_irq.c_do_IRQ.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_irq.c_do_IRQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@THREAD_SIZE = common dso_local global i32 0, align 4
@hardirq_ctx = common dso_local global i8** null, align 8
@softirq_ctx = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_IRQ(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %7)
  store %struct.pt_regs* %8, %struct.pt_regs** %3, align 8
  %9 = call i32 (...) @current_stack_pointer()
  %10 = load i32, i32* @THREAD_SIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %4, align 8
  %16 = load i8**, i8*** @hardirq_ctx, align 8
  %17 = call i64 (...) @raw_smp_processor_id()
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  %20 = load i8**, i8*** @softirq_ctx, align 8
  %21 = call i64 (...) @raw_smp_processor_id()
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp eq i8* %28, %29
  br label %31

31:                                               ; preds = %27, %1
  %32 = phi i1 [ true, %1 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %38 = call i32 @__do_irq(%struct.pt_regs* %37)
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %39)
  br label %47

41:                                               ; preds = %31
  %42 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @call_do_irq(%struct.pt_regs* %42, i8* %43)
  %45 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %46 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %45)
  br label %47

47:                                               ; preds = %41, %36
  ret void
}

declare dso_local %struct.pt_regs* @set_irq_regs(%struct.pt_regs*) #1

declare dso_local i32 @current_stack_pointer(...) #1

declare dso_local i64 @raw_smp_processor_id(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__do_irq(%struct.pt_regs*) #1

declare dso_local i32 @call_do_irq(%struct.pt_regs*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sun4d_irq.c_sun4d_handler_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sun4d_irq.c_sun4d_handler_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_bucket = type { i32, %struct.irq_bucket* }
%struct.pt_regs = type { i32 }

@pil_to_sbus = common dso_local global i32* null, align 8
@irq_map = common dso_local global %struct.irq_bucket** null, align 8
@SUN4D_IPI_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun4d_handler_irq(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_bucket*, align 8
  %8 = alloca %struct.irq_bucket*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %9 = load i32*, i32** @pil_to_sbus, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = call i32 (...) @cc_get_ipen()
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 1, %15
  %17 = call i32 @cc_set_iclr(i32 %16)
  %18 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %19 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %18)
  store %struct.pt_regs* %19, %struct.pt_regs** %5, align 8
  %20 = call i32 (...) @irq_enter()
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %2
  %24 = load %struct.irq_bucket**, %struct.irq_bucket*** @irq_map, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.irq_bucket*, %struct.irq_bucket** %24, i64 %26
  %28 = load %struct.irq_bucket*, %struct.irq_bucket** %27, align 8
  store %struct.irq_bucket* %28, %struct.irq_bucket** %7, align 8
  br label %29

29:                                               ; preds = %32, %23
  %30 = load %struct.irq_bucket*, %struct.irq_bucket** %7, align 8
  %31 = icmp ne %struct.irq_bucket* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.irq_bucket*, %struct.irq_bucket** %7, align 8
  %34 = getelementptr inbounds %struct.irq_bucket, %struct.irq_bucket* %33, i32 0, i32 1
  %35 = load %struct.irq_bucket*, %struct.irq_bucket** %34, align 8
  store %struct.irq_bucket* %35, %struct.irq_bucket** %8, align 8
  %36 = load %struct.irq_bucket*, %struct.irq_bucket** %7, align 8
  %37 = getelementptr inbounds %struct.irq_bucket, %struct.irq_bucket* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @generic_handle_irq(i32 %38)
  %40 = load %struct.irq_bucket*, %struct.irq_bucket** %8, align 8
  store %struct.irq_bucket* %40, %struct.irq_bucket** %7, align 8
  br label %29

41:                                               ; preds = %29
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @sun4d_sbus_handler_irq(i32 %43)
  br label %45

45:                                               ; preds = %42, %41
  %46 = call i32 (...) @irq_exit()
  %47 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %48 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %47)
  ret void
}

declare dso_local i32 @cc_get_ipen(...) #1

declare dso_local i32 @cc_set_iclr(i32) #1

declare dso_local %struct.pt_regs* @set_irq_regs(%struct.pt_regs*) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @sun4d_sbus_handler_irq(i32) #1

declare dso_local i32 @irq_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

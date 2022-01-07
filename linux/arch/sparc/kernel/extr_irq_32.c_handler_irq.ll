; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_32.c_handler_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_32.c_handler_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_bucket = type { i32, %struct.irq_bucket* }
%struct.pt_regs = type { i32 }

@irq_map = common dso_local global %struct.irq_bucket** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handler_irq(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.irq_bucket*, align 8
  %7 = alloca %struct.irq_bucket*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp ugt i32 %8, 15
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %12)
  store %struct.pt_regs* %13, %struct.pt_regs** %5, align 8
  %14 = call i32 (...) @irq_enter()
  %15 = load %struct.irq_bucket**, %struct.irq_bucket*** @irq_map, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.irq_bucket*, %struct.irq_bucket** %15, i64 %17
  %19 = load %struct.irq_bucket*, %struct.irq_bucket** %18, align 8
  store %struct.irq_bucket* %19, %struct.irq_bucket** %6, align 8
  br label %20

20:                                               ; preds = %23, %2
  %21 = load %struct.irq_bucket*, %struct.irq_bucket** %6, align 8
  %22 = icmp ne %struct.irq_bucket* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.irq_bucket*, %struct.irq_bucket** %6, align 8
  %25 = getelementptr inbounds %struct.irq_bucket, %struct.irq_bucket* %24, i32 0, i32 1
  %26 = load %struct.irq_bucket*, %struct.irq_bucket** %25, align 8
  store %struct.irq_bucket* %26, %struct.irq_bucket** %7, align 8
  %27 = load %struct.irq_bucket*, %struct.irq_bucket** %6, align 8
  %28 = getelementptr inbounds %struct.irq_bucket, %struct.irq_bucket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @generic_handle_irq(i32 %29)
  %31 = load %struct.irq_bucket*, %struct.irq_bucket** %7, align 8
  store %struct.irq_bucket* %31, %struct.irq_bucket** %6, align 8
  br label %20

32:                                               ; preds = %20
  %33 = call i32 (...) @irq_exit()
  %34 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %35 = call %struct.pt_regs* @set_irq_regs(%struct.pt_regs* %34)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.pt_regs* @set_irq_regs(%struct.pt_regs*) #1

declare dso_local i32 @irq_enter(...) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

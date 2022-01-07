; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_bast-irq.c_bast_irq_pc104_demux.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_bast-irq.c_bast_irq_pc104_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@BAST_VA_PC104_IRQREQ = common dso_local global i32 0, align 4
@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@BAST_IRQ_ISA = common dso_local global i32 0, align 4
@bast_pc104_irqs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @bast_irq_pc104_demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bast_irq_pc104_demux(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load i32, i32* @BAST_VA_PC104_IRQREQ, align 4
  %7 = call i32 @__raw_readb(i32 %6)
  %8 = and i32 %7, 15
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %16 = load i32, i32* @BAST_IRQ_ISA, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i64 %17
  store %struct.irq_desc* %18, %struct.irq_desc** %2, align 8
  %19 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %23, align 8
  %25 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %26 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %25, i32 0, i32 0
  %27 = call i32 %24(%struct.TYPE_4__* %26)
  br label %51

28:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32*, i32** @bast_pc104_irqs, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @generic_handle_irq(i32 %42)
  br label %44

44:                                               ; preds = %36, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %3, align 4
  %49 = lshr i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %29

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50, %14
  ret void
}

declare dso_local i32 @__raw_readb(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

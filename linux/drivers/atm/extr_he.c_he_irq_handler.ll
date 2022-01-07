; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_dev = type { i32*, i32, i32, %struct.he_irq*, %struct.he_irq*, i64 }
%struct.he_irq = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"tailoffset not updated?\0A\00", align 1
@IRQ0_BASE = common dso_local global i32 0, align 4
@IRQ_MASK = common dso_local global i32 0, align 4
@INT_FIFO = common dso_local global i32 0, align 4
@INT_CLEAR_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @he_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @he_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.he_dev*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.he_dev*
  store %struct.he_dev* %10, %struct.he_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %12 = icmp eq %struct.he_dev* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %3, align 4
  br label %85

15:                                               ; preds = %2
  %16 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %17 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %21 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %24 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = or i64 %22, %28
  %30 = inttoptr i64 %29 to %struct.he_irq*
  %31 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %32 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %31, i32 0, i32 3
  store %struct.he_irq* %30, %struct.he_irq** %32, align 8
  %33 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %34 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %33, i32 0, i32 3
  %35 = load %struct.he_irq*, %struct.he_irq** %34, align 8
  %36 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %37 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %36, i32 0, i32 4
  %38 = load %struct.he_irq*, %struct.he_irq** %37, align 8
  %39 = icmp eq %struct.he_irq* %35, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %15
  %41 = call i32 @HPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %43 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %46 = load i32, i32* @IRQ0_BASE, align 4
  %47 = call i32 @he_readl(%struct.he_dev* %45, i32 %46)
  %48 = load i32, i32* @IRQ_MASK, align 4
  %49 = and i32 %47, %48
  %50 = shl i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = or i64 %44, %51
  %53 = inttoptr i64 %52 to %struct.he_irq*
  %54 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %55 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %54, i32 0, i32 3
  store %struct.he_irq* %53, %struct.he_irq** %55, align 8
  %56 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %57 = load i32, i32* @INT_FIFO, align 4
  %58 = call i32 @he_readl(%struct.he_dev* %56, i32 %57)
  br label %59

59:                                               ; preds = %40, %15
  %60 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %61 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %60, i32 0, i32 4
  %62 = load %struct.he_irq*, %struct.he_irq** %61, align 8
  %63 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %64 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %63, i32 0, i32 3
  %65 = load %struct.he_irq*, %struct.he_irq** %64, align 8
  %66 = icmp ne %struct.he_irq* %62, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  store i32 1, i32* %8, align 4
  %68 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %69 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %68, i32 0, i32 2
  %70 = call i32 @tasklet_schedule(i32* %69)
  %71 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %72 = load i32, i32* @INT_CLEAR_A, align 4
  %73 = load i32, i32* @INT_FIFO, align 4
  %74 = call i32 @he_writel(%struct.he_dev* %71, i32 %72, i32 %73)
  %75 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %76 = load i32, i32* @INT_FIFO, align 4
  %77 = call i32 @he_readl(%struct.he_dev* %75, i32 %76)
  br label %78

78:                                               ; preds = %67, %59
  %79 = load %struct.he_dev*, %struct.he_dev** %7, align 8
  %80 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %79, i32 0, i32 1
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @IRQ_RETVAL(i32 %83)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %13
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HPRINTK(i8*) #1

declare dso_local i32 @he_readl(%struct.he_dev*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @he_writel(%struct.he_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

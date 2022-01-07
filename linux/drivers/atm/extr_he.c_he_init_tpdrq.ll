; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_tpdrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_he.c_he_init_tpdrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_dev = type { i32, i32*, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CONFIG_TPDRQ_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to alloc tpdrq\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TPDRQ_B_H = common dso_local global i32 0, align 4
@TPDRQ_T = common dso_local global i32 0, align 4
@TPDRQ_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.he_dev*)* @he_init_tpdrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @he_init_tpdrq(%struct.he_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.he_dev*, align 8
  store %struct.he_dev* %0, %struct.he_dev** %3, align 8
  %4 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %5 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %4, i32 0, i32 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* @CONFIG_TPDRQ_SIZE, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %13 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @dma_alloc_coherent(i32* %7, i32 %11, i32* %13, i32 %14)
  %16 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %17 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %19 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = call i32 @hprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %51

26:                                               ; preds = %1
  %27 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %28 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %31 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %33 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %36 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %38 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %39 = getelementptr inbounds %struct.he_dev, %struct.he_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TPDRQ_B_H, align 4
  %42 = call i32 @he_writel(%struct.he_dev* %37, i32 %40, i32 %41)
  %43 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %44 = load i32, i32* @TPDRQ_T, align 4
  %45 = call i32 @he_writel(%struct.he_dev* %43, i32 0, i32 %44)
  %46 = load %struct.he_dev*, %struct.he_dev** %3, align 8
  %47 = load i32, i32* @CONFIG_TPDRQ_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @TPDRQ_S, align 4
  %50 = call i32 @he_writel(%struct.he_dev* %46, i32 %48, i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %26, %22
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @hprintk(i8*) #1

declare dso_local i32 @he_writel(%struct.he_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

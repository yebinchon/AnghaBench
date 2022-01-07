; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_sa1111.c_sa1111_enable_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_sa1111.c_sa1111_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111_dev = type { i32, i32 }
%struct.sa1111 = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 }

@SA1111_SKPCR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa1111_enable_device(%struct.sa1111_dev* %0) #0 {
  %2 = alloca %struct.sa1111_dev*, align 8
  %3 = alloca %struct.sa1111*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sa1111_dev* %0, %struct.sa1111_dev** %2, align 8
  %7 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %8 = call %struct.sa1111* @sa1111_chip_driver(%struct.sa1111_dev* %7)
  store %struct.sa1111* %8, %struct.sa1111** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.sa1111*, %struct.sa1111** %3, align 8
  %10 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.sa1111*, %struct.sa1111** %3, align 8
  %15 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = icmp ne i32 (i32, i32)* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %13
  %21 = load %struct.sa1111*, %struct.sa1111** %3, align 8
  %22 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = load %struct.sa1111*, %struct.sa1111** %3, align 8
  %27 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %32 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %25(i32 %30, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %20, %13, %1
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load %struct.sa1111*, %struct.sa1111** %3, align 8
  %40 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %39, i32 0, i32 0
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.sa1111*, %struct.sa1111** %3, align 8
  %44 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SA1111_SKPCR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @readl_relaxed(i64 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %51 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %49, %52
  %54 = load %struct.sa1111*, %struct.sa1111** %3, align 8
  %55 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SA1111_SKPCR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel_relaxed(i32 %53, i64 %58)
  %60 = load %struct.sa1111*, %struct.sa1111** %3, align 8
  %61 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %60, i32 0, i32 0
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %38, %35
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.sa1111* @sa1111_chip_driver(%struct.sa1111_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

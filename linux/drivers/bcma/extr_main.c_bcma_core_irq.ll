; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_main.c_bcma_core_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_main.c_bcma_core_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { %struct.bcma_bus* }
%struct.bcma_bus = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_core_irq(%struct.bcma_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcma_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcma_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.bcma_device* %0, %struct.bcma_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %9 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %8, i32 0, i32 0
  %10 = load %struct.bcma_bus*, %struct.bcma_bus** %9, align 8
  store %struct.bcma_bus* %10, %struct.bcma_bus** %6, align 8
  %11 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %12 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %54 [
    i32 130, label %14
    i32 128, label %20
    i32 129, label %53
  ]

14:                                               ; preds = %2
  %15 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %16 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %22 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %31 = call i32 @bcma_core_mips_irq(%struct.bcma_device* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ule i32 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 2
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  store i32 %39, i32* %3, align 4
  br label %55

40:                                               ; preds = %26, %20
  %41 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %42 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %47 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @bcma_of_get_irq(i32 %48, %struct.bcma_device* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %55

52:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %55

53:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

54:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %53, %52, %45, %38, %14
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @bcma_core_mips_irq(%struct.bcma_device*) #1

declare dso_local i32 @bcma_of_get_irq(i32, %struct.bcma_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

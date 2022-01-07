; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_mips.c_bcma_core_mips_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_mips.c_bcma_core_mips_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bcma_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_core_mips_irq(%struct.bcma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_device*, align 8
  %4 = alloca %struct.bcma_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcma_device* %0, %struct.bcma_device** %3, align 8
  %7 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %8 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.bcma_device*, %struct.bcma_device** %11, align 8
  store %struct.bcma_device* %12, %struct.bcma_device** %4, align 8
  %13 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %14 = call i32 @bcma_core_mips_irqflag(%struct.bcma_device* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 63
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 6, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp ule i32 %20, 4
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @BCMA_MIPS_MIPS74K_INTMASK(i32 %24)
  %26 = call i32 @bcma_read32(%struct.bcma_device* %23, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %19

37:                                               ; preds = %19
  store i32 5, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %31, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @bcma_core_mips_irqflag(%struct.bcma_device*) #1

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @BCMA_MIPS_MIPS74K_INTMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

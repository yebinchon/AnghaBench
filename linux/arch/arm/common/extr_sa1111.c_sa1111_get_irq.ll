; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_sa1111.c_sa1111_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_sa1111.c_sa1111_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111_dev = type { i32* }
%struct.sa1111 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa1111_get_irq(%struct.sa1111_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sa1111_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sa1111*, align 8
  store %struct.sa1111_dev* %0, %struct.sa1111_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sa1111_dev*, %struct.sa1111_dev** %4, align 8
  %8 = call %struct.sa1111* @sa1111_chip_driver(%struct.sa1111_dev* %7)
  store %struct.sa1111* %8, %struct.sa1111** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.sa1111_dev*, %struct.sa1111_dev** %4, align 8
  %11 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp uge i32 %9, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.sa1111*, %struct.sa1111** %6, align 8
  %20 = load %struct.sa1111_dev*, %struct.sa1111_dev** %4, align 8
  %21 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sa1111_map_irq(%struct.sa1111* %19, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %18, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.sa1111* @sa1111_chip_driver(%struct.sa1111_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sa1111_map_irq(%struct.sa1111*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

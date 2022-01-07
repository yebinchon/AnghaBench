; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_cleanup_bus_resources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_cleanup_bus_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@PCI_BAR_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zpci_dev*)* @zpci_cleanup_bus_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zpci_cleanup_bus_resources(%struct.zpci_dev* %0) #0 {
  %2 = alloca %struct.zpci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %58, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PCI_BAR_COUNT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %61

8:                                                ; preds = %4
  %9 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %8
  %19 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18, %8
  br label %58

29:                                               ; preds = %18
  %30 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %31 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @zpci_free_iomap(%struct.zpci_dev* %30, i32 %38)
  %40 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %41 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @release_resource(i32 %47)
  %49 = load %struct.zpci_dev*, %struct.zpci_dev** %2, align 8
  %50 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @kfree(i32 %56)
  br label %58

58:                                               ; preds = %29, %28
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %4

61:                                               ; preds = %4
  ret void
}

declare dso_local i32 @zpci_free_iomap(%struct.zpci_dev*, i32) #1

declare dso_local i32 @release_resource(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_edev_actionable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_edev_actionable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeh_dev*)* @eeh_edev_actionable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeh_edev_actionable(%struct.eeh_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eeh_dev*, align 8
  store %struct.eeh_dev* %0, %struct.eeh_dev** %3, align 8
  %4 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %5 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %11 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %31

18:                                               ; preds = %9
  %19 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %20 = call i64 @eeh_dev_removed(%struct.eeh_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %31

23:                                               ; preds = %18
  %24 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %25 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @eeh_pe_passed(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %31

30:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %22, %17, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @eeh_dev_removed(%struct.eeh_dev*) #1

declare dso_local i64 @eeh_pe_passed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

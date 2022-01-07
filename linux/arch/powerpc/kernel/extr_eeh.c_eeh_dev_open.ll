; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_dev_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.eeh_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@eeh_dev_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eeh_dev_open(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.eeh_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = call i32 @mutex_lock(i32* @eeh_dev_mutex)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = icmp ne %struct.pci_dev* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev* %13)
  store %struct.eeh_dev* %14, %struct.eeh_dev** %4, align 8
  %15 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %16 = icmp ne %struct.eeh_dev* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %19 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %12
  br label %38

23:                                               ; preds = %17
  %24 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %25 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @eeh_pe_change_owner(%struct.TYPE_2__* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %38

31:                                               ; preds = %23
  %32 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %33 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @atomic_inc(i32* %35)
  %37 = call i32 @mutex_unlock(i32* @eeh_dev_mutex)
  store i32 0, i32* %2, align 4
  br label %41

38:                                               ; preds = %30, %22, %11
  %39 = call i32 @mutex_unlock(i32* @eeh_dev_mutex)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev*) #1

declare dso_local i32 @eeh_pe_change_owner(%struct.TYPE_2__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

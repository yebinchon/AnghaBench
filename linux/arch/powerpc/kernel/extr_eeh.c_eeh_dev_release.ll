; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_dev_release.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_dev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.eeh_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@eeh_dev_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeh_dev_release(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.eeh_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = call i32 @mutex_lock(i32* @eeh_dev_mutex)
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = icmp ne %struct.pci_dev* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = call %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev* %9)
  store %struct.eeh_dev* %10, %struct.eeh_dev** %3, align 8
  %11 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %12 = icmp ne %struct.eeh_dev* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %15 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %20 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @eeh_pe_passed(%struct.TYPE_3__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18, %13, %8
  br label %38

25:                                               ; preds = %18
  %26 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %27 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i64 @atomic_dec_if_positive(i32* %29)
  %31 = icmp slt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %35 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call i32 @eeh_pe_change_owner(%struct.TYPE_3__* %36)
  br label %38

38:                                               ; preds = %25, %24, %7
  %39 = call i32 @mutex_unlock(i32* @eeh_dev_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev*) #1

declare dso_local i32 @eeh_pe_passed(%struct.TYPE_3__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @atomic_dec_if_positive(i32*) #1

declare dso_local i32 @eeh_pe_change_owner(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

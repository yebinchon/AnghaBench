; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_add_device_early.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_add_device_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pci_dn*, i32*)* }
%struct.pci_dn = type { %struct.pci_controller* }
%struct.pci_controller = type { i64 }
%struct.eeh_dev = type { i32 }

@EEH_PROBE_MODE_DEVTREE = common dso_local global i32 0, align 4
@eeh_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeh_add_device_early(%struct.pci_dn* %0) #0 {
  %2 = alloca %struct.pci_dn*, align 8
  %3 = alloca %struct.pci_controller*, align 8
  %4 = alloca %struct.eeh_dev*, align 8
  store %struct.pci_dn* %0, %struct.pci_dn** %2, align 8
  %5 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %6 = icmp ne %struct.pci_dn* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %9 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %8, i32 0, i32 0
  %10 = load %struct.pci_controller*, %struct.pci_controller** %9, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi %struct.pci_controller* [ %10, %7 ], [ null, %11 ]
  store %struct.pci_controller* %13, %struct.pci_controller** %3, align 8
  %14 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %15 = call %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn* %14)
  store %struct.eeh_dev* %15, %struct.eeh_dev** %4, align 8
  %16 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %17 = icmp ne %struct.eeh_dev* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %43

19:                                               ; preds = %12
  %20 = load i32, i32* @EEH_PROBE_MODE_DEVTREE, align 4
  %21 = call i64 @eeh_has_flag(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %43

24:                                               ; preds = %19
  %25 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %26 = icmp eq %struct.pci_controller* null, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EEH_PROBE_MODE_DEVTREE, align 4
  %29 = call i64 @eeh_has_flag(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.pci_controller*, %struct.pci_controller** %3, align 8
  %33 = getelementptr inbounds %struct.pci_controller, %struct.pci_controller* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 0, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %24
  br label %43

37:                                               ; preds = %31, %27
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.pci_dn*, i32*)*, i32 (%struct.pci_dn*, i32*)** %39, align 8
  %41 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  %42 = call i32 %40(%struct.pci_dn* %41, i32* null)
  br label %43

43:                                               ; preds = %37, %36, %23, %18
  ret void
}

declare dso_local %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn*) #1

declare dso_local i64 @eeh_has_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_dn.c_pci_remove_device_node_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_dn.c_pci_remove_device_node_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32* }
%struct.pci_dn = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"marked pdn (from %pOF) as dead\0A\00", align 1
@PCI_DN_FLAG_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_remove_device_node_info(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.pci_dn*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %6 = load %struct.device_node*, %struct.device_node** %2, align 8
  %7 = icmp ne %struct.device_node* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.device_node*, %struct.device_node** %2, align 8
  %10 = call %struct.pci_dn* @PCI_DN(%struct.device_node* %9)
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi %struct.pci_dn* [ %10, %8 ], [ null, %11 ]
  store %struct.pci_dn* %13, %struct.pci_dn** %3, align 8
  %14 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %15 = icmp ne %struct.pci_dn* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %67

17:                                               ; preds = %12
  %18 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %18, i32 0, i32 5
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %26 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %25, i32 0, i32 4
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.device_node*, %struct.device_node** %2, align 8
  %29 = call %struct.device_node* @of_get_parent(%struct.device_node* %28)
  store %struct.device_node* %29, %struct.device_node** %4, align 8
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = icmp ne %struct.device_node* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = call i32 @of_node_put(%struct.device_node* %33)
  br label %35

35:                                               ; preds = %32, %17
  %36 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %37 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %42 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %45 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 %40, i32 %43, i32 %46)
  store %struct.pci_dev* %47, %struct.pci_dev** %5, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = icmp ne %struct.pci_dev* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %35
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = load %struct.device_node*, %struct.device_node** %2, align 8
  %53 = call i32 @pci_dbg(%struct.pci_dev* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.device_node* %52)
  %54 = load i32, i32* @PCI_DN_FLAG_DEAD, align 4
  %55 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %56 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %64

59:                                               ; preds = %35
  %60 = load %struct.device_node*, %struct.device_node** %2, align 8
  %61 = getelementptr inbounds %struct.device_node, %struct.device_node* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %63 = call i32 @kfree(%struct.pci_dn* %62)
  br label %64

64:                                               ; preds = %59, %50
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = call i32 @pci_dev_put(%struct.pci_dev* %65)
  br label %67

67:                                               ; preds = %64, %16
  ret void
}

declare dso_local %struct.pci_dn* @PCI_DN(%struct.device_node*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @pci_dbg(%struct.pci_dev*, i8*, %struct.device_node*) #1

declare dso_local i32 @kfree(%struct.pci_dn*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_of_scan.c_of_scan_pci_dev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_of_scan.c_of_scan_pci_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device_node* }
%struct.pci_bus = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"  * %pOF\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"  dev header type: %x\0A\00", align 1
@EEH_DEV_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (%struct.pci_bus*, %struct.device_node*)* @of_scan_pci_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @of_scan_pci_dev(%struct.pci_bus* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %6, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.device_node* %10)
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i32 @of_device_is_available(%struct.device_node* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %53

16:                                               ; preds = %2
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = call i32* @of_get_property(%struct.device_node* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 20
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %16
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %53

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @of_read_number(i32* %26, i32 1)
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  store i32 %29, i32* %9, align 4
  %30 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.pci_dev* @pci_get_slot(%struct.pci_bus* %30, i32 %31)
  store %struct.pci_dev* %32, %struct.pci_dev** %6, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %34 = icmp ne %struct.pci_dev* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %37 = call i32 @pci_dev_put(%struct.pci_dev* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %38, %struct.pci_dev** %3, align 8
  br label %53

39:                                               ; preds = %25
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  %41 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.pci_dev* @of_create_pci_dev(%struct.device_node* %40, %struct.pci_bus* %41, i32 %42)
  store %struct.pci_dev* %43, %struct.pci_dev** %6, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = icmp ne %struct.pci_dev* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %53

47:                                               ; preds = %39
  %48 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load %struct.device_node*, %struct.device_node** %49, align 8
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %52, %struct.pci_dev** %3, align 8
  br label %53

53:                                               ; preds = %47, %46, %35, %24, %15
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  ret %struct.pci_dev* %54
}

declare dso_local i32 @pr_debug(i8*, %struct.device_node*) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_read_number(i32*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_slot(%struct.pci_bus*, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local %struct.pci_dev* @of_create_pci_dev(%struct.device_node*, %struct.pci_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

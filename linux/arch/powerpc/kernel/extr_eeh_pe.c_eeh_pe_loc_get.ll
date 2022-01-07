; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_pe.c_eeh_pe_loc_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_pe.c_eeh_pe_loc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_pe = type { i32 }
%struct.pci_bus = type { %struct.pci_bus* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"ibm,io-base-loc-code\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"ibm,slot-location-code\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @eeh_pe_loc_get(%struct.eeh_pe* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.eeh_pe*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  store %struct.eeh_pe* %0, %struct.eeh_pe** %3, align 8
  %7 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %8 = call %struct.pci_bus* @eeh_pe_bus_get(%struct.eeh_pe* %7)
  store %struct.pci_bus* %8, %struct.pci_bus** %4, align 8
  store i8* null, i8** %6, align 8
  br label %9

9:                                                ; preds = %36, %17, %1
  %10 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %11 = icmp ne %struct.pci_bus* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %14 = call %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus* %13)
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %19 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %18, i32 0, i32 0
  %20 = load %struct.pci_bus*, %struct.pci_bus** %19, align 8
  store %struct.pci_bus* %20, %struct.pci_bus** %4, align 8
  br label %9

21:                                               ; preds = %12
  %22 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %23 = call i64 @pci_is_root_bus(%struct.pci_bus* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = call i8* @of_get_property(%struct.device_node* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %27, i8** %6, align 8
  br label %31

28:                                               ; preds = %21
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = call i8* @of_get_property(%struct.device_node* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %2, align 8
  br label %41

36:                                               ; preds = %31
  %37 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %38 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %37, i32 0, i32 0
  %39 = load %struct.pci_bus*, %struct.pci_bus** %38, align 8
  store %struct.pci_bus* %39, %struct.pci_bus** %4, align 8
  br label %9

40:                                               ; preds = %9
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i8*, i8** %2, align 8
  ret i8* %42
}

declare dso_local %struct.pci_bus* @eeh_pe_bus_get(%struct.eeh_pe*) #1

declare dso_local %struct.device_node* @pci_bus_to_OF_node(%struct.pci_bus*) #1

declare dso_local i64 @pci_is_root_bus(%struct.pci_bus*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

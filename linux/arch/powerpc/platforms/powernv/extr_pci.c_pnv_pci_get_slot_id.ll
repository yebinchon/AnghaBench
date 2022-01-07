; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci.c_pnv_pci_get_slot_id.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci.c_pnv_pci_get_slot_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ibm,ioda2-phb\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ibm,ioda3-phb\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ibm,opal-phbid\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnv_pci_get_slot_id(%struct.device_node* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = call i32 @of_property_read_u32(%struct.device_node* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %62

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 16776960
  %21 = ashr i32 %20, 8
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %41, %18
  %23 = load %struct.device_node*, %struct.device_node** %6, align 8
  %24 = call %struct.device_node* @of_get_parent(%struct.device_node* %23)
  store %struct.device_node* %24, %struct.device_node** %6, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = call i32 @PCI_DN(%struct.device_node* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = call i32 @of_node_put(%struct.device_node* %31)
  br label %59

33:                                               ; preds = %26
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = call i32 @of_device_is_compatible(%struct.device_node* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load %struct.device_node*, %struct.device_node** %6, align 8
  %39 = call i32 @of_device_is_compatible(%struct.device_node* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load %struct.device_node*, %struct.device_node** %6, align 8
  %43 = call i32 @of_node_put(%struct.device_node* %42)
  br label %22

44:                                               ; preds = %37, %33
  %45 = load %struct.device_node*, %struct.device_node** %6, align 8
  %46 = call i32 @of_property_read_u64(%struct.device_node* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.device_node*, %struct.device_node** %6, align 8
  %51 = call i32 @of_node_put(%struct.device_node* %50)
  %52 = load i32, i32* @ENXIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %44
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @PCI_SLOT_ID(i32 %55, i32 %56)
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %62

59:                                               ; preds = %30, %22
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %54, %49, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @PCI_DN(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u64(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @PCI_SLOT_ID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

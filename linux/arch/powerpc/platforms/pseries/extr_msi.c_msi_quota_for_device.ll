; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_msi.c_msi_quota_for_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_msi.c_msi_quota_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.msi_counts = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"rtas_msi: calc quota for %s, request %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"rtas_msi: couldn't find PE for %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"rtas_msi: found PE %pOF\0A\00", align 1
@count_non_bridge_devices = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"rtas_msi: found 0 devices under PE for %s\0A\00", align 1
@count_spare_msis = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"rtas_msi: request clamped to quota %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @msi_quota_for_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_quota_for_device(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.msi_counts, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call i32 @pci_name(%struct.pci_dev* %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call %struct.device_node* @find_pe_total_msi(%struct.pci_dev* %12, i32* %7)
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = call %struct.device_node* @find_pe_dn(%struct.pci_dev* %17, i32* %7)
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = call i32 @pci_name(%struct.pci_dev* %23)
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %87

26:                                               ; preds = %19
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = ptrtoint %struct.device_node* %27 to i32
  %29 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = call i32 @memset(%struct.msi_counts* %6, i32 0, i32 24)
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = load i32, i32* @count_non_bridge_devices, align 4
  %33 = call i32 @pci_traverse_device_nodes(%struct.device_node* %31, i32 %32, %struct.msi_counts* %6)
  %34 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = call i32 @pci_name(%struct.pci_dev* %38)
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  br label %87

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  %43 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %42, %44
  %46 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %4, align 4
  %48 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %87

52:                                               ; preds = %41
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = call i32 @pci_device_to_OF_node(%struct.pci_dev* %53)
  %55 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 5
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %4, align 4
  %57 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 2
  store i32 %56, i32* %57, align 4
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = load i32, i32* @count_spare_msis, align 4
  %60 = call i32 @pci_traverse_device_nodes(%struct.device_node* %58, i32 %59, %struct.msi_counts* %6)
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = srem i32 %61, %63
  %65 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %52
  %72 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %73, %75
  %77 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %71, %52
  %81 = getelementptr inbounds %struct.msi_counts, %struct.msi_counts* %6, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @min(i32 %82, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %80, %51, %37, %22
  %88 = load %struct.device_node*, %struct.device_node** %5, align 8
  %89 = call i32 @of_node_put(%struct.device_node* %88)
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.device_node* @find_pe_total_msi(%struct.pci_dev*, i32*) #1

declare dso_local %struct.device_node* @find_pe_dn(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @memset(%struct.msi_counts*, i32, i32) #1

declare dso_local i32 @pci_traverse_device_nodes(%struct.device_node*, i32, %struct.msi_counts*) #1

declare dso_local i32 @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_update_lmb_associativity_index.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_update_lmb_associativity_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drmem_lmb = type { i32, i32 }
%struct.device_node = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ibm,associativity\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"/ibm,dynamic-reconfiguration-memory\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ibm,associativity-lookup-arrays\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Could not find LMB associativity\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drmem_lmb*)* @update_lmb_associativity_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_lmb_associativity_index(%struct.drmem_lmb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drmem_lmb*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drmem_lmb* %0, %struct.drmem_lmb** %3, align 8
  %11 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %79

17:                                               ; preds = %1
  %18 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %19 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cpu_to_be32(i32 %20)
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call %struct.device_node* @dlpar_configure_connector(i32 %21, %struct.device_node* %22)
  store %struct.device_node* %23, %struct.device_node** %5, align 8
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = call i32 @of_node_put(%struct.device_node* %24)
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %79

31:                                               ; preds = %17
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i32* @of_get_property(%struct.device_node* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = call i32 @dlpar_free_cc_nodes(%struct.device_node* %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %79

41:                                               ; preds = %31
  %42 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %42, %struct.device_node** %6, align 8
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  %44 = icmp ne %struct.device_node* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call i32 @dlpar_free_cc_nodes(%struct.device_node* %46)
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %79

50:                                               ; preds = %41
  %51 = load %struct.device_node*, %struct.device_node** %6, align 8
  %52 = call %struct.property* @of_find_property(%struct.device_node* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store %struct.property* %52, %struct.property** %7, align 8
  %53 = load %struct.property*, %struct.property** %7, align 8
  %54 = icmp ne %struct.property* %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.device_node*, %struct.device_node** %6, align 8
  %57 = call i32 @of_node_put(%struct.device_node* %56)
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = call i32 @dlpar_free_cc_nodes(%struct.device_node* %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %79

62:                                               ; preds = %50
  %63 = load %struct.device_node*, %struct.device_node** %6, align 8
  %64 = load %struct.property*, %struct.property** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @find_aa_index(%struct.device_node* %63, %struct.property* %64, i32* %65, i32* %9)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.device_node*, %struct.device_node** %6, align 8
  %68 = call i32 @of_node_put(%struct.device_node* %67)
  %69 = load %struct.device_node*, %struct.device_node** %5, align 8
  %70 = call i32 @dlpar_free_cc_nodes(%struct.device_node* %69)
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %79

75:                                               ; preds = %62
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.drmem_lmb*, %struct.drmem_lmb** %3, align 8
  %78 = getelementptr inbounds %struct.drmem_lmb, %struct.drmem_lmb* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %73, %55, %45, %36, %28, %14
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local %struct.device_node* @dlpar_configure_connector(i32, %struct.device_node*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dlpar_free_cc_nodes(%struct.device_node*) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @find_aa_index(%struct.device_node*, %struct.property*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_pmem.c_pmem_drc_add_node.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_pmem.c_pmem_drc_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Attempting to add pmem node, drc index: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to acquire DRC, rc: %d, drc index: %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pmem_node = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"configure-connector failed for drc %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Failed to attach node %pOF, rc: %d, drc index: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Successfully added %pOF, drc index: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pmem_drc_add_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmem_drc_add_node(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @dlpar_acquire_drc(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %56

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @cpu_to_be32(i32 %19)
  %21 = load i32, i32* @pmem_node, align 4
  %22 = call %struct.device_node* @dlpar_configure_connector(i32 %20, i32 %21)
  store %struct.device_node* %22, %struct.device_node** %4, align 8
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @dlpar_release_drc(i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %56

32:                                               ; preds = %18
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = load i32, i32* @pmem_node, align 4
  %35 = call i32 @dlpar_attach_node(%struct.device_node* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = ptrtoint %struct.device_node* %39 to i32
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @dlpar_release_drc(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.device_node*, %struct.device_node** %4, align 8
  %49 = call i32 @dlpar_free_cc_nodes(%struct.device_node* %48)
  br label %50

50:                                               ; preds = %47, %38
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %56

52:                                               ; preds = %32
  %53 = load %struct.device_node*, %struct.device_node** %4, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %53, i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %50, %25, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dlpar_acquire_drc(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local %struct.device_node* @dlpar_configure_connector(i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @dlpar_release_drc(i32) #1

declare dso_local i32 @dlpar_attach_node(%struct.device_node*, i32) #1

declare dso_local i32 @dlpar_free_cc_nodes(%struct.device_node*) #1

declare dso_local i32 @pr_info(i8*, %struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

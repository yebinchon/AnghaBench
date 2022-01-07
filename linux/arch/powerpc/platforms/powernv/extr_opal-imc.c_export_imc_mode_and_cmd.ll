; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-imc.c_export_imc_mode_and_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-imc.c_export_imc_mode_and_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.imc_pmu = type { %struct.imc_mem_info* }
%struct.imc_mem_info = type { i64, i32* }

@export_imc_mode_and_cmd.loc = internal global i32 0, align 4
@export_imc_mode_and_cmd.imc_mode_addr = internal global i32* null, align 8
@export_imc_mode_and_cmd.imc_cmd_addr = internal global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"imc\00", align 1
@powerpc_debugfs_root = common dso_local global i32 0, align 4
@imc_debugfs_parent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"cb_offset\00", align 1
@IMC_CNTL_BLK_OFFSET = common dso_local global i32 0, align 4
@IMC_CNTL_BLK_MODE_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"imc_mode_%d\00", align 1
@IMC_CNTL_BLK_CMD_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"imc_cmd_%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*, %struct.imc_pmu*)* @export_imc_mode_and_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_imc_mode_and_cmd(%struct.device_node* %0, %struct.imc_pmu* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.imc_pmu*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.imc_mem_info*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.imc_pmu* %1, %struct.imc_pmu** %4, align 8
  %9 = load %struct.imc_pmu*, %struct.imc_pmu** %4, align 8
  %10 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %9, i32 0, i32 0
  %11 = load %struct.imc_mem_info*, %struct.imc_mem_info** %10, align 8
  store %struct.imc_mem_info* %11, %struct.imc_mem_info** %8, align 8
  %12 = load i32, i32* @powerpc_debugfs_root, align 4
  %13 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 %13, i32* @imc_debugfs_parent, align 4
  %14 = load i32, i32* @imc_debugfs_parent, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %78

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %3, align 8
  %19 = call i64 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @IMC_CNTL_BLK_OFFSET, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %17
  br label %24

24:                                               ; preds = %71, %23
  %25 = load %struct.imc_mem_info*, %struct.imc_mem_info** %8, align 8
  %26 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %74

29:                                               ; preds = %24
  %30 = load %struct.imc_mem_info*, %struct.imc_mem_info** %8, align 8
  %31 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = ptrtoint i32* %32 to i32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* @export_imc_mode_and_cmd.loc, align 4
  %36 = load i32, i32* @export_imc_mode_and_cmd.loc, align 4
  %37 = load i32, i32* @IMC_CNTL_BLK_MODE_OFFSET, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** @export_imc_mode_and_cmd.imc_mode_addr, align 8
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %42 = load %struct.imc_mem_info*, %struct.imc_mem_info** %8, align 8
  %43 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %48 = load i32, i32* @imc_debugfs_parent, align 4
  %49 = load i32*, i32** @export_imc_mode_and_cmd.imc_mode_addr, align 8
  %50 = call i32 @imc_debugfs_create_x64(i8* %47, i32 384, i32 %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %29
  br label %75

53:                                               ; preds = %29
  %54 = load i32, i32* @export_imc_mode_and_cmd.loc, align 4
  %55 = load i32, i32* @IMC_CNTL_BLK_CMD_OFFSET, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** @export_imc_mode_and_cmd.imc_cmd_addr, align 8
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %60 = load %struct.imc_mem_info*, %struct.imc_mem_info** %8, align 8
  %61 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %66 = load i32, i32* @imc_debugfs_parent, align 4
  %67 = load i32*, i32** @export_imc_mode_and_cmd.imc_cmd_addr, align 8
  %68 = call i32 @imc_debugfs_create_x64(i8* %65, i32 384, i32 %66, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %53
  br label %75

71:                                               ; preds = %53
  %72 = load %struct.imc_mem_info*, %struct.imc_mem_info** %8, align 8
  %73 = getelementptr inbounds %struct.imc_mem_info, %struct.imc_mem_info* %72, i32 1
  store %struct.imc_mem_info* %73, %struct.imc_mem_info** %8, align 8
  br label %24

74:                                               ; preds = %24
  br label %78

75:                                               ; preds = %70, %52
  %76 = load i32, i32* @imc_debugfs_parent, align 4
  %77 = call i32 @debugfs_remove_recursive(i32 %76)
  br label %78

78:                                               ; preds = %75, %74, %16
  ret void
}

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @imc_debugfs_create_x64(i8*, i32, i32, i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

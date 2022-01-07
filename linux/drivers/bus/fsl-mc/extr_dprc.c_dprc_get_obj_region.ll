; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc.c_dprc_get_obj_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc.c_dprc_get_obj_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dprc_region_desc = type { i8*, i32, i8* }
%struct.fsl_mc_command = type { i64, i8*, i32 }
%struct.dprc_cmd_get_obj_region = type { i8*, i32, i32 }
%struct.dprc_rsp_get_obj_region = type { i32, i32, i32 }

@DPRC_CMDID_GET_OBJ_REG_V2 = common dso_local global i32 0, align 4
@DPRC_CMDID_GET_OBJ_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dprc_get_obj_region(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, %struct.dprc_region_desc* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.fsl_mc_io*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dprc_region_desc*, align 8
  %16 = alloca %struct.fsl_mc_command, align 8
  %17 = alloca %struct.dprc_cmd_get_obj_region*, align 8
  %18 = alloca %struct.dprc_rsp_get_obj_region*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.dprc_region_desc* %6, %struct.dprc_region_desc** %15, align 8
  %22 = bitcast %struct.fsl_mc_command* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  %23 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %24 = call i32 @dprc_get_api_version(%struct.fsl_mc_io* %23, i32 0, i32* %19, i32* %20)
  store i32 %24, i32* %21, align 4
  %25 = load i32, i32* %21, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* %21, align 4
  store i32 %28, i32* %8, align 4
  br label %111

29:                                               ; preds = %7
  %30 = load i32, i32* %19, align 4
  %31 = icmp sgt i32 %30, 6
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %19, align 4
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32, i32* %20, align 4
  %37 = icmp sge i32 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %35, %29
  %39 = load i32, i32* @DPRC_CMDID_GET_OBJ_REG_V2, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i8* @mc_encode_cmd_header(i32 %39, i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %16, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  br label %50

44:                                               ; preds = %35, %32
  %45 = load i32, i32* @DPRC_CMDID_GET_OBJ_REG, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i8* @mc_encode_cmd_header(i32 %45, i32 %46, i32 %47)
  %49 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %16, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %16, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.dprc_cmd_get_obj_region*
  store %struct.dprc_cmd_get_obj_region* %53, %struct.dprc_cmd_get_obj_region** %17, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @cpu_to_le32(i32 %54)
  %56 = load %struct.dprc_cmd_get_obj_region*, %struct.dprc_cmd_get_obj_region** %17, align 8
  %57 = getelementptr inbounds %struct.dprc_cmd_get_obj_region, %struct.dprc_cmd_get_obj_region* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load %struct.dprc_cmd_get_obj_region*, %struct.dprc_cmd_get_obj_region** %17, align 8
  %60 = getelementptr inbounds %struct.dprc_cmd_get_obj_region, %struct.dprc_cmd_get_obj_region* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.dprc_cmd_get_obj_region*, %struct.dprc_cmd_get_obj_region** %17, align 8
  %62 = getelementptr inbounds %struct.dprc_cmd_get_obj_region, %struct.dprc_cmd_get_obj_region* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @strncpy(i8* %63, i8* %64, i32 16)
  %66 = load %struct.dprc_cmd_get_obj_region*, %struct.dprc_cmd_get_obj_region** %17, align 8
  %67 = getelementptr inbounds %struct.dprc_cmd_get_obj_region, %struct.dprc_cmd_get_obj_region* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 15
  store i8 0, i8* %69, align 1
  %70 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %9, align 8
  %71 = call i32 @mc_send_command(%struct.fsl_mc_io* %70, %struct.fsl_mc_command* %16)
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* %21, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %50
  %75 = load i32, i32* %21, align 4
  store i32 %75, i32* %8, align 4
  br label %111

76:                                               ; preds = %50
  %77 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %16, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.dprc_rsp_get_obj_region*
  store %struct.dprc_rsp_get_obj_region* %79, %struct.dprc_rsp_get_obj_region** %18, align 8
  %80 = load %struct.dprc_rsp_get_obj_region*, %struct.dprc_rsp_get_obj_region** %18, align 8
  %81 = getelementptr inbounds %struct.dprc_rsp_get_obj_region, %struct.dprc_rsp_get_obj_region* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le64_to_cpu(i32 %82)
  %84 = load %struct.dprc_region_desc*, %struct.dprc_region_desc** %15, align 8
  %85 = getelementptr inbounds %struct.dprc_region_desc, %struct.dprc_region_desc* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.dprc_rsp_get_obj_region*, %struct.dprc_rsp_get_obj_region** %18, align 8
  %87 = getelementptr inbounds %struct.dprc_rsp_get_obj_region, %struct.dprc_rsp_get_obj_region* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32_to_cpu(i32 %88)
  %90 = load %struct.dprc_region_desc*, %struct.dprc_region_desc** %15, align 8
  %91 = getelementptr inbounds %struct.dprc_region_desc, %struct.dprc_region_desc* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %19, align 4
  %93 = icmp sgt i32 %92, 6
  br i1 %93, label %100, label %94

94:                                               ; preds = %76
  %95 = load i32, i32* %19, align 4
  %96 = icmp eq i32 %95, 6
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32, i32* %20, align 4
  %99 = icmp sge i32 %98, 3
  br i1 %99, label %100, label %107

100:                                              ; preds = %97, %76
  %101 = load %struct.dprc_rsp_get_obj_region*, %struct.dprc_rsp_get_obj_region** %18, align 8
  %102 = getelementptr inbounds %struct.dprc_rsp_get_obj_region, %struct.dprc_rsp_get_obj_region* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @le64_to_cpu(i32 %103)
  %105 = load %struct.dprc_region_desc*, %struct.dprc_region_desc** %15, align 8
  %106 = getelementptr inbounds %struct.dprc_region_desc, %struct.dprc_region_desc* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %110

107:                                              ; preds = %97, %94
  %108 = load %struct.dprc_region_desc*, %struct.dprc_region_desc** %15, align 8
  %109 = getelementptr inbounds %struct.dprc_region_desc, %struct.dprc_region_desc* %108, i32 0, i32 0
  store i8* null, i8** %109, align 8
  br label %110

110:                                              ; preds = %107, %100
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %110, %74, %27
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dprc_get_api_version(%struct.fsl_mc_io*, i32, i32*, i32*) #2

declare dso_local i8* @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i8* @le64_to_cpu(i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

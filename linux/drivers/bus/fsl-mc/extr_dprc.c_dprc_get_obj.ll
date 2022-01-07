; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc.c_dprc_get_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc.c_dprc_get_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.fsl_mc_obj_desc = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8* }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dprc_cmd_get_obj = type { i32 }
%struct.dprc_rsp_get_obj = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DPRC_CMDID_GET_OBJ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dprc_get_obj(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, %struct.fsl_mc_obj_desc* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_mc_io*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fsl_mc_obj_desc*, align 8
  %12 = alloca %struct.fsl_mc_command, align 8
  %13 = alloca %struct.dprc_cmd_get_obj*, align 8
  %14 = alloca %struct.dprc_rsp_get_obj*, align 8
  %15 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.fsl_mc_obj_desc* %4, %struct.fsl_mc_obj_desc** %11, align 8
  %16 = bitcast %struct.fsl_mc_command* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load i32, i32* @DPRC_CMDID_GET_OBJ, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @mc_encode_cmd_header(i32 %17, i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.dprc_cmd_get_obj*
  store %struct.dprc_cmd_get_obj* %24, %struct.dprc_cmd_get_obj** %13, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load %struct.dprc_cmd_get_obj*, %struct.dprc_cmd_get_obj** %13, align 8
  %28 = getelementptr inbounds %struct.dprc_cmd_get_obj, %struct.dprc_cmd_get_obj* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %7, align 8
  %30 = call i32 @mc_send_command(%struct.fsl_mc_io* %29, %struct.fsl_mc_command* %12)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %6, align 4
  br label %107

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.dprc_rsp_get_obj*
  store %struct.dprc_rsp_get_obj* %38, %struct.dprc_rsp_get_obj** %14, align 8
  %39 = load %struct.dprc_rsp_get_obj*, %struct.dprc_rsp_get_obj** %14, align 8
  %40 = getelementptr inbounds %struct.dprc_rsp_get_obj, %struct.dprc_rsp_get_obj* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le32_to_cpu(i32 %41)
  %43 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %11, align 8
  %44 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  %45 = load %struct.dprc_rsp_get_obj*, %struct.dprc_rsp_get_obj** %14, align 8
  %46 = getelementptr inbounds %struct.dprc_rsp_get_obj, %struct.dprc_rsp_get_obj* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @le16_to_cpu(i32 %47)
  %49 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %11, align 8
  %50 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %49, i32 0, i32 8
  store i8* %48, i8** %50, align 8
  %51 = load %struct.dprc_rsp_get_obj*, %struct.dprc_rsp_get_obj** %14, align 8
  %52 = getelementptr inbounds %struct.dprc_rsp_get_obj, %struct.dprc_rsp_get_obj* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %11, align 8
  %55 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dprc_rsp_get_obj*, %struct.dprc_rsp_get_obj** %14, align 8
  %57 = getelementptr inbounds %struct.dprc_rsp_get_obj, %struct.dprc_rsp_get_obj* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %11, align 8
  %60 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  %61 = load %struct.dprc_rsp_get_obj*, %struct.dprc_rsp_get_obj** %14, align 8
  %62 = getelementptr inbounds %struct.dprc_rsp_get_obj, %struct.dprc_rsp_get_obj* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @le32_to_cpu(i32 %63)
  %65 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %11, align 8
  %66 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.dprc_rsp_get_obj*, %struct.dprc_rsp_get_obj** %14, align 8
  %68 = getelementptr inbounds %struct.dprc_rsp_get_obj, %struct.dprc_rsp_get_obj* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le16_to_cpu(i32 %69)
  %71 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %11, align 8
  %72 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load %struct.dprc_rsp_get_obj*, %struct.dprc_rsp_get_obj** %14, align 8
  %74 = getelementptr inbounds %struct.dprc_rsp_get_obj, %struct.dprc_rsp_get_obj* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le16_to_cpu(i32 %75)
  %77 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %11, align 8
  %78 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.dprc_rsp_get_obj*, %struct.dprc_rsp_get_obj** %14, align 8
  %80 = getelementptr inbounds %struct.dprc_rsp_get_obj, %struct.dprc_rsp_get_obj* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le16_to_cpu(i32 %81)
  %83 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %11, align 8
  %84 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %11, align 8
  %86 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.dprc_rsp_get_obj*, %struct.dprc_rsp_get_obj** %14, align 8
  %89 = getelementptr inbounds %struct.dprc_rsp_get_obj, %struct.dprc_rsp_get_obj* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @strncpy(i8* %87, i32 %90, i32 16)
  %92 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %11, align 8
  %93 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 15
  store i8 0, i8* %95, align 1
  %96 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %11, align 8
  %97 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.dprc_rsp_get_obj*, %struct.dprc_rsp_get_obj** %14, align 8
  %100 = getelementptr inbounds %struct.dprc_rsp_get_obj, %struct.dprc_rsp_get_obj* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strncpy(i8* %98, i32 %101, i32 16)
  %103 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %11, align 8
  %104 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 15
  store i8 0, i8* %106, align 1
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %35, %33
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i32 @strncpy(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc.c_dprc_set_obj_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc.c_dprc_set_obj_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dprc_irq_cfg = type { i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dprc_cmd_set_obj_irq = type { i8*, i8*, i8*, i32, i32, i8* }

@DPRC_CMDID_SET_OBJ_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dprc_set_obj_irq(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, %struct.dprc_irq_cfg* %6) #0 {
  %8 = alloca %struct.fsl_mc_io*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dprc_irq_cfg*, align 8
  %15 = alloca %struct.fsl_mc_command, align 8
  %16 = alloca %struct.dprc_cmd_set_obj_irq*, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.dprc_irq_cfg* %6, %struct.dprc_irq_cfg** %14, align 8
  %17 = bitcast %struct.fsl_mc_command* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = load i32, i32* @DPRC_CMDID_SET_OBJ_IRQ, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @mc_encode_cmd_header(i32 %18, i32 %19, i32 %20)
  %22 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %15, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %15, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.dprc_cmd_set_obj_irq*
  store %struct.dprc_cmd_set_obj_irq* %25, %struct.dprc_cmd_set_obj_irq** %16, align 8
  %26 = load %struct.dprc_irq_cfg*, %struct.dprc_irq_cfg** %14, align 8
  %27 = getelementptr inbounds %struct.dprc_irq_cfg, %struct.dprc_irq_cfg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = load %struct.dprc_cmd_set_obj_irq*, %struct.dprc_cmd_set_obj_irq** %16, align 8
  %31 = getelementptr inbounds %struct.dprc_cmd_set_obj_irq, %struct.dprc_cmd_set_obj_irq* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.dprc_cmd_set_obj_irq*, %struct.dprc_cmd_set_obj_irq** %16, align 8
  %34 = getelementptr inbounds %struct.dprc_cmd_set_obj_irq, %struct.dprc_cmd_set_obj_irq* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dprc_irq_cfg*, %struct.dprc_irq_cfg** %14, align 8
  %36 = getelementptr inbounds %struct.dprc_irq_cfg, %struct.dprc_irq_cfg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cpu_to_le64(i32 %37)
  %39 = load %struct.dprc_cmd_set_obj_irq*, %struct.dprc_cmd_set_obj_irq** %16, align 8
  %40 = getelementptr inbounds %struct.dprc_cmd_set_obj_irq, %struct.dprc_cmd_set_obj_irq* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.dprc_irq_cfg*, %struct.dprc_irq_cfg** %14, align 8
  %42 = getelementptr inbounds %struct.dprc_irq_cfg, %struct.dprc_irq_cfg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = load %struct.dprc_cmd_set_obj_irq*, %struct.dprc_cmd_set_obj_irq** %16, align 8
  %46 = getelementptr inbounds %struct.dprc_cmd_set_obj_irq, %struct.dprc_cmd_set_obj_irq* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = load %struct.dprc_cmd_set_obj_irq*, %struct.dprc_cmd_set_obj_irq** %16, align 8
  %50 = getelementptr inbounds %struct.dprc_cmd_set_obj_irq, %struct.dprc_cmd_set_obj_irq* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.dprc_cmd_set_obj_irq*, %struct.dprc_cmd_set_obj_irq** %16, align 8
  %52 = getelementptr inbounds %struct.dprc_cmd_set_obj_irq, %struct.dprc_cmd_set_obj_irq* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @strncpy(i8* %53, i8* %54, i32 16)
  %56 = load %struct.dprc_cmd_set_obj_irq*, %struct.dprc_cmd_set_obj_irq** %16, align 8
  %57 = getelementptr inbounds %struct.dprc_cmd_set_obj_irq, %struct.dprc_cmd_set_obj_irq* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 15
  store i8 0, i8* %59, align 1
  %60 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %8, align 8
  %61 = call i32 @mc_send_command(%struct.fsl_mc_io* %60, %struct.fsl_mc_command* %15)
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

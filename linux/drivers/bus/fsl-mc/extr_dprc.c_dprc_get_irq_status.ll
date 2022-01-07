; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc.c_dprc_get_irq_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc.c_dprc_get_irq_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dprc_cmd_get_irq_status = type { i32, i32 }
%struct.dprc_rsp_get_irq_status = type { i32 }

@DPRC_CMDID_GET_IRQ_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dprc_get_irq_status(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_mc_io*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.fsl_mc_command, align 8
  %13 = alloca %struct.dprc_cmd_get_irq_status*, align 8
  %14 = alloca %struct.dprc_rsp_get_irq_status*, align 8
  %15 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = bitcast %struct.fsl_mc_command* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = load i32, i32* @DPRC_CMDID_GET_IRQ_STATUS, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @mc_encode_cmd_header(i32 %17, i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.dprc_cmd_get_irq_status*
  store %struct.dprc_cmd_get_irq_status* %24, %struct.dprc_cmd_get_irq_status** %13, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpu_to_le32(i32 %26)
  %28 = load %struct.dprc_cmd_get_irq_status*, %struct.dprc_cmd_get_irq_status** %13, align 8
  %29 = getelementptr inbounds %struct.dprc_cmd_get_irq_status, %struct.dprc_cmd_get_irq_status* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.dprc_cmd_get_irq_status*, %struct.dprc_cmd_get_irq_status** %13, align 8
  %32 = getelementptr inbounds %struct.dprc_cmd_get_irq_status, %struct.dprc_cmd_get_irq_status* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %7, align 8
  %34 = call i32 @mc_send_command(%struct.fsl_mc_io* %33, %struct.fsl_mc_command* %12)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %6, align 4
  br label %48

39:                                               ; preds = %5
  %40 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %12, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.dprc_rsp_get_irq_status*
  store %struct.dprc_rsp_get_irq_status* %42, %struct.dprc_rsp_get_irq_status** %14, align 8
  %43 = load %struct.dprc_rsp_get_irq_status*, %struct.dprc_rsp_get_irq_status** %14, align 8
  %44 = getelementptr inbounds %struct.dprc_rsp_get_irq_status, %struct.dprc_rsp_get_irq_status* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %39, %37
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i32 @le32_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

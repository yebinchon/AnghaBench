; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dpcon.c_dpcon_set_notification.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dpcon.c_dpcon_set_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.dpcon_notification_cfg = type { i32, i32, i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpcon_cmd_set_notification = type { i32, i32, i32 }

@DPCON_CMDID_SET_NOTIFICATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpcon_set_notification(%struct.fsl_mc_io* %0, i32 %1, i32 %2, %struct.dpcon_notification_cfg* %3) #0 {
  %5 = alloca %struct.fsl_mc_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpcon_notification_cfg*, align 8
  %9 = alloca %struct.fsl_mc_command, align 8
  %10 = alloca %struct.dpcon_cmd_set_notification*, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.dpcon_notification_cfg* %3, %struct.dpcon_notification_cfg** %8, align 8
  %11 = bitcast %struct.fsl_mc_command* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load i32, i32* @DPCON_CMDID_SET_NOTIFICATION, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @mc_encode_cmd_header(i32 %12, i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %9, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %9, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.dpcon_cmd_set_notification*
  store %struct.dpcon_cmd_set_notification* %19, %struct.dpcon_cmd_set_notification** %10, align 8
  %20 = load %struct.dpcon_notification_cfg*, %struct.dpcon_notification_cfg** %8, align 8
  %21 = getelementptr inbounds %struct.dpcon_notification_cfg, %struct.dpcon_notification_cfg* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cpu_to_le32(i32 %22)
  %24 = load %struct.dpcon_cmd_set_notification*, %struct.dpcon_cmd_set_notification** %10, align 8
  %25 = getelementptr inbounds %struct.dpcon_cmd_set_notification, %struct.dpcon_cmd_set_notification* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dpcon_notification_cfg*, %struct.dpcon_notification_cfg** %8, align 8
  %27 = getelementptr inbounds %struct.dpcon_notification_cfg, %struct.dpcon_notification_cfg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dpcon_cmd_set_notification*, %struct.dpcon_cmd_set_notification** %10, align 8
  %30 = getelementptr inbounds %struct.dpcon_cmd_set_notification, %struct.dpcon_cmd_set_notification* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dpcon_notification_cfg*, %struct.dpcon_notification_cfg** %8, align 8
  %32 = getelementptr inbounds %struct.dpcon_notification_cfg, %struct.dpcon_notification_cfg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpu_to_le64(i32 %33)
  %35 = load %struct.dpcon_cmd_set_notification*, %struct.dpcon_cmd_set_notification** %10, align 8
  %36 = getelementptr inbounds %struct.dpcon_cmd_set_notification, %struct.dpcon_cmd_set_notification* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %38 = call i32 @mc_send_command(%struct.fsl_mc_io* %37, %struct.fsl_mc_command* %9)
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le64(i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

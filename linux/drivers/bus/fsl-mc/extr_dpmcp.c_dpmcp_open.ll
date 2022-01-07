; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dpmcp.c_dpmcp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dpmcp.c_dpmcp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpmcp_cmd_open = type { i32 }

@DPMCP_CMDID_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpmcp_open(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fsl_mc_command, align 8
  %11 = alloca %struct.dpmcp_cmd_open*, align 8
  %12 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = bitcast %struct.fsl_mc_command* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @DPMCP_CMDID_OPEN, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @mc_encode_cmd_header(i32 %14, i32 %15, i32 0)
  %17 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %10, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %10, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.dpmcp_cmd_open*
  store %struct.dpmcp_cmd_open* %20, %struct.dpmcp_cmd_open** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = load %struct.dpmcp_cmd_open*, %struct.dpmcp_cmd_open** %11, align 8
  %24 = getelementptr inbounds %struct.dpmcp_cmd_open, %struct.dpmcp_cmd_open* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %6, align 8
  %26 = call i32 @mc_send_command(%struct.fsl_mc_io* %25, %struct.fsl_mc_command* %10)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %35

31:                                               ; preds = %4
  %32 = call i32 @mc_cmd_hdr_read_token(%struct.fsl_mc_command* %10)
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %29
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i32 @mc_cmd_hdr_read_token(%struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

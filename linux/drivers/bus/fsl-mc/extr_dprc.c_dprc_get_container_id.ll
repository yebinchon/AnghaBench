; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc.c_dprc_get_container_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc.c_dprc_get_container_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.fsl_mc_command = type { i32, i32 }

@DPRC_CMDID_GET_CONT_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dprc_get_container_id(%struct.fsl_mc_io* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_mc_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fsl_mc_command, align 4
  %9 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = bitcast %struct.fsl_mc_command* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i32, i32* @DPRC_CMDID_GET_CONT_ID, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @mc_encode_cmd_header(i32 %11, i32 %12, i32 0)
  %14 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %8, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %16 = call i32 @mc_send_command(%struct.fsl_mc_io* %15, %struct.fsl_mc_command* %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %25

21:                                               ; preds = %3
  %22 = call i64 @mc_cmd_read_object_id(%struct.fsl_mc_command* %8)
  %23 = trunc i64 %22 to i32
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i64 @mc_cmd_read_object_id(%struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

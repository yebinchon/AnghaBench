; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_mc_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_fsl-mc-bus.c_mc_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.mc_version = type { i8*, i8*, i8* }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpmng_rsp_get_version = type { i32, i32, i32 }

@DPMNG_CMDID_GET_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_io*, i32, %struct.mc_version*)* @mc_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc_get_version(%struct.fsl_mc_io* %0, i32 %1, %struct.mc_version* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_mc_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mc_version*, align 8
  %8 = alloca %struct.fsl_mc_command, align 8
  %9 = alloca %struct.dpmng_rsp_get_version*, align 8
  %10 = alloca i32, align 4
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mc_version* %2, %struct.mc_version** %7, align 8
  %11 = bitcast %struct.fsl_mc_command* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  %12 = load i32, i32* @DPMNG_CMDID_GET_VERSION, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @mc_encode_cmd_header(i32 %12, i32 %13, i32 0)
  %15 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %8, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %5, align 8
  %17 = call i32 @mc_send_command(%struct.fsl_mc_io* %16, %struct.fsl_mc_command* %8)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %44

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.dpmng_rsp_get_version*
  store %struct.dpmng_rsp_get_version* %25, %struct.dpmng_rsp_get_version** %9, align 8
  %26 = load %struct.dpmng_rsp_get_version*, %struct.dpmng_rsp_get_version** %9, align 8
  %27 = getelementptr inbounds %struct.dpmng_rsp_get_version, %struct.dpmng_rsp_get_version* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @le32_to_cpu(i32 %28)
  %30 = load %struct.mc_version*, %struct.mc_version** %7, align 8
  %31 = getelementptr inbounds %struct.mc_version, %struct.mc_version* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.dpmng_rsp_get_version*, %struct.dpmng_rsp_get_version** %9, align 8
  %33 = getelementptr inbounds %struct.dpmng_rsp_get_version, %struct.dpmng_rsp_get_version* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le32_to_cpu(i32 %34)
  %36 = load %struct.mc_version*, %struct.mc_version** %7, align 8
  %37 = getelementptr inbounds %struct.mc_version, %struct.mc_version* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.dpmng_rsp_get_version*, %struct.dpmng_rsp_get_version** %9, align 8
  %39 = getelementptr inbounds %struct.dpmng_rsp_get_version, %struct.dpmng_rsp_get_version* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le32_to_cpu(i32 %40)
  %42 = load %struct.mc_version*, %struct.mc_version** %7, align 8
  %43 = getelementptr inbounds %struct.mc_version, %struct.mc_version* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %22, %20
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

declare dso_local i8* @le32_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

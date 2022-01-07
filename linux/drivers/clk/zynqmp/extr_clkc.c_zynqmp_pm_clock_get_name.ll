; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_pm_clock_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_pm_clock_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32, i32*)* }
%struct.name_resp = type { i32 }
%struct.zynqmp_pm_query_data = type { i32, i32, i32 }

@PAYLOAD_ARG_CNT = common dso_local global i32 0, align 4
@PM_QID_CLOCK_GET_NAME = common dso_local global i32 0, align 4
@eemi_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.name_resp*)* @zynqmp_pm_clock_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_pm_clock_get_name(i32 %0, %struct.name_resp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.name_resp*, align 8
  %5 = alloca %struct.zynqmp_pm_query_data, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %3, align 4
  store %struct.name_resp* %1, %struct.name_resp** %4, align 8
  %9 = bitcast %struct.zynqmp_pm_query_data* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  %10 = load i32, i32* @PAYLOAD_ARG_CNT, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @PM_QID_CLOCK_GET_NAME, align 4
  %15 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %5, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eemi_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i64, i32, i32*)*, i32 (i64, i32, i32*)** %19, align 8
  %21 = bitcast { i64, i32 }* %8 to i8*
  %22 = bitcast %struct.zynqmp_pm_query_data* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 12, i1 false)
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 4
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %20(i64 %24, i32 %26, i32* %13)
  %28 = load %struct.name_resp*, %struct.name_resp** %4, align 8
  %29 = call i32 @memcpy(%struct.name_resp* %28, i32* %13, i32 4)
  %30 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %30)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.name_resp*, i32*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

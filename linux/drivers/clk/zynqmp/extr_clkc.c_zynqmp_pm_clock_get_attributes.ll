; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_pm_clock_get_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_pm_clock_get_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32, i32*)* }
%struct.attr_resp = type { i32 }
%struct.zynqmp_pm_query_data = type { i32, i32, i32 }

@PAYLOAD_ARG_CNT = common dso_local global i32 0, align 4
@PM_QID_CLOCK_GET_ATTRIBUTES = common dso_local global i32 0, align 4
@eemi_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.attr_resp*)* @zynqmp_pm_clock_get_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_pm_clock_get_attributes(i32 %0, %struct.attr_resp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.attr_resp*, align 8
  %5 = alloca %struct.zynqmp_pm_query_data, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca { i64, i32 }, align 4
  store i32 %0, i32* %3, align 4
  store %struct.attr_resp* %1, %struct.attr_resp** %4, align 8
  %10 = bitcast %struct.zynqmp_pm_query_data* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = load i32, i32* @PAYLOAD_ARG_CNT, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @PM_QID_CLOCK_GET_ATTRIBUTES, align 4
  %16 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %5, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eemi_ops, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i64, i32, i32*)*, i32 (i64, i32, i32*)** %20, align 8
  %22 = bitcast { i64, i32 }* %9 to i8*
  %23 = bitcast %struct.zynqmp_pm_query_data* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %25 = load i64, i64* %24, align 4
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %21(i64 %25, i32 %27, i32* %14)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.attr_resp*, %struct.attr_resp** %4, align 8
  %30 = getelementptr inbounds i32, i32* %14, i64 1
  %31 = call i32 @memcpy(%struct.attr_resp* %29, i32* %30, i32 4)
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %33)
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.attr_resp*, i32*, i32) #3

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

; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_pm_clock_get_num_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zynqmp/extr_clkc.c_zynqmp_pm_clock_get_num_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64, i32*)* }
%struct.zynqmp_pm_query_data = type { i32, i32 }

@PAYLOAD_ARG_CNT = common dso_local global i32 0, align 4
@PM_QID_CLOCK_GET_NUM_CLOCKS = common dso_local global i32 0, align 4
@eemi_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zynqmp_pm_clock_get_num_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_pm_clock_get_num_clocks(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.zynqmp_pm_query_data, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = bitcast %struct.zynqmp_pm_query_data* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load i32, i32* @PAYLOAD_ARG_CNT, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @PM_QID_CLOCK_GET_NUM_CLOCKS, align 4
  %13 = getelementptr inbounds %struct.zynqmp_pm_query_data, %struct.zynqmp_pm_query_data* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eemi_ops, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i64, i32*)*, i32 (i64, i32*)** %15, align 8
  %17 = bitcast %struct.zynqmp_pm_query_data* %3 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = call i32 %16(i64 %18, i32* %11)
  store i32 %19, i32* %6, align 4
  %20 = getelementptr inbounds i32, i32* %11, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %2, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %24)
  ret i32 %23
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

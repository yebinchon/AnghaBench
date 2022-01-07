; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_NvAPI_GPU_GetBusSlotId.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_NvAPI_GPU_GetBusSlotId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32 (i32, i32*)* }
%struct.TYPE_12__ = type { i32 }

@NVAPI_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"NvAPI_GPU_GetBusSlotId(): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32*)* @hm_NvAPI_GPU_GetBusSlotId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hm_NvAPI_GPU_GetBusSlotId(%struct.TYPE_11__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %9, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32 (i32, i32*)*, i32 (i32, i32*)** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 %21(i32 %22, i32* %23)
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @NVAPI_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = bitcast %struct.TYPE_12__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 4, i1 false)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @hm_NvAPI_GetErrorMessage(%struct.TYPE_13__* %31, i64 %32, i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @event_log_error(%struct.TYPE_11__* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 -1, i32* %4, align 4
  br label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hm_NvAPI_GetErrorMessage(%struct.TYPE_13__*, i64, i32) #2

declare dso_local i32 @event_log_error(%struct.TYPE_11__*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

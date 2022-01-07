; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_vio_ldc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_vio_ldc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { %struct.ldc_channel*, i32, %struct.TYPE_2__* }
%struct.ldc_channel = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ldc_channel_config = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vio_ldc_alloc(%struct.vio_driver_state* %0, %struct.ldc_channel_config* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vio_driver_state*, align 8
  %6 = alloca %struct.ldc_channel_config*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ldc_channel_config, align 4
  %9 = alloca %struct.ldc_channel*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %5, align 8
  store %struct.ldc_channel_config* %1, %struct.ldc_channel_config** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.ldc_channel_config*, %struct.ldc_channel_config** %6, align 8
  %11 = bitcast %struct.ldc_channel_config* %8 to i8*
  %12 = bitcast %struct.ldc_channel_config* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 8, i1 false)
  %13 = load %struct.vio_driver_state*, %struct.vio_driver_state** %5, align 8
  %14 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ldc_channel_config, %struct.ldc_channel_config* %8, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.vio_driver_state*, %struct.vio_driver_state** %5, align 8
  %20 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ldc_channel_config, %struct.ldc_channel_config* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.vio_driver_state*, %struct.vio_driver_state** %5, align 8
  %26 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.vio_driver_state*, %struct.vio_driver_state** %5, align 8
  %32 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.ldc_channel* @ldc_alloc(i32 %29, %struct.ldc_channel_config* %8, i8* %30, i32 %33)
  store %struct.ldc_channel* %34, %struct.ldc_channel** %9, align 8
  %35 = load %struct.ldc_channel*, %struct.ldc_channel** %9, align 8
  %36 = call i64 @IS_ERR(%struct.ldc_channel* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load %struct.ldc_channel*, %struct.ldc_channel** %9, align 8
  %40 = call i32 @PTR_ERR(%struct.ldc_channel* %39)
  store i32 %40, i32* %4, align 4
  br label %45

41:                                               ; preds = %3
  %42 = load %struct.ldc_channel*, %struct.ldc_channel** %9, align 8
  %43 = load %struct.vio_driver_state*, %struct.vio_driver_state** %5, align 8
  %44 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %43, i32 0, i32 0
  store %struct.ldc_channel* %42, %struct.ldc_channel** %44, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ldc_channel* @ldc_alloc(i32, %struct.ldc_channel_config*, i8*, i32) #2

declare dso_local i64 @IS_ERR(%struct.ldc_channel*) #2

declare dso_local i32 @PTR_ERR(%struct.ldc_channel*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

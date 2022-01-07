; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_ver_nack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_ver_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32 }
%struct.vio_ver_info = type { i64, i64, i32 }
%struct.vio_version = type { i32, i32 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"GOT VERSION NACK maj[%u] min[%u] devclass[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, %struct.vio_ver_info*)* @process_ver_nack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ver_nack(%struct.vio_driver_state* %0, %struct.vio_ver_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca %struct.vio_ver_info*, align 8
  %6 = alloca %struct.vio_version*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store %struct.vio_ver_info* %1, %struct.vio_ver_info** %5, align 8
  %7 = load i32, i32* @HS, align 4
  %8 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %9 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %12 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %15 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @viodbg(i32 %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %13, i32 %16)
  %18 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %19 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %24 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %29 = call i32 @handshake_failure(%struct.vio_driver_state* %28)
  store i32 %29, i32* %3, align 4
  br label %55

30:                                               ; preds = %22, %2
  %31 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %32 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %33 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call %struct.vio_version* @find_by_major(%struct.vio_driver_state* %31, i64 %34)
  store %struct.vio_version* %35, %struct.vio_version** %6, align 8
  %36 = load %struct.vio_version*, %struct.vio_version** %6, align 8
  %37 = icmp ne %struct.vio_version* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %40 = call i32 @handshake_failure(%struct.vio_driver_state* %39)
  store i32 %40, i32* %3, align 4
  br label %55

41:                                               ; preds = %30
  %42 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %43 = load %struct.vio_version*, %struct.vio_version** %6, align 8
  %44 = getelementptr inbounds %struct.vio_version, %struct.vio_version* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vio_version*, %struct.vio_version** %6, align 8
  %47 = getelementptr inbounds %struct.vio_version, %struct.vio_version* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @send_version(%struct.vio_driver_state* %42, i32 %45, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %53 = call i32 @handshake_failure(%struct.vio_driver_state* %52)
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %51, %38, %27
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @viodbg(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @handshake_failure(%struct.vio_driver_state*) #1

declare dso_local %struct.vio_version* @find_by_major(%struct.vio_driver_state*, i64) #1

declare dso_local i64 @send_version(%struct.vio_driver_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

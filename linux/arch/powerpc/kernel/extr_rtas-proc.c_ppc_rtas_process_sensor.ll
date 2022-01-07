; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas-proc.c_ppc_rtas_process_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtas-proc.c_ppc_rtas_process_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.individual_sensor = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Off\09\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Normal\09\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Secure\09\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Maintenance\00", align 1
@__const.ppc_rtas_process_sensor.key_switch = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"Closed\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Open\00", align 1
@__const.ppc_rtas_process_sensor.enclosure_switch = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__const.ppc_rtas_process_sensor.lid_status = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"AC\09\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Battery\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"AC & Battery\00", align 1
@__const.ppc_rtas_process_sensor.power_source = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [9 x i8] c"Very Low\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Low\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"Mid\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@__const.ppc_rtas_process_sensor.battery_remaining = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str.14 = private unnamed_addr constant [11 x i8] c"EPOW Reset\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Cooling warning\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Power warning\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"System shutdown\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"System halt\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"EPOW main enclosure\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"EPOW power off\00", align 1
@__const.ppc_rtas_process_sensor.epow_sensor = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)], align 16
@.str.21 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"In progress\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Requested\00", align 1
@__const.ppc_rtas_process_sensor.battery_cyclestate = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0)], align 16
@.str.24 = private unnamed_addr constant [9 x i8] c"Charging\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Discharging\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"No current flow\00", align 1
@__const.ppc_rtas_process_sensor.battery_charging = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0)], align 16
@.str.27 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Present\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"Unusable\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Exchange\00", align 1
@__const.ppc_rtas_process_sensor.ibm_drconnector = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0)], align 16
@.str.31 = private unnamed_addr constant [13 x i8] c"Key switch:\09\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"Enclosure switch:\09\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Temp. (C/F):\09\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Lid status:\09\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"Power source:\09\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Battery voltage:\09\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"Battery remaining:\09\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"Battery percentage:\09\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"EPOW Sensor:\09\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"Battery cyclestate:\09\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"Battery Charging:\09\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Surveillance:\09\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"Fan (rpm):\09\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"Voltage (mv):\09\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"DR connector:\09\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"Powersupply:\09\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"Unknown sensor (type %d), ignoring it\0A\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"%4d /%4d\09\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"%10d\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.individual_sensor*, i32, i32, i8*)* @ppc_rtas_process_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc_rtas_process_sensor(%struct.seq_file* %0, %struct.individual_sensor* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca %struct.individual_sensor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [4 x i8*], align 16
  %12 = alloca [2 x i8*], align 16
  %13 = alloca [3 x i8*], align 16
  %14 = alloca [3 x i8*], align 16
  %15 = alloca [4 x i8*], align 16
  %16 = alloca [7 x i8*], align 16
  %17 = alloca [3 x i8*], align 16
  %18 = alloca [3 x i8*], align 16
  %19 = alloca [4 x i8*], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %6, align 8
  store %struct.individual_sensor* %1, %struct.individual_sensor** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %24 = bitcast [4 x i8*]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 bitcast ([4 x i8*]* @__const.ppc_rtas_process_sensor.key_switch to i8*), i64 32, i1 false)
  %25 = bitcast [2 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([2 x i8*]* @__const.ppc_rtas_process_sensor.enclosure_switch to i8*), i64 16, i1 false)
  %26 = bitcast [3 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([3 x i8*]* @__const.ppc_rtas_process_sensor.lid_status to i8*), i64 24, i1 false)
  %27 = bitcast [3 x i8*]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([3 x i8*]* @__const.ppc_rtas_process_sensor.power_source to i8*), i64 24, i1 false)
  %28 = bitcast [4 x i8*]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([4 x i8*]* @__const.ppc_rtas_process_sensor.battery_remaining to i8*), i64 32, i1 false)
  %29 = bitcast [7 x i8*]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 16 bitcast ([7 x i8*]* @__const.ppc_rtas_process_sensor.epow_sensor to i8*), i64 56, i1 false)
  %30 = bitcast [3 x i8*]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([3 x i8*]* @__const.ppc_rtas_process_sensor.battery_cyclestate to i8*), i64 24, i1 false)
  %31 = bitcast [3 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([3 x i8*]* @__const.ppc_rtas_process_sensor.battery_charging to i8*), i64 24, i1 false)
  %32 = bitcast [4 x i8*]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 16 bitcast ([4 x i8*]* @__const.ppc_rtas_process_sensor.ibm_drconnector to i8*), i64 32, i1 false)
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %33 = load %struct.individual_sensor*, %struct.individual_sensor** %7, align 8
  %34 = getelementptr inbounds %struct.individual_sensor, %struct.individual_sensor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %183 [
    i32 131, label %36
    i32 138, label %50
    i32 128, label %64
    i32 130, label %67
    i32 129, label %81
    i32 139, label %95
    i32 140, label %98
    i32 141, label %112
    i32 137, label %115
    i32 142, label %129
    i32 143, label %143
    i32 133, label %157
    i32 135, label %160
    i32 132, label %163
    i32 136, label %166
    i32 134, label %180
  ]

36:                                               ; preds = %5
  %37 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %38 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0))
  store i32 4, i32* %21, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %21, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %47)
  store i32 1, i32* %20, align 4
  br label %49

49:                                               ; preds = %42, %36
  br label %189

50:                                               ; preds = %5
  %51 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %52 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0))
  store i32 2, i32* %21, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %21, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %61)
  store i32 1, i32* %20, align 4
  br label %63

63:                                               ; preds = %56, %50
  br label %189

64:                                               ; preds = %5
  %65 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %66 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0))
  store i32 1, i32* %22, align 4
  br label %189

67:                                               ; preds = %5
  %68 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %69 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  store i32 3, i32* %21, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %21, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %78)
  store i32 1, i32* %20, align 4
  br label %80

80:                                               ; preds = %73, %67
  br label %189

81:                                               ; preds = %5
  %82 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %83 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0))
  store i32 3, i32* %21, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %21, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x i8*], [3 x i8*]* %14, i64 0, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %92)
  store i32 1, i32* %20, align 4
  br label %94

94:                                               ; preds = %87, %81
  br label %189

95:                                               ; preds = %5
  %96 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %97 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0))
  br label %189

98:                                               ; preds = %5
  %99 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %100 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0))
  store i32 4, i32* %21, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %21, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8*], [4 x i8*]* %15, i64 0, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %109)
  store i32 1, i32* %20, align 4
  br label %111

111:                                              ; preds = %104, %98
  br label %189

112:                                              ; preds = %5
  %113 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %114 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0))
  br label %189

115:                                              ; preds = %5
  %116 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %117 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0))
  store i32 7, i32* %21, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %21, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [7 x i8*], [7 x i8*]* %16, i64 0, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %126)
  store i32 1, i32* %20, align 4
  br label %128

128:                                              ; preds = %121, %115
  br label %189

129:                                              ; preds = %5
  %130 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %131 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0))
  store i32 3, i32* %21, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %21, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x i8*], [3 x i8*]* %17, i64 0, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %140)
  store i32 1, i32* %20, align 4
  br label %142

142:                                              ; preds = %135, %129
  br label %189

143:                                              ; preds = %5
  %144 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %145 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0))
  store i32 3, i32* %21, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %21, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %143
  %150 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %154)
  store i32 1, i32* %20, align 4
  br label %156

156:                                              ; preds = %149, %143
  br label %189

157:                                              ; preds = %5
  %158 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %159 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %158, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0))
  br label %189

160:                                              ; preds = %5
  %161 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %162 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0))
  br label %189

163:                                              ; preds = %5
  %164 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %165 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %164, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0))
  br label %189

166:                                              ; preds = %5
  %167 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %168 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %167, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0))
  store i32 4, i32* %21, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %21, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* %177)
  store i32 1, i32* %20, align 4
  br label %179

179:                                              ; preds = %172, %166
  br label %189

180:                                              ; preds = %5
  %181 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %182 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %181, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0))
  br label %189

183:                                              ; preds = %5
  %184 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %185 = load %struct.individual_sensor*, %struct.individual_sensor** %7, align 8
  %186 = getelementptr inbounds %struct.individual_sensor, %struct.individual_sensor* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %184, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0), i32 %187)
  store i32 1, i32* %23, align 4
  store i32 1, i32* %20, align 4
  br label %189

189:                                              ; preds = %183, %180, %179, %163, %160, %157, %156, %142, %128, %112, %111, %95, %94, %80, %64, %63, %49
  %190 = load i32, i32* %20, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %189
  %193 = load i32, i32* %22, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = call i32 @cel_to_fahr(i32 %198)
  %200 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %196, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0), i32 %197, i32 %199)
  br label %205

201:                                              ; preds = %192
  %202 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %203 = load i32, i32* %8, align 4
  %204 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %201, %195
  br label %206

206:                                              ; preds = %205, %189
  %207 = load i32, i32* %23, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %206
  %210 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @ppc_rtas_process_error(i32 %211)
  %213 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32 %212)
  %214 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %215 = load %struct.individual_sensor*, %struct.individual_sensor** %7, align 8
  %216 = load i8*, i8** %10, align 8
  %217 = call i32 @get_location_code(%struct.seq_file* %214, %struct.individual_sensor* %215, i8* %216)
  br label %218

218:                                              ; preds = %209, %206
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #2

declare dso_local i32 @cel_to_fahr(i32) #2

declare dso_local i32 @ppc_rtas_process_error(i32) #2

declare dso_local i32 @get_location_code(%struct.seq_file*, %struct.individual_sensor*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

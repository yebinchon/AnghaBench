; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_ver_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_viohs.c_process_ver_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i64, %struct.vio_version, i32, i32 }
%struct.vio_version = type { i64, i64 }
%struct.vio_ver_info = type { i64, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"GOT VERSION INFO maj[%u] min[%u] devclass[%u]\0A\00", align 1
@VIO_HS_INVALID = common dso_local global i64 0, align 8
@VIO_SUBTYPE_NACK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"SEND VERSION NACK maj[0] min[0]\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"SEND VERSION NACK maj[%u] min[%u]\0A\00", align 1
@VIO_SUBTYPE_ACK = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"SEND VERSION ACK maj[%u] min[%u]\0A\00", align 1
@VIO_HS_GOTVERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, %struct.vio_ver_info*)* @process_ver_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ver_info(%struct.vio_driver_state* %0, %struct.vio_ver_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca %struct.vio_ver_info*, align 8
  %6 = alloca %struct.vio_version*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vio_version, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store %struct.vio_ver_info* %1, %struct.vio_ver_info** %5, align 8
  %9 = load i32, i32* @HS, align 4
  %10 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %11 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %14 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %17 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @viodbg(i32 %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %15, i32 %18)
  %20 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %21 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VIO_HS_INVALID, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %27 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %26, i32 0, i32 1
  %28 = call i32 @memset(%struct.vio_version* %27, i32 0, i32 16)
  %29 = load i64, i64* @VIO_HS_INVALID, align 8
  %30 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %31 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %2
  %33 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %34 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %35 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.vio_version* @find_by_major(%struct.vio_driver_state* %33, i64 %36)
  store %struct.vio_version* %37, %struct.vio_version** %6, align 8
  %38 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %39 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %43 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.vio_version*, %struct.vio_version** %6, align 8
  %45 = icmp ne %struct.vio_version* %44, null
  br i1 %45, label %61, label %46

46:                                               ; preds = %32
  %47 = load i8*, i8** @VIO_SUBTYPE_NACK, align 8
  %48 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %49 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %52 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %54 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @HS, align 4
  %56 = call i32 (i32, i8*, ...) @viodbg(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %58 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %59 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %58, i32 0, i32 2
  %60 = call i32 @send_ctrl(%struct.vio_driver_state* %57, %struct.TYPE_2__* %59, i32 40)
  store i32 %60, i32* %7, align 4
  br label %154

61:                                               ; preds = %32
  %62 = load %struct.vio_version*, %struct.vio_version** %6, align 8
  %63 = getelementptr inbounds %struct.vio_version, %struct.vio_version* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %66 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %96

69:                                               ; preds = %61
  %70 = load i8*, i8** @VIO_SUBTYPE_NACK, align 8
  %71 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %72 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  %74 = load %struct.vio_version*, %struct.vio_version** %6, align 8
  %75 = getelementptr inbounds %struct.vio_version, %struct.vio_version* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %78 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.vio_version*, %struct.vio_version** %6, align 8
  %80 = getelementptr inbounds %struct.vio_version, %struct.vio_version* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %83 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @HS, align 4
  %85 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %86 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %89 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i32, i8*, ...) @viodbg(i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %87, i64 %90)
  %92 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %93 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %94 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %93, i32 0, i32 2
  %95 = call i32 @send_ctrl(%struct.vio_driver_state* %92, %struct.TYPE_2__* %94, i32 40)
  store i32 %95, i32* %7, align 4
  br label %153

96:                                               ; preds = %61
  %97 = getelementptr inbounds %struct.vio_version, %struct.vio_version* %8, i32 0, i32 0
  %98 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %99 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %97, align 8
  %101 = getelementptr inbounds %struct.vio_version, %struct.vio_version* %8, i32 0, i32 1
  %102 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %103 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %101, align 8
  %105 = getelementptr inbounds %struct.vio_version, %struct.vio_version* %8, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.vio_version*, %struct.vio_version** %6, align 8
  %108 = getelementptr inbounds %struct.vio_version, %struct.vio_version* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %106, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %96
  %112 = load %struct.vio_version*, %struct.vio_version** %6, align 8
  %113 = getelementptr inbounds %struct.vio_version, %struct.vio_version* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.vio_version, %struct.vio_version* %8, i32 0, i32 1
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %111, %96
  %117 = getelementptr inbounds %struct.vio_version, %struct.vio_version* %8, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %120 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  %121 = load i8*, i8** @VIO_SUBTYPE_ACK, align 8
  %122 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %123 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i8* %121, i8** %124, align 8
  %125 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %126 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %129 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @HS, align 4
  %131 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %132 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %135 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i32 (i32, i8*, ...) @viodbg(i32 %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %133, i64 %136)
  %138 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %139 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %140 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %139, i32 0, i32 2
  %141 = call i32 @send_ctrl(%struct.vio_driver_state* %138, %struct.TYPE_2__* %140, i32 40)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %116
  %145 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %146 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %145, i32 0, i32 1
  %147 = bitcast %struct.vio_version* %146 to i8*
  %148 = bitcast %struct.vio_version* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 16, i1 false)
  %149 = load i64, i64* @VIO_HS_GOTVERS, align 8
  %150 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %151 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %144, %116
  br label %153

153:                                              ; preds = %152, %69
  br label %154

154:                                              ; preds = %153, %46
  %155 = load i32, i32* %7, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %159 = call i32 @handshake_failure(%struct.vio_driver_state* %158)
  store i32 %159, i32* %3, align 4
  br label %161

160:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %157
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @viodbg(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.vio_version*, i32, i32) #1

declare dso_local %struct.vio_version* @find_by_major(%struct.vio_driver_state*, i64) #1

declare dso_local i32 @send_ctrl(%struct.vio_driver_state*, %struct.TYPE_2__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @handshake_failure(%struct.vio_driver_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

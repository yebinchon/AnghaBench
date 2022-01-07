; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i64, %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.path }
%struct.path = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.loop_info64 = type { i8*, i32, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.kstat = type { i32, i32, i32 }

@loop_ctl_mutex = common dso_local global i32 0, align 4
@Lo_bound = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@LO_NAME_SIZE = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@STATX_INO = common dso_local global i32 0, align 4
@AT_STATX_SYNC_AS_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.loop_info64*)* @loop_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_get_status(%struct.loop_device* %0, %struct.loop_info64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop_device*, align 8
  %5 = alloca %struct.loop_info64*, align 8
  %6 = alloca %struct.path, align 4
  %7 = alloca %struct.kstat, align 4
  %8 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %4, align 8
  store %struct.loop_info64* %1, %struct.loop_info64** %5, align 8
  %9 = call i32 @mutex_lock_killable(i32* @loop_ctl_mutex)
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %3, align 4
  br label %134

14:                                               ; preds = %2
  %15 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %16 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @Lo_bound, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %134

24:                                               ; preds = %14
  %25 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %26 = call i32 @memset(%struct.loop_info64* %25, i32 0, i32 72)
  %27 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %28 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %31 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %30, i32 0, i32 11
  store i32 %29, i32* %31, align 8
  %32 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %33 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %36 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 4
  %37 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %38 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %41 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 8
  %42 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %43 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %46 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 4
  %47 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %48 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %51 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @LO_NAME_SIZE, align 8
  %54 = call i32 @memcpy(i32 %49, i32 %52, i64 %53)
  %55 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %56 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %59 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* @LO_NAME_SIZE, align 8
  %62 = call i32 @memcpy(i32 %57, i32 %60, i64 %61)
  %63 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %64 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %63, i32 0, i32 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = icmp ne %struct.TYPE_3__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %24
  %68 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %69 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %68, i32 0, i32 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  br label %74

73:                                               ; preds = %24
  br label %74

74:                                               ; preds = %73, %67
  %75 = phi i32 [ %72, %67 ], [ 0, %73 ]
  %76 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %77 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %79 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %74
  %83 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %84 = call i64 @capable(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %88 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %91 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %90, i32 0, i32 4
  store i64 %89, i64* %91, align 8
  %92 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %93 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %96 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %99 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @memcpy(i32 %94, i32 %97, i64 %100)
  br label %102

102:                                              ; preds = %86, %82, %74
  %103 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %104 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = bitcast %struct.path* %6 to i8*
  %108 = bitcast %struct.path* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 4, i1 false)
  %109 = call i32 @path_get(%struct.path* %6)
  %110 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  %111 = load i32, i32* @STATX_INO, align 4
  %112 = load i32, i32* @AT_STATX_SYNC_AS_STAT, align 4
  %113 = call i32 @vfs_getattr(%struct.path* %6, %struct.kstat* %7, i32 %111, i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %102
  %117 = getelementptr inbounds %struct.kstat, %struct.kstat* %7, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @huge_encode_dev(i32 %118)
  %120 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %121 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = getelementptr inbounds %struct.kstat, %struct.kstat* %7, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %125 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  %126 = getelementptr inbounds %struct.kstat, %struct.kstat* %7, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @huge_encode_dev(i32 %127)
  %129 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %130 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %116, %102
  %132 = call i32 @path_put(%struct.path* %6)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %131, %20, %12
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @mutex_lock_killable(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(%struct.loop_info64*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i64 @capable(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @vfs_getattr(%struct.path*, %struct.kstat*, i32, i32) #1

declare dso_local i8* @huge_encode_dev(i32) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

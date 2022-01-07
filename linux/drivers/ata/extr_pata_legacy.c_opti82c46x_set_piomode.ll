; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_legacy.c_opti82c46x_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_legacy.c_opti82c46x_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ata_port* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.ata_device = type { i32, i32 }
%struct.ata_timing = type { i32, i32, i32 }

@__const.opti82c46x_set_piomode.khz = private unnamed_addr constant [4 x i32] [i32 50000, i32 40000, i32 33000, i32 25000], align 16
@ATA_TIMING_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @opti82c46x_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opti82c46x_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ata_timing, align 4
  %9 = alloca %struct.ata_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ata_timing, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %15)
  store %struct.ata_device* %16, %struct.ata_device** %9, align 8
  %17 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([4 x i32]* @__const.opti82c46x_set_piomode.khz to i8*), i64 16, i1 false)
  %18 = call i32 @opti_syscfg(i32 172)
  %19 = and i32 %18, 192
  %20 = ashr i32 %19, 6
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %13, align 8
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ioread16(i32 %25)
  %27 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ioread16(i32 %30)
  %32 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @iowrite8(i32 3, i32 %35)
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 1000000000, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %42 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %43 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ata_timing_compute(%struct.ata_device* %41, i32 %44, %struct.ata_timing* %8, i32 %45, i32 1000)
  %47 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %48 = icmp ne %struct.ata_device* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %2
  %50 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %51 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %52 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @ata_timing_compute(%struct.ata_device* %50, i32 %53, %struct.ata_timing* %14, i32 %54, i32 1000)
  %56 = load i32, i32* @ATA_TIMING_SETUP, align 4
  %57 = call i32 @ata_timing_merge(%struct.ata_timing* %8, %struct.ata_timing* %14, %struct.ata_timing* %8, i32 %56)
  br label %58

58:                                               ; preds = %49, %2
  %59 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @clamp_val(i32 %60, i32 2, i32 17)
  %62 = sub i64 %61, 2
  store i64 %62, i64* %5, align 8
  %63 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @clamp_val(i32 %64, i32 1, i32 16)
  %66 = sub i64 %65, 1
  store i64 %66, i64* %6, align 8
  %67 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @clamp_val(i32 %68, i32 1, i32 4)
  %70 = sub i64 %69, 1
  store i64 %70, i64* %7, align 8
  %71 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %72 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ioread8(i32 %74)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = and i64 %76, 127
  store i64 %77, i64* %12, align 8
  %78 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %79 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 7
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %12, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %12, align 8
  %86 = trunc i64 %85 to i32
  %87 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %88 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @iowrite8(i32 %86, i32 %90)
  %92 = load i64, i64* %5, align 8
  %93 = shl i64 %92, 4
  %94 = load i64, i64* %6, align 8
  %95 = or i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %98 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @iowrite8(i32 %96, i32 %100)
  %102 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %103 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @ioread8(i32 %105)
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %12, align 8
  %108 = and i64 %107, 192
  store i64 %108, i64* %12, align 8
  %109 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %110 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %12, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %12, align 8
  %115 = load i64, i64* %7, align 8
  %116 = shl i64 %115, 4
  %117 = or i64 %116, 4
  %118 = load i64, i64* %12, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %12, align 8
  %120 = load i64, i64* %12, align 8
  %121 = trunc i64 %120 to i32
  %122 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %123 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @iowrite8(i32 %121, i32 %125)
  %127 = load i64, i64* %5, align 8
  %128 = shl i64 %127, 4
  %129 = load i64, i64* %6, align 8
  %130 = or i64 %128, %129
  %131 = trunc i64 %130 to i32
  %132 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %133 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @iowrite8(i32 %131, i32 %135)
  %137 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %138 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @ioread8(i32 %140)
  store i64 %141, i64* %12, align 8
  %142 = load i64, i64* %12, align 8
  %143 = and i64 %142, 115
  store i64 %143, i64* %12, align 8
  %144 = load i64, i64* %12, align 8
  %145 = or i64 %144, 132
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* %12, align 8
  %147 = trunc i64 %146 to i32
  %148 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %149 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @iowrite8(i32 %147, i32 %151)
  %153 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %154 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @iowrite8(i32 131, i32 %156)
  %158 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %159 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %160 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store %struct.ata_port* %158, %struct.ata_port** %162, align 8
  ret void
}

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @opti_syscfg(i32) #1

declare dso_local i32 @ioread16(i32) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @ata_timing_merge(%struct.ata_timing*, %struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i64 @clamp_val(i32, i32, i32) #1

declare dso_local i64 @ioread8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

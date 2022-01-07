; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.octeon_cf_port* }
%struct.octeon_cf_port = type { i32, i64, i32 }
%struct.ata_device = type { i32 }
%union.cvmx_mio_boot_reg_timx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64, i8*, i64, i64, i64, i64, i64 }
%struct.ata_timing = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @octeon_cf_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_cf_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.octeon_cf_port*, align 8
  %6 = alloca %union.cvmx_mio_boot_reg_timx, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_timing, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 0
  %16 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %15, align 8
  store %struct.octeon_cf_port* %16, %struct.octeon_cf_port** %5, align 8
  %17 = call i64 (...) @octeon_get_io_clock_rate()
  %18 = icmp sle i64 %17, 800000000
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 4, i32* %9, align 4
  br label %21

20:                                               ; preds = %2
  store i32 8, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = mul nsw i64 1000000000000, %23
  %25 = call i64 (...) @octeon_get_io_clock_rate()
  %26 = sdiv i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %29 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %30 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ata_timing_compute(%struct.ata_device* %28, i32 %31, %struct.ata_timing* %8, i32 %32, i32 %33)
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %40, %21
  %44 = load i32, i32* %9, align 4
  %45 = call i8* @ns_to_tim_reg(i32 %44, i32 20)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %43
  %53 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %55, %57
  %59 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = sub nsw i32 %58, %61
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %67, %52
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %76 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @octeon_cf_set_boot_reg_cfg(i32 %77, i32 %78)
  %80 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %81 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %86 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @octeon_cf_set_boot_reg_cfg(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %84, %74
  %91 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %92 = call i32 @ata_pio_need_iordy(%struct.ata_device* %91)
  store i32 %92, i32* %10, align 4
  %93 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %94 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @CVMX_MIO_BOOT_REG_TIMX(i32 %95)
  %97 = call i32 @cvmx_read_csr(i32 %96)
  %98 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to i32*
  store i32 %97, i32* %98, align 8
  %99 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_2__*
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 12
  store i64 0, i64* %100, align 8
  %101 = load i32, i32* %10, align 4
  %102 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_2__*
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_2__*
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 11
  store i64 0, i64* %105, align 8
  %106 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_2__*
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 10
  store i64 0, i64* %107, align 8
  %108 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_2__*
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 9
  store i64 0, i64* %109, align 8
  %110 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_2__*
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 8
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* %12, align 4
  %113 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_2__*
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %11, align 4
  %116 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_2__*
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* %11, align 4
  %119 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_2__*
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %13, align 4
  %122 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_2__*
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %13, align 4
  %125 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_2__*
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i8* @ns_to_tim_reg(i32 %127, i32 5)
  %129 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_2__*
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 7
  store i8* %128, i8** %130, align 8
  %131 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to %struct.TYPE_2__*
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 6
  store i64 0, i64* %132, align 8
  %133 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %134 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @CVMX_MIO_BOOT_REG_TIMX(i32 %135)
  %137 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to i32*
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @cvmx_write_csr(i32 %136, i32 %138)
  %140 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %141 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %90
  %145 = load %struct.octeon_cf_port*, %struct.octeon_cf_port** %5, align 8
  %146 = getelementptr inbounds %struct.octeon_cf_port, %struct.octeon_cf_port* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @CVMX_MIO_BOOT_REG_TIMX(i32 %147)
  %149 = bitcast %union.cvmx_mio_boot_reg_timx* %6 to i32*
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @cvmx_write_csr(i32 %148, i32 %150)
  br label %152

152:                                              ; preds = %144, %90
  ret void
}

declare dso_local i64 @octeon_get_io_clock_rate(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i8* @ns_to_tim_reg(i32, i32) #1

declare dso_local i32 @octeon_cf_set_boot_reg_cfg(i32, i32) #1

declare dso_local i32 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIO_BOOT_REG_TIMX(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

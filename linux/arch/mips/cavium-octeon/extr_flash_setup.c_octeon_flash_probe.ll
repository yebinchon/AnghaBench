; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_flash_setup.c_octeon_flash_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_flash_setup.c_octeon_flash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%union.cvmx_mio_boot_reg_cfgx = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"phys_mapped_flash\00", align 1
@flash_map = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"Bootbus flash: Setting flash for %luMB flash at 0x%08llx\0A\00", align 1
@octeon_flash_map_read = common dso_local global i32 0, align 4
@octeon_flash_map_write = common dso_local global i32 0, align 4
@octeon_flash_map_copy_from = common dso_local global i32 0, align 4
@octeon_flash_map_copy_to = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"cfi_probe\00", align 1
@mymtd = common dso_local global %struct.TYPE_10__* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@part_probe_types = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to register MTD device for flash\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @octeon_flash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_flash_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %union.cvmx_mio_boot_reg_cfgx, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %7, align 8
  %13 = call i32 @of_property_read_u32(%struct.device_node* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %69

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @CVMX_MIO_BOOT_REG_CFGX(i32 %19)
  %21 = call i32 @cvmx_read_csr(i32 %20)
  %22 = bitcast %union.cvmx_mio_boot_reg_cfgx* %4 to i32*
  store i32 %21, i32* %22, align 8
  %23 = bitcast %union.cvmx_mio_boot_reg_cfgx* %4 to %struct.TYPE_9__*
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %18
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 0), align 8
  %28 = bitcast %union.cvmx_mio_boot_reg_cfgx* %4 to %struct.TYPE_9__*
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 %30, 16
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 1), align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 1), align 8
  %33 = sub nsw i32 532676608, %32
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 2), align 4
  %34 = bitcast %union.cvmx_mio_boot_reg_cfgx* %4 to %struct.TYPE_9__*
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 7), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 1), align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 2), align 4
  %40 = call i32 @ioremap(i32 %38, i32 %39)
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 8), align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 2), align 4
  %42 = ashr i32 %41, 20
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 1), align 8
  %44 = call i32 @pr_notice(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 7), align 8
  %46 = call i32 @map_bankwidth_supported(i64 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load i32, i32* @octeon_flash_map_read, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 6), align 4
  %52 = load i32, i32* @octeon_flash_map_write, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 5), align 8
  %53 = load i32, i32* @octeon_flash_map_copy_from, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 4), align 4
  %54 = load i32, i32* @octeon_flash_map_copy_to, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @flash_map, i32 0, i32 3), align 8
  %55 = call %struct.TYPE_10__* @do_map_probe(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_11__* @flash_map)
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** @mymtd, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mymtd, align 8
  %57 = icmp ne %struct.TYPE_10__* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %27
  %59 = load i32, i32* @THIS_MODULE, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mymtd, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mymtd, align 8
  %63 = load i32, i32* @part_probe_types, align 4
  %64 = call i32 @mtd_device_parse_register(%struct.TYPE_10__* %62, i32 %63, i32* null, i32* null, i32 0)
  br label %67

65:                                               ; preds = %27
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %58
  br label %68

68:                                               ; preds = %67, %18
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %16
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_MIO_BOOT_REG_CFGX(i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @map_bankwidth_supported(i64) #1

declare dso_local %struct.TYPE_10__* @do_map_probe(i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @mtd_device_parse_register(%struct.TYPE_10__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

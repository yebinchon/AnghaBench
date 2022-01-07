; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_infineon.c_tpm_inf_pnp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_infineon.c_tpm_inf_pnp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.pnp_dev = type { i32, i32 }
%struct.pnp_device_id = type { i32 }
%struct.tpm_chip = type { i32 }

@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@TPM_INF_IO_PORT = common dso_local global i64 0, align 8
@tpm_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Found %s with ID %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"tpm_infineon0\00", align 1
@TPM_INF_IO_MEM = common dso_local global i64 0, align 8
@TPM_ADDR = common dso_local global i32 0, align 4
@ENABLE_REGISTER_PAIR = common dso_local global i32 0, align 4
@TPM_INF_ADDR = common dso_local global i32 0, align 4
@IDVENL = common dso_local global i32 0, align 4
@TPM_INF_DATA = common dso_local global i32 0, align 4
@IDVENH = common dso_local global i32 0, align 4
@IDPDL = common dso_local global i32 0, align 4
@IDPDH = common dso_local global i32 0, align 4
@CHIP_ID1 = common dso_local global i32 0, align 4
@CHIP_ID2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c" (SLD 9630 TT 1.1)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c" (SLB 9635 TT 1.2)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c" (unknown chip)\00", align 1
@TPM_INFINEON_DEV_VEN_VALUE = common dso_local global i32 0, align 4
@IOLIMH = common dso_local global i32 0, align 4
@IOLIML = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Could not set IO-data registers to 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TPM_DAR = common dso_local global i32 0, align 4
@DISABLE_REGISTER_PAIR = common dso_local global i32 0, align 4
@RESET_LP_IRQC_DISABLE = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [126 x i8] c"TPM found: config base 0x%lx, data base 0x%lx, chip version 0x%02x%02x, vendor id 0x%x%x (Infineon), product id 0x%02x%02x%s\0A\00", align 1
@tpm_inf = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_device_id*)* @tpm_inf_pnp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_inf_pnp_probe(%struct.pnp_dev* %0, %struct.pnp_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.pnp_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.tpm_chip*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store %struct.pnp_device_id* %1, %struct.pnp_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %15 = call i64 @pnp_port_valid(%struct.pnp_dev* %14, i32 0)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %86

17:                                               ; preds = %2
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %19 = call i64 @pnp_port_valid(%struct.pnp_dev* %18, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %86

21:                                               ; preds = %17
  %22 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %23 = call i32 @pnp_port_flags(%struct.pnp_dev* %22, i32 0)
  %24 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %86, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* @TPM_INF_IO_PORT, align 8
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 0), align 8
  %29 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %30 = call i8* @pnp_port_start(%struct.pnp_dev* %29, i32 0)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 1), align 8
  %32 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %33 = call i8* @pnp_port_len(%struct.pnp_dev* %32, i32 0)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 2), align 4
  %35 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %36 = call i8* @pnp_port_start(%struct.pnp_dev* %35, i32 1)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  %38 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %39 = call i8* @pnp_port_len(%struct.pnp_dev* %38, i32 1)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 4), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 4), align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %46, label %43

43:                                               ; preds = %27
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 2), align 4
  %45 = icmp slt i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %43, %27
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %320

49:                                               ; preds = %43
  %50 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %51 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %50, i32 0, i32 0
  %52 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pnp_device_id*, %struct.pnp_device_id** %5, align 8
  %56 = getelementptr inbounds %struct.pnp_device_id, %struct.pnp_device_id* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  %60 = ashr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %49
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %320

66:                                               ; preds = %49
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 4), align 4
  %69 = call i32* @request_region(i32 %67, i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %320

74:                                               ; preds = %66
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 1), align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 2), align 4
  %77 = call i32* @request_region(i32 %75, i32 %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 4), align 4
  %82 = call i32 @release_region(i32 %80, i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %320

85:                                               ; preds = %74
  br label %136

86:                                               ; preds = %21, %17, %2
  %87 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %88 = call i64 @pnp_mem_valid(%struct.pnp_dev* %87, i32 0)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %132

90:                                               ; preds = %86
  %91 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %92 = call i32 @pnp_mem_flags(%struct.pnp_dev* %91, i32 0)
  %93 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %132, label %96

96:                                               ; preds = %90
  %97 = load i64, i64* @TPM_INF_IO_MEM, align 8
  store i64 %97, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 0), align 8
  %98 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %99 = call i32 @pnp_mem_start(%struct.pnp_dev* %98, i32 0)
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 5), align 8
  %100 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %101 = call i32 @pnp_mem_len(%struct.pnp_dev* %100, i32 0)
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 7), align 8
  %102 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %103 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %102, i32 0, i32 0
  %104 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %105 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.pnp_device_id*, %struct.pnp_device_id** %5, align 8
  %108 = getelementptr inbounds %struct.pnp_device_id, %struct.pnp_device_id* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 5), align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 7), align 8
  %113 = call i32* @request_mem_region(i32 %111, i32 %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %96
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %320

118:                                              ; preds = %96
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 5), align 8
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 7), align 8
  %121 = call i32* @ioremap(i32 %119, i32 %120)
  store i32* %121, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 8), align 8
  %122 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 8), align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 5), align 8
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 7), align 8
  %127 = call i32 @release_mem_region(i32 %125, i32 %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %320

130:                                              ; preds = %118
  %131 = load i32, i32* @TPM_ADDR, align 4
  store i32 %131, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 6), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  br label %135

132:                                              ; preds = %90, %86
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %6, align 4
  br label %320

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135, %85
  %137 = load i32, i32* @ENABLE_REGISTER_PAIR, align 4
  %138 = load i32, i32* @TPM_INF_ADDR, align 4
  %139 = call i32 @tpm_config_out(i32 %137, i32 %138)
  %140 = load i32, i32* @IDVENL, align 4
  %141 = load i32, i32* @TPM_INF_ADDR, align 4
  %142 = call i32 @tpm_config_out(i32 %140, i32 %141)
  %143 = load i32, i32* @TPM_INF_DATA, align 4
  %144 = call i32 @tpm_config_in(i32 %143)
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* @IDVENH, align 4
  %147 = load i32, i32* @TPM_INF_ADDR, align 4
  %148 = call i32 @tpm_config_out(i32 %146, i32 %147)
  %149 = load i32, i32* @TPM_INF_DATA, align 4
  %150 = call i32 @tpm_config_in(i32 %149)
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* @IDPDL, align 4
  %153 = load i32, i32* @TPM_INF_ADDR, align 4
  %154 = call i32 @tpm_config_out(i32 %152, i32 %153)
  %155 = load i32, i32* @TPM_INF_DATA, align 4
  %156 = call i32 @tpm_config_in(i32 %155)
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* @IDPDH, align 4
  %159 = load i32, i32* @TPM_INF_ADDR, align 4
  %160 = call i32 @tpm_config_out(i32 %158, i32 %159)
  %161 = load i32, i32* @TPM_INF_DATA, align 4
  %162 = call i32 @tpm_config_in(i32 %161)
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* @CHIP_ID1, align 4
  %165 = load i32, i32* @TPM_INF_ADDR, align 4
  %166 = call i32 @tpm_config_out(i32 %164, i32 %165)
  %167 = load i32, i32* @TPM_INF_DATA, align 4
  %168 = call i32 @tpm_config_in(i32 %167)
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* @CHIP_ID2, align 4
  %171 = load i32, i32* @TPM_INF_ADDR, align 4
  %172 = call i32 @tpm_config_out(i32 %170, i32 %171)
  %173 = load i32, i32* @TPM_INF_DATA, align 4
  %174 = call i32 @tpm_config_in(i32 %173)
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %174, i32* %175, align 4
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 %177, 8
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %178, %180
  switch i32 %181, label %184 [
    i32 6, label %182
    i32 11, label %183
  ]

182:                                              ; preds = %136
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %185

183:                                              ; preds = %136
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %185

184:                                              ; preds = %136
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %185

185:                                              ; preds = %184, %183, %182
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 8
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %188, %190
  %192 = load i32, i32* @TPM_INFINEON_DEV_VEN_VALUE, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %299

194:                                              ; preds = %185
  %195 = load i32, i32* @IOLIMH, align 4
  %196 = load i32, i32* @TPM_INF_ADDR, align 4
  %197 = call i32 @tpm_config_out(i32 %195, i32 %196)
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  %199 = ashr i32 %198, 8
  %200 = and i32 %199, 255
  %201 = load i32, i32* @TPM_INF_DATA, align 4
  %202 = call i32 @tpm_config_out(i32 %200, i32 %201)
  %203 = load i32, i32* @IOLIML, align 4
  %204 = load i32, i32* @TPM_INF_ADDR, align 4
  %205 = call i32 @tpm_config_out(i32 %203, i32 %204)
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  %207 = and i32 %206, 255
  %208 = load i32, i32* @TPM_INF_DATA, align 4
  %209 = call i32 @tpm_config_out(i32 %207, i32 %208)
  %210 = load i32, i32* @IOLIMH, align 4
  %211 = load i32, i32* @TPM_INF_ADDR, align 4
  %212 = call i32 @tpm_config_out(i32 %210, i32 %211)
  %213 = load i32, i32* @TPM_INF_DATA, align 4
  %214 = call i32 @tpm_config_in(i32 %213)
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* @IOLIML, align 4
  %216 = load i32, i32* @TPM_INF_ADDR, align 4
  %217 = call i32 @tpm_config_out(i32 %215, i32 %216)
  %218 = load i32, i32* @TPM_INF_DATA, align 4
  %219 = call i32 @tpm_config_in(i32 %218)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %8, align 4
  %221 = shl i32 %220, 8
  %222 = load i32, i32* %7, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %194
  %227 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %228 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %227, i32 0, i32 0
  %229 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  %230 = call i32 @dev_err(i32* %228, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* @EIO, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %6, align 4
  br label %302

233:                                              ; preds = %194
  %234 = load i32, i32* @TPM_DAR, align 4
  %235 = load i32, i32* @TPM_INF_ADDR, align 4
  %236 = call i32 @tpm_config_out(i32 %234, i32 %235)
  %237 = load i32, i32* @TPM_INF_DATA, align 4
  %238 = call i32 @tpm_config_out(i32 1, i32 %237)
  %239 = load i32, i32* @DISABLE_REGISTER_PAIR, align 4
  %240 = load i32, i32* @TPM_INF_ADDR, align 4
  %241 = call i32 @tpm_config_out(i32 %239, i32 %240)
  %242 = load i32, i32* @RESET_LP_IRQC_DISABLE, align 4
  %243 = load i32, i32* @CMD, align 4
  %244 = call i32 @tpm_data_out(i32 %242, i32 %243)
  %245 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %246 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %245, i32 0, i32 0
  %247 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 0), align 8
  %248 = load i64, i64* @TPM_INF_IO_PORT, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %233
  %251 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 1), align 8
  br label %256

252:                                              ; preds = %233
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 5), align 8
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 6), align 4
  %255 = add nsw i32 %253, %254
  br label %256

256:                                              ; preds = %252, %250
  %257 = phi i32 [ %251, %250 ], [ %255, %252 ]
  %258 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 0), align 8
  %259 = load i64, i64* @TPM_INF_IO_PORT, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  br label %267

263:                                              ; preds = %256
  %264 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 5), align 8
  %265 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  %266 = add nsw i32 %264, %265
  br label %267

267:                                              ; preds = %263, %261
  %268 = phi i32 [ %262, %261 ], [ %266, %263 ]
  %269 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %272 = load i32, i32* %271, align 4
  %273 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %276 = load i32, i32* %275, align 4
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %280 = load i32, i32* %279, align 4
  %281 = load i8*, i8** %12, align 8
  %282 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %246, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.6, i64 0, i64 0), i32 %257, i32 %268, i32 %270, i32 %272, i32 %274, i32 %276, i32 %278, i32 %280, i8* %281)
  %283 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %284 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %283, i32 0, i32 0
  %285 = call %struct.tpm_chip* @tpmm_chip_alloc(i32* %284, i32* @tpm_inf)
  store %struct.tpm_chip* %285, %struct.tpm_chip** %13, align 8
  %286 = load %struct.tpm_chip*, %struct.tpm_chip** %13, align 8
  %287 = call i64 @IS_ERR(%struct.tpm_chip* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %267
  %290 = load %struct.tpm_chip*, %struct.tpm_chip** %13, align 8
  %291 = call i32 @PTR_ERR(%struct.tpm_chip* %290)
  store i32 %291, i32* %6, align 4
  br label %302

292:                                              ; preds = %267
  %293 = load %struct.tpm_chip*, %struct.tpm_chip** %13, align 8
  %294 = call i32 @tpm_chip_register(%struct.tpm_chip* %293)
  store i32 %294, i32* %6, align 4
  %295 = load i32, i32* %6, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %302

298:                                              ; preds = %292
  store i32 0, i32* %3, align 4
  br label %322

299:                                              ; preds = %185
  %300 = load i32, i32* @ENODEV, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %6, align 4
  br label %302

302:                                              ; preds = %299, %297, %289, %226
  %303 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 0), align 8
  %304 = load i64, i64* @TPM_INF_IO_PORT, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %302
  %307 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 3), align 8
  %308 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 4), align 4
  %309 = call i32 @release_region(i32 %307, i32 %308)
  %310 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 1), align 8
  %311 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 2), align 4
  %312 = call i32 @release_region(i32 %310, i32 %311)
  br label %319

313:                                              ; preds = %302
  %314 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 8), align 8
  %315 = call i32 @iounmap(i32* %314)
  %316 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 5), align 8
  %317 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tpm_dev, i32 0, i32 7), align 8
  %318 = call i32 @release_mem_region(i32 %316, i32 %317)
  br label %319

319:                                              ; preds = %313, %306
  br label %320

320:                                              ; preds = %319, %132, %124, %115, %79, %71, %63, %46
  %321 = load i32, i32* %6, align 4
  store i32 %321, i32* %3, align 4
  br label %322

322:                                              ; preds = %320, %298
  %323 = load i32, i32* %3, align 4
  ret i32 %323
}

declare dso_local i64 @pnp_port_valid(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_port_flags(%struct.pnp_dev*, i32) #1

declare dso_local i8* @pnp_port_start(%struct.pnp_dev*, i32) #1

declare dso_local i8* @pnp_port_len(%struct.pnp_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, ...) #1

declare dso_local i32* @request_region(i32, i32, i8*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i64 @pnp_mem_valid(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_mem_flags(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_mem_start(%struct.pnp_dev*, i32) #1

declare dso_local i32 @pnp_mem_len(%struct.pnp_dev*, i32) #1

declare dso_local i32* @request_mem_region(i32, i32, i8*) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @tpm_config_out(i32, i32) #1

declare dso_local i32 @tpm_config_in(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @tpm_data_out(i32, i32) #1

declare dso_local %struct.tpm_chip* @tpmm_chip_alloc(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tpm_chip*) #1

declare dso_local i32 @PTR_ERR(%struct.tpm_chip*) #1

declare dso_local i32 @tpm_chip_register(%struct.tpm_chip*) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

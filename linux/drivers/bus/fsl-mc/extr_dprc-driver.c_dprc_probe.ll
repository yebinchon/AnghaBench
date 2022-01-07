; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_dprc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_dprc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32*, %struct.device, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.device = type { %struct.device* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fsl_mc_bus = type { i32, i32 }
%struct.irq_domain = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FSL_MC_IO_ATOMIC_CONTEXT_PORTAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"WARNING: MC bus without interrupt support\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"dprc_open() failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"dprc_get_attributes() failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"dprc_get_api_version() failed: %d\0A\00", align 1
@DPRC_MIN_VER_MAJOR = common dso_local global i64 0, align 8
@DPRC_MIN_VER_MINOR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"ERROR: DPRC version %d.%d not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"DPRC device bound to driver\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @dprc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dprc_probe(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fsl_mc_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.irq_domain*, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  %13 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %14 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %18 = call %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device* %17)
  store %struct.fsl_mc_bus* %18, %struct.fsl_mc_bus** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %20 = call i32 @is_fsl_mc_bus_dprc(%struct.fsl_mc_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %220

25:                                               ; preds = %1
  %26 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %27 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %26, i32 0, i32 1
  %28 = call %struct.irq_domain* @dev_get_msi_domain(%struct.device* %27)
  %29 = icmp ne %struct.irq_domain* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %220

33:                                               ; preds = %25
  %34 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %35 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %82, label %38

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i64 @dev_is_fsl_mc(%struct.device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %220

45:                                               ; preds = %38
  %46 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %47 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %220

54:                                               ; preds = %45
  %55 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %56 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %55, i32 0, i32 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i64 @resource_size(%struct.TYPE_4__* %57)
  store i64 %58, i64* %5, align 8
  %59 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %60 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %59, i32 0, i32 1
  %61 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %62 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %61, i32 0, i32 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %5, align 8
  %68 = load i32, i32* @FSL_MC_IO_ATOMIC_CONTEXT_PORTAL, align 4
  %69 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %70 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %69, i32 0, i32 0
  %71 = call i32 @fsl_create_mc_io(%struct.device* %60, i32 %66, i64 %67, i32* null, i32 %68, i32** %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %54
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %220

76:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  %77 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %78 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %77, i32 0, i32 1
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = call %struct.irq_domain* @dev_get_msi_domain(%struct.device* %79)
  %81 = call i32 @dev_set_msi_domain(%struct.device* %78, %struct.irq_domain* %80)
  store i32 1, i32* %9, align 4
  br label %104

82:                                               ; preds = %33
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = call i64 @dev_is_fsl_mc(%struct.device* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %220

89:                                               ; preds = %82
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = call i32 @fsl_mc_find_msi_domain(%struct.device* %90, %struct.irq_domain** %12)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %96 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %95, i32 0, i32 1
  %97 = call i32 @dev_warn(%struct.device* %96, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %103

98:                                               ; preds = %89
  %99 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %100 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %99, i32 0, i32 1
  %101 = load %struct.irq_domain*, %struct.irq_domain** %12, align 8
  %102 = call i32 @dev_set_msi_domain(%struct.device* %100, %struct.irq_domain* %101)
  store i32 1, i32* %9, align 4
  br label %103

103:                                              ; preds = %98, %94
  br label %104

104:                                              ; preds = %103, %76
  %105 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %106 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %109 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %113 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %112, i32 0, i32 2
  %114 = call i32 @dprc_open(i32* %107, i32 0, i32 %111, i32* %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %104
  %118 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %119 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %118, i32 0, i32 1
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %121)
  br label %201

123:                                              ; preds = %104
  %124 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %125 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %128 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %7, align 8
  %131 = getelementptr inbounds %struct.fsl_mc_bus, %struct.fsl_mc_bus* %130, i32 0, i32 1
  %132 = call i32 @dprc_get_attributes(i32* %126, i32 0, i32 %129, i32* %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %123
  %136 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %137 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %136, i32 0, i32 1
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %139)
  br label %193

141:                                              ; preds = %123
  %142 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %143 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @dprc_get_api_version(i32* %144, i32 0, i64* %10, i64* %11)
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %150 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %149, i32 0, i32 1
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %150, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %152)
  br label %193

154:                                              ; preds = %141
  %155 = load i64, i64* %10, align 8
  %156 = load i64, i64* @DPRC_MIN_VER_MAJOR, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %154
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* @DPRC_MIN_VER_MAJOR, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %158
  %163 = load i64, i64* %11, align 8
  %164 = load i64, i64* @DPRC_MIN_VER_MINOR, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %162, %154
  %167 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %168 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %167, i32 0, i32 1
  %169 = load i64, i64* %10, align 8
  %170 = load i64, i64* %11, align 8
  %171 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %168, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %169, i64 %170)
  %172 = load i32, i32* @ENOTSUPP, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  br label %193

174:                                              ; preds = %162, %158
  %175 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %7, align 8
  %176 = getelementptr inbounds %struct.fsl_mc_bus, %struct.fsl_mc_bus* %175, i32 0, i32 0
  %177 = call i32 @mutex_init(i32* %176)
  %178 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %179 = call i32 @dprc_scan_container(%struct.fsl_mc_device* %178)
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* %4, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %193

183:                                              ; preds = %174
  %184 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %185 = call i32 @dprc_setup_irq(%struct.fsl_mc_device* %184)
  store i32 %185, i32* %4, align 4
  %186 = load i32, i32* %4, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %193

189:                                              ; preds = %183
  %190 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %191 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %190, i32 0, i32 1
  %192 = call i32 @dev_info(%struct.device* %191, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %220

193:                                              ; preds = %188, %182, %166, %148, %135
  %194 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %195 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %198 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @dprc_close(i32* %196, i32 0, i32 %199)
  br label %201

201:                                              ; preds = %193, %117
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %206 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %205, i32 0, i32 1
  %207 = call i32 @dev_set_msi_domain(%struct.device* %206, %struct.irq_domain* null)
  br label %208

208:                                              ; preds = %204, %201
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %213 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @fsl_destroy_mc_io(i32* %214)
  %216 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %217 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %216, i32 0, i32 0
  store i32* null, i32** %217, align 8
  br label %218

218:                                              ; preds = %211, %208
  %219 = load i32, i32* %4, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %218, %189, %86, %74, %51, %42, %30, %22
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device*) #1

declare dso_local i32 @is_fsl_mc_bus_dprc(%struct.fsl_mc_device*) #1

declare dso_local %struct.irq_domain* @dev_get_msi_domain(%struct.device*) #1

declare dso_local i64 @dev_is_fsl_mc(%struct.device*) #1

declare dso_local i64 @resource_size(%struct.TYPE_4__*) #1

declare dso_local i32 @fsl_create_mc_io(%struct.device*, i32, i64, i32*, i32, i32**) #1

declare dso_local i32 @dev_set_msi_domain(%struct.device*, %struct.irq_domain*) #1

declare dso_local i32 @fsl_mc_find_msi_domain(%struct.device*, %struct.irq_domain**) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dprc_open(i32*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @dprc_get_attributes(i32*, i32, i32, i32*) #1

declare dso_local i32 @dprc_get_api_version(i32*, i32, i64*, i64*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dprc_scan_container(%struct.fsl_mc_device*) #1

declare dso_local i32 @dprc_setup_irq(%struct.fsl_mc_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dprc_close(i32*, i32, i32) #1

declare dso_local i32 @fsl_destroy_mc_io(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

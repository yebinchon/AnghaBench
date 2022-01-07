; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-usb.c_dwc3_octeon_clocks_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-usb.c_dwc3_octeon_clocks_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%union.cvm_usbdrd_uctl_ctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"refclk-frequency\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"No UCTL \22refclk-frequency\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"refclk-type-ss\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"No UCTL \22refclk-type-ss\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"refclk-type-hs\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"No UCTL \22refclk-type-hs\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"dlmc_ref_clk0\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"pll_ref_clk\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Invalid HS clock type %s, using  pll_ref_clk instead\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"dlmc_ref_clk1\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Invalid SS clock type %s, using  dlmc_ref_clk0 instead\0A\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"Invalid UCTL clock rate of %u, using 100000000 instead\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"No USB UCTL device node\0A\00", align 1
@OCTEON_H_CLKDIV_SEL = common dso_local global i64 0, align 8
@clk_div = common dso_local global i64* null, align 8
@OCTEON_MAX_H_CLK_RATE = common dso_local global i64 0, align 8
@OCTEON_MIN_H_CLK_RATE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [37 x i8] c"dwc3 controller clock init failure.\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Invalid ref_clk %u, using 100000000 instead\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Error configuring power.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @dwc3_octeon_clocks_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_octeon_clocks_start(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.cvm_usbdrd_uctl_ctl, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 2, i32* %7, align 4
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %13, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %109

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @of_property_read_u32(i64 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %289

32:                                               ; preds = %21
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @of_property_read_string(i64 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %14)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %289

43:                                               ; preds = %32
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @of_property_read_string(i64 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %15)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %289

54:                                               ; preds = %43
  %55 = load i8*, i8** %14, align 8
  %56 = call i64 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i8*, i8** %15, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %72

63:                                               ; preds = %58
  %64 = load i8*, i8** %15, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 2, i32* %7, align 4
  br label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %15, align 8
  %70 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68, %67
  br label %72

72:                                               ; preds = %71, %62
  br label %96

73:                                               ; preds = %54
  %74 = load i8*, i8** %14, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load i8*, i8** %15, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 1, i32* %7, align 4
  br label %91

82:                                               ; preds = %77
  %83 = load i8*, i8** %15, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 3, i32* %7, align 4
  br label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %15, align 8
  %89 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i8* %88)
  store i32 3, i32* %7, align 4
  br label %90

90:                                               ; preds = %87, %86
  br label %91

91:                                               ; preds = %90, %81
  br label %95

92:                                               ; preds = %73
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %92, %91
  br label %96

96:                                               ; preds = %95, %72
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %108

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 100000000
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %105, %102, %99
  br label %113

109:                                              ; preds = %2
  %110 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %289

113:                                              ; preds = %108
  %114 = load i64, i64* %13, align 8
  %115 = call i8* @cvmx_read_csr(i64 %114)
  %116 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  store i8* %115, i8** %116, align 8
  %117 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  store i32 1, i32* %122, align 8
  %123 = load i64, i64* %13, align 8
  %124 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @cvmx_write_csr(i64 %123, i8* %125)
  %127 = load i64, i64* %13, align 8
  %128 = call i8* @cvmx_read_csr(i64 %127)
  %129 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  store i8* %128, i8** %129, align 8
  %130 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 3
  store i32 1, i32* %131, align 4
  %132 = load i64, i64* %13, align 8
  %133 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @cvmx_write_csr(i64 %132, i8* %134)
  store i64 0, i64* %8, align 8
  br label %136

136:                                              ; preds = %156, %113
  %137 = load i64, i64* %8, align 8
  %138 = load i64, i64* @OCTEON_H_CLKDIV_SEL, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %159

140:                                              ; preds = %136
  %141 = call i64 (...) @octeon_get_io_clock_rate()
  %142 = load i64*, i64** @clk_div, align 8
  %143 = load i64, i64* %8, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = udiv i64 %141, %145
  store i64 %146, i64* %12, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* @OCTEON_MAX_H_CLK_RATE, align 8
  %149 = icmp ule i64 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %140
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* @OCTEON_MIN_H_CLK_RATE, align 8
  %153 = icmp uge i64 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %159

155:                                              ; preds = %150, %140
  br label %156

156:                                              ; preds = %155
  %157 = load i64, i64* %8, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %8, align 8
  br label %136

159:                                              ; preds = %154, %136
  %160 = load i64, i64* %13, align 8
  %161 = call i8* @cvmx_read_csr(i64 %160)
  %162 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  store i8* %161, i8** %162, align 8
  %163 = load i64, i64* %8, align 8
  %164 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 4
  store i64 %163, i64* %165, align 8
  %166 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 5
  store i32 1, i32* %167, align 8
  %168 = load i64, i64* %13, align 8
  %169 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @cvmx_write_csr(i64 %168, i8* %170)
  %172 = load i64, i64* %13, align 8
  %173 = call i8* @cvmx_read_csr(i64 %172)
  %174 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  store i8* %173, i8** %174, align 8
  %175 = load i64, i64* %8, align 8
  %176 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %175, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %159
  %181 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %180, %159
  %186 = load %struct.device*, %struct.device** %4, align 8
  %187 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %186, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %3, align 4
  br label %289

190:                                              ; preds = %180
  %191 = load i64, i64* %13, align 8
  %192 = call i8* @cvmx_read_csr(i64 %191)
  %193 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  store i8* %192, i8** %193, align 8
  %194 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 3
  store i32 0, i32* %195, align 4
  %196 = load i64, i64* %13, align 8
  %197 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @cvmx_write_csr(i64 %196, i8* %198)
  %200 = load i64, i64* %13, align 8
  %201 = call i8* @cvmx_read_csr(i64 %200)
  %202 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  store i8* %201, i8** %202, align 8
  %203 = load i32, i32* %7, align 4
  %204 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 6
  store i32 %203, i32* %205, align 4
  %206 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 7
  store i32 7, i32* %207, align 8
  %208 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 15
  store i64 0, i64* %209, align 8
  %210 = load i32, i32* %9, align 4
  switch i32 %210, label %211 [
    i32 100000000, label %215
    i32 50000000, label %222
    i32 125000000, label %223
  ]

211:                                              ; preds = %190
  %212 = load %struct.device*, %struct.device** %4, align 8
  %213 = load i32, i32* %9, align 4
  %214 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %212, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %190, %211
  store i32 25, i32* %10, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp slt i32 %216, 2
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 7
  store i32 39, i32* %220, align 8
  br label %221

221:                                              ; preds = %218, %215
  br label %224

222:                                              ; preds = %190
  store i32 50, i32* %10, align 4
  br label %224

223:                                              ; preds = %190
  store i32 40, i32* %10, align 4
  br label %224

224:                                              ; preds = %223, %222, %221
  %225 = load i32, i32* %10, align 4
  %226 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 8
  store i32 %225, i32* %227, align 4
  %228 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 9
  store i32 1, i32* %229, align 8
  %230 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 10
  store i32 1, i32* %231, align 4
  %232 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 11
  store i32 1, i32* %233, align 8
  %234 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 12
  store i32 1, i32* %235, align 4
  %236 = load i64, i64* %13, align 8
  %237 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @cvmx_write_csr(i64 %236, i8* %238)
  %240 = call i32 @udelay(i32 10)
  %241 = load i64, i64* %13, align 8
  %242 = call i8* @cvmx_read_csr(i64 %241)
  %243 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  store i8* %242, i8** %243, align 8
  %244 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 2
  store i32 0, i32* %245, align 8
  %246 = load i64, i64* %13, align 8
  %247 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @cvmx_write_csr(i64 %246, i8* %248)
  %250 = call i32 @udelay(i32 10)
  %251 = load %struct.device*, %struct.device** %4, align 8
  %252 = load i64, i64* %5, align 8
  %253 = call i64 @dwc3_octeon_config_power(%struct.device* %251, i64 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %224
  %256 = load %struct.device*, %struct.device** %4, align 8
  %257 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %258 = load i32, i32* @EINVAL, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %3, align 4
  br label %289

260:                                              ; preds = %224
  %261 = load i64, i64* %13, align 8
  %262 = call i8* @cvmx_read_csr(i64 %261)
  %263 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  store i8* %262, i8** %263, align 8
  %264 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 1
  store i32 0, i32* %265, align 4
  %266 = load i64, i64* %13, align 8
  %267 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @cvmx_write_csr(i64 %266, i8* %268)
  %270 = call i32 @udelay(i32 10)
  %271 = load i64, i64* %13, align 8
  %272 = call i8* @cvmx_read_csr(i64 %271)
  %273 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  store i8* %272, i8** %273, align 8
  %274 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 13
  store i32 1, i32* %275, align 8
  %276 = load i64, i64* %13, align 8
  %277 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @cvmx_write_csr(i64 %276, i8* %278)
  %280 = load i64, i64* %13, align 8
  %281 = call i8* @cvmx_read_csr(i64 %280)
  %282 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  store i8* %281, i8** %282, align 8
  %283 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to %struct.TYPE_2__*
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 14
  store i64 0, i64* %284, align 8
  %285 = load i64, i64* %13, align 8
  %286 = bitcast %union.cvm_usbdrd_uctl_ctl* %6 to i8**
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @cvmx_write_csr(i64 %285, i8* %287)
  store i32 0, i32* %3, align 4
  br label %289

289:                                              ; preds = %260, %255, %185, %109, %50, %39, %28
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

declare dso_local i32 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @of_property_read_string(i64, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @cvmx_read_csr(i64) #1

declare dso_local i32 @cvmx_write_csr(i64, i8*) #1

declare dso_local i64 @octeon_get_io_clock_rate(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @dwc3_octeon_config_power(%struct.device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

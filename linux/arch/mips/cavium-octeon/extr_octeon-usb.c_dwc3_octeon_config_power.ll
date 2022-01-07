; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-usb.c_dwc3_octeon_config_power.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-usb.c_dwc3_octeon_config_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%union.cvm_usbdrd_uctl_host_cfg = type { i8* }
%union.cvmx_gpio_bit_cfgx = type { i8* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"dwc3 controller clock init failure.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCTEON_CN73XX = common dso_local global i32 0, align 4
@OCTEON_CNF75XX = common dso_local global i32 0, align 4
@UCTL_HOST_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @dwc3_octeon_config_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_octeon_config_power(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.cvm_usbdrd_uctl_host_cfg, align 8
  %7 = alloca %union.cvmx_gpio_bit_cfgx, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %12, align 8
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 24
  %19 = and i32 %18, 1
  store i32 %19, i32* %13, align 4
  %20 = load %struct.device_node*, %struct.device_node** %12, align 8
  %21 = call i32* @of_find_property(%struct.device_node* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %10)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %139

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 12
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.device_node*, %struct.device_node** %12, align 8
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %29 = call i32 @of_property_read_u32_array(%struct.device_node* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %28, i32 3)
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 1
  store i32 %32, i32* %11, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %50

35:                                               ; preds = %23
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 8
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.device_node*, %struct.device_node** %12, align 8
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %41 = call i32 @of_property_read_u32_array(%struct.device_node* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %40, i32 2)
  store i32 0, i32* %11, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  br label %49

44:                                               ; preds = %35
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %158

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32, i32* @OCTEON_CN73XX, align 4
  %52 = call i64 @OCTEON_IS_MODEL(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @OCTEON_CNF75XX, align 4
  %56 = call i64 @OCTEON_IS_MODEL(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %9, align 4
  %60 = icmp sle i32 %59, 31
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @CVMX_GPIO_BIT_CFGX(i32 %62)
  %64 = call i8* @cvmx_read_csr(i64 %63)
  %65 = bitcast %union.cvmx_gpio_bit_cfgx* %7 to i8**
  store i8* %64, i8** %65, align 8
  %66 = bitcast %union.cvmx_gpio_bit_cfgx* %7 to %struct.TYPE_3__*
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 20, i32 21
  %72 = bitcast %union.cvmx_gpio_bit_cfgx* %7 to %struct.TYPE_3__*
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @CVMX_GPIO_BIT_CFGX(i32 %74)
  %76 = bitcast %union.cvmx_gpio_bit_cfgx* %7 to i8**
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @cvmx_write_csr(i64 %75, i8* %77)
  br label %119

79:                                               ; preds = %58, %54
  %80 = load i32, i32* %9, align 4
  %81 = icmp sle i32 %80, 15
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @CVMX_GPIO_BIT_CFGX(i32 %83)
  %85 = call i8* @cvmx_read_csr(i64 %84)
  %86 = bitcast %union.cvmx_gpio_bit_cfgx* %7 to i8**
  store i8* %85, i8** %86, align 8
  %87 = bitcast %union.cvmx_gpio_bit_cfgx* %7 to %struct.TYPE_3__*
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load i32, i32* %13, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 20, i32 25
  %93 = bitcast %union.cvmx_gpio_bit_cfgx* %7 to %struct.TYPE_3__*
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @CVMX_GPIO_BIT_CFGX(i32 %95)
  %97 = bitcast %union.cvmx_gpio_bit_cfgx* %7 to i8**
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @cvmx_write_csr(i64 %96, i8* %98)
  br label %118

100:                                              ; preds = %79
  %101 = load i32, i32* %9, align 4
  %102 = call i64 @CVMX_GPIO_XBIT_CFGX(i32 %101)
  %103 = call i8* @cvmx_read_csr(i64 %102)
  %104 = bitcast %union.cvmx_gpio_bit_cfgx* %7 to i8**
  store i8* %103, i8** %104, align 8
  %105 = bitcast %union.cvmx_gpio_bit_cfgx* %7 to %struct.TYPE_3__*
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load i32, i32* %13, align 4
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 20, i32 25
  %111 = bitcast %union.cvmx_gpio_bit_cfgx* %7 to %struct.TYPE_3__*
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i64 @CVMX_GPIO_XBIT_CFGX(i32 %113)
  %115 = bitcast %union.cvmx_gpio_bit_cfgx* %7 to i8**
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @cvmx_write_csr(i64 %114, i8* %116)
  br label %118

118:                                              ; preds = %100, %82
  br label %119

119:                                              ; preds = %118, %61
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 224
  %122 = sext i32 %121 to i64
  %123 = call i8* @cvmx_read_csr(i64 %122)
  %124 = bitcast %union.cvm_usbdrd_uctl_host_cfg* %6 to i8**
  store i8* %123, i8** %124, align 8
  %125 = bitcast %union.cvm_usbdrd_uctl_host_cfg* %6 to %struct.TYPE_4__*
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = bitcast %union.cvm_usbdrd_uctl_host_cfg* %6 to %struct.TYPE_4__*
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 224
  %135 = sext i32 %134 to i64
  %136 = bitcast %union.cvm_usbdrd_uctl_host_cfg* %6 to i8**
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @cvmx_write_csr(i64 %135, i8* %137)
  br label %157

139:                                              ; preds = %2
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 224
  %142 = sext i32 %141 to i64
  %143 = call i8* @cvmx_read_csr(i64 %142)
  %144 = bitcast %union.cvm_usbdrd_uctl_host_cfg* %6 to i8**
  store i8* %143, i8** %144, align 8
  %145 = bitcast %union.cvm_usbdrd_uctl_host_cfg* %6 to %struct.TYPE_4__*
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  %147 = bitcast %union.cvm_usbdrd_uctl_host_cfg* %6 to %struct.TYPE_4__*
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  store i32 0, i32* %148, align 4
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 224
  %151 = sext i32 %150 to i64
  %152 = bitcast %union.cvm_usbdrd_uctl_host_cfg* %6 to i8**
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @cvmx_write_csr(i64 %151, i8* %153)
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = call i32 @dev_warn(%struct.device* %155, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %157

157:                                              ; preds = %139, %119
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %44
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i8* @cvmx_read_csr(i64) #1

declare dso_local i64 @CVMX_GPIO_BIT_CFGX(i32) #1

declare dso_local i32 @cvmx_write_csr(i64, i8*) #1

declare dso_local i64 @CVMX_GPIO_XBIT_CFGX(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

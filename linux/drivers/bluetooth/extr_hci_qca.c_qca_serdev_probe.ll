; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_serdev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_serdev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.qca_serdev = type { i32, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { %struct.serdev_device* }
%struct.TYPE_3__ = type { i32, %struct.qca_vreg_data*, i32* }
%struct.qca_vreg_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"firmware-name\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to init regulators:%d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"max-speed\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"UART will pick default operating speed\00", align 1
@qca_proto = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"wcn3990 serdev registration failed\00", align 1
@QCA_ROME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to acquire enable gpio\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to acquire clk\0A\00", align 1
@SUSCLK_RATE_32KHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*)* @qca_serdev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_serdev_probe(%struct.serdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca %struct.qca_serdev*, align 8
  %5 = alloca %struct.qca_vreg_data*, align 8
  %6 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  %7 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %8 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @devm_kzalloc(i32* %8, i32 48, i32 %9)
  %11 = bitcast i8* %10 to %struct.qca_serdev*
  store %struct.qca_serdev* %11, %struct.qca_serdev** %4, align 8
  %12 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %13 = icmp ne %struct.qca_serdev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %189

17:                                               ; preds = %1
  %18 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %19 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %20 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.serdev_device* %18, %struct.serdev_device** %21, align 8
  %22 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %23 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %22, i32 0, i32 0
  %24 = call %struct.qca_vreg_data* @of_device_get_match_data(i32* %23)
  store %struct.qca_vreg_data* %24, %struct.qca_vreg_data** %5, align 8
  %25 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %26 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %27 = call i32 @serdev_device_set_drvdata(%struct.serdev_device* %25, %struct.qca_serdev* %26)
  %28 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %29 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %28, i32 0, i32 0
  %30 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %31 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %30, i32 0, i32 6
  %32 = call i32 @device_property_read_string(i32* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %31)
  %33 = load %struct.qca_vreg_data*, %struct.qca_vreg_data** %5, align 8
  %34 = icmp ne %struct.qca_vreg_data* %33, null
  br i1 %34, label %35, label %113

35:                                               ; preds = %17
  %36 = load %struct.qca_vreg_data*, %struct.qca_vreg_data** %5, align 8
  %37 = getelementptr inbounds %struct.qca_vreg_data, %struct.qca_vreg_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @qca_is_wcn399x(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %113

41:                                               ; preds = %35
  %42 = load %struct.qca_vreg_data*, %struct.qca_vreg_data** %5, align 8
  %43 = getelementptr inbounds %struct.qca_vreg_data, %struct.qca_vreg_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %46 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %48 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %47, i32 0, i32 0
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @devm_kzalloc(i32* %48, i32 4, i32 %49)
  %51 = bitcast i8* %50 to %struct.TYPE_3__*
  %52 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %53 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %52, i32 0, i32 5
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %53, align 8
  %54 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %55 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %54, i32 0, i32 5
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = icmp ne %struct.TYPE_3__* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %41
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %189

61:                                               ; preds = %41
  %62 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %63 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %62, i32 0, i32 0
  %64 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %65 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %64, i32 0, i32 5
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i32* %63, i32** %67, align 8
  %68 = load %struct.qca_vreg_data*, %struct.qca_vreg_data** %5, align 8
  %69 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %70 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %69, i32 0, i32 5
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store %struct.qca_vreg_data* %68, %struct.qca_vreg_data** %72, align 8
  %73 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %74 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %73, i32 0, i32 5
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load %struct.qca_vreg_data*, %struct.qca_vreg_data** %5, align 8
  %77 = getelementptr inbounds %struct.qca_vreg_data, %struct.qca_vreg_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.qca_vreg_data*, %struct.qca_vreg_data** %5, align 8
  %80 = getelementptr inbounds %struct.qca_vreg_data, %struct.qca_vreg_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @qca_init_regulators(%struct.TYPE_3__* %75, i32 %78, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %61
  %86 = load i32, i32* %6, align 4
  %87 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  br label %187

88:                                               ; preds = %61
  %89 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %90 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %89, i32 0, i32 5
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %94 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %93, i32 0, i32 0
  %95 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %96 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %95, i32 0, i32 4
  %97 = call i32 @device_property_read_u32(i32* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %96)
  %98 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %99 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %88
  %103 = call i32 @BT_DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %88
  %105 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %106 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %105, i32 0, i32 1
  %107 = call i32 @hci_uart_register_device(%struct.TYPE_4__* %106, i32* @qca_proto)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %187

112:                                              ; preds = %104
  br label %186

113:                                              ; preds = %35, %17
  %114 = load i32, i32* @QCA_ROME, align 4
  %115 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %116 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %118 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %117, i32 0, i32 0
  %119 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %120 = call i32 @devm_gpiod_get(i32* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  %121 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %122 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %124 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @IS_ERR(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %113
  %129 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %130 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %129, i32 0, i32 0
  %131 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %132 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %133 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @PTR_ERR(i32 %134)
  store i32 %135, i32* %2, align 4
  br label %189

136:                                              ; preds = %113
  %137 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %138 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %137, i32 0, i32 0
  %139 = call i32 @devm_clk_get(i32* %138, i32* null)
  %140 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %141 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %143 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @IS_ERR(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %136
  %148 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %149 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %148, i32 0, i32 0
  %150 = call i32 @dev_err(i32* %149, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %151 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %152 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @PTR_ERR(i32 %153)
  store i32 %154, i32* %2, align 4
  br label %189

155:                                              ; preds = %136
  %156 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %157 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @SUSCLK_RATE_32KHZ, align 4
  %160 = call i32 @clk_set_rate(i32 %158, i32 %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %155
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %2, align 4
  br label %189

165:                                              ; preds = %155
  %166 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %167 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @clk_prepare_enable(i32 %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %2, align 4
  br label %189

174:                                              ; preds = %165
  %175 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %176 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %175, i32 0, i32 1
  %177 = call i32 @hci_uart_register_device(%struct.TYPE_4__* %176, i32* @qca_proto)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %174
  %181 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %182 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @clk_disable_unprepare(i32 %183)
  br label %185

185:                                              ; preds = %180, %174
  br label %186

186:                                              ; preds = %185, %112
  br label %187

187:                                              ; preds = %186, %110, %85
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %187, %172, %163, %147, %128, %58, %14
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.qca_vreg_data* @of_device_get_match_data(i32*) #1

declare dso_local i32 @serdev_device_set_drvdata(%struct.serdev_device*, %struct.qca_serdev*) #1

declare dso_local i32 @device_property_read_string(i32*, i8*, i32*) #1

declare dso_local i64 @qca_is_wcn399x(i32) #1

declare dso_local i32 @qca_init_regulators(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @device_property_read_u32(i32*, i8*, i32*) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @hci_uart_register_device(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

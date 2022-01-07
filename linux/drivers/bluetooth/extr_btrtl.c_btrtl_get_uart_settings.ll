; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_get_uart_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_btrtl_get_uart_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btrtl_device_info = type { i32, i64 }
%struct.rtl_vendor_config = type { i64, i32, i32 }
%struct.rtl_vendor_config_entry = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"no config loaded\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RTL_CONFIG_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid config magic\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"config is too short\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid UART config entry\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"skipping config entry 0x%x (len %u)\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"no UART config entry found\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"device baudrate = 0x%08x\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"controller baudrate = %u\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"flow control %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrtl_get_uart_settings(%struct.hci_dev* %0, %struct.btrtl_device_info* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca %struct.btrtl_device_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rtl_vendor_config*, align 8
  %13 = alloca %struct.rtl_vendor_config_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %7, align 8
  store %struct.btrtl_device_info* %1, %struct.btrtl_device_info** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %8, align 8
  %18 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %27 = call i32 @rtl_dev_warn(%struct.hci_dev* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %158

30:                                               ; preds = %5
  %31 = load %struct.btrtl_device_info*, %struct.btrtl_device_info** %8, align 8
  %32 = getelementptr inbounds %struct.btrtl_device_info, %struct.btrtl_device_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.rtl_vendor_config*
  store %struct.rtl_vendor_config* %34, %struct.rtl_vendor_config** %12, align 8
  %35 = load %struct.rtl_vendor_config*, %struct.rtl_vendor_config** %12, align 8
  %36 = getelementptr inbounds %struct.rtl_vendor_config, %struct.rtl_vendor_config* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le32_to_cpu(i32 %37)
  %39 = load i64, i64* @RTL_CONFIG_MAGIC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %43 = call i32 @rtl_dev_err(%struct.hci_dev* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %158

46:                                               ; preds = %30
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.rtl_vendor_config*, %struct.rtl_vendor_config** %12, align 8
  %49 = getelementptr inbounds %struct.rtl_vendor_config, %struct.rtl_vendor_config* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le16_to_cpu(i32 %50)
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %55 = call i32 @rtl_dev_err(%struct.hci_dev* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %158

58:                                               ; preds = %46
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %127, %58
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %137

63:                                               ; preds = %59
  %64 = load %struct.rtl_vendor_config*, %struct.rtl_vendor_config** %12, align 8
  %65 = getelementptr inbounds %struct.rtl_vendor_config, %struct.rtl_vendor_config* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %67, i64 %69
  %71 = bitcast i8* %70 to %struct.rtl_vendor_config_entry*
  store %struct.rtl_vendor_config_entry* %71, %struct.rtl_vendor_config_entry** %13, align 8
  %72 = load %struct.rtl_vendor_config_entry*, %struct.rtl_vendor_config_entry** %13, align 8
  %73 = getelementptr inbounds %struct.rtl_vendor_config_entry, %struct.rtl_vendor_config_entry* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @le16_to_cpu(i32 %74)
  switch i32 %75, label %117 [
    i32 12, label %76
  ]

76:                                               ; preds = %63
  %77 = load %struct.rtl_vendor_config_entry*, %struct.rtl_vendor_config_entry** %13, align 8
  %78 = getelementptr inbounds %struct.rtl_vendor_config_entry, %struct.rtl_vendor_config_entry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = icmp ult i64 %80, 4
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %84 = call i32 @rtl_dev_err(%struct.hci_dev* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %158

87:                                               ; preds = %76
  %88 = load %struct.rtl_vendor_config_entry*, %struct.rtl_vendor_config_entry** %13, align 8
  %89 = getelementptr inbounds %struct.rtl_vendor_config_entry, %struct.rtl_vendor_config_entry* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @get_unaligned_le32(i32* %90)
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @btrtl_convert_baudrate(i32 %94)
  %96 = load i32*, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.rtl_vendor_config_entry*, %struct.rtl_vendor_config_entry** %13, align 8
  %98 = getelementptr inbounds %struct.rtl_vendor_config_entry, %struct.rtl_vendor_config_entry* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sge i32 %99, 13
  br i1 %100, label %101, label %114

101:                                              ; preds = %87
  %102 = load %struct.rtl_vendor_config_entry*, %struct.rtl_vendor_config_entry** %13, align 8
  %103 = getelementptr inbounds %struct.rtl_vendor_config_entry, %struct.rtl_vendor_config_entry* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 12
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @BIT(i32 2)
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = load i32*, i32** %11, align 8
  store i32 %112, i32* %113, align 4
  br label %116

114:                                              ; preds = %87
  %115 = load i32*, i32** %11, align 8
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %114, %101
  store i32 1, i32* %16, align 4
  br label %127

117:                                              ; preds = %63
  %118 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %119 = load %struct.rtl_vendor_config_entry*, %struct.rtl_vendor_config_entry** %13, align 8
  %120 = getelementptr inbounds %struct.rtl_vendor_config_entry, %struct.rtl_vendor_config_entry* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @le16_to_cpu(i32 %121)
  %123 = load %struct.rtl_vendor_config_entry*, %struct.rtl_vendor_config_entry** %13, align 8
  %124 = getelementptr inbounds %struct.rtl_vendor_config_entry, %struct.rtl_vendor_config_entry* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (%struct.hci_dev*, i8*, i32, ...) @rtl_dev_dbg(%struct.hci_dev* %118, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %117, %116
  %128 = load %struct.rtl_vendor_config_entry*, %struct.rtl_vendor_config_entry** %13, align 8
  %129 = getelementptr inbounds %struct.rtl_vendor_config_entry, %struct.rtl_vendor_config_entry* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = add i64 24, %131
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %14, align 4
  br label %59

137:                                              ; preds = %59
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %142 = call i32 @rtl_dev_err(%struct.hci_dev* %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %143 = load i32, i32* @ENOENT, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %6, align 4
  br label %158

145:                                              ; preds = %137
  %146 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (%struct.hci_dev*, i8*, i32, ...) @rtl_dev_dbg(%struct.hci_dev* %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  %150 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (%struct.hci_dev*, i8*, i32, ...) @rtl_dev_dbg(%struct.hci_dev* %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  %154 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct.hci_dev*, i8*, i32, ...) @rtl_dev_dbg(%struct.hci_dev* %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %156)
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %145, %140, %82, %53, %41, %25
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32 @rtl_dev_warn(%struct.hci_dev*, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @rtl_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @btrtl_convert_baudrate(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_dev_dbg(%struct.hci_dev*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

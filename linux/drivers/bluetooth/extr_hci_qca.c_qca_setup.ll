; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.hci_dev*, %struct.qca_data* }
%struct.hci_dev = type { i32, i32, i32 }
%struct.qca_data = type { i32 }

@QCA_BAUDRATE_115200 = common dso_local global i32 0, align 4
@QCA_IBS_ENABLED = common dso_local global i32 0, align 4
@HCI_QUIRK_SIMULTANEOUS_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"setting up wcn3990\00", align 1
@HCI_QUIRK_NON_PERSISTENT_SETUP = common dso_local global i32 0, align 4
@HCI_QUIRK_USE_BDADDR_PROPERTY = common dso_local global i32 0, align 4
@qca_power_off = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ROME setup\00", align 1
@QCA_INIT_SPEED = common dso_local global i32 0, align 4
@QCA_OPER_SPEED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"QCA controller version 0x%08x\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@qca_set_bdaddr = common dso_local global i32 0, align 4
@qca_set_bdaddr_rome = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @qca_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_setup(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.qca_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %12 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %13 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %12, i32 0, i32 0
  %14 = load %struct.hci_dev*, %struct.hci_dev** %13, align 8
  store %struct.hci_dev* %14, %struct.hci_dev** %4, align 8
  %15 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %16 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %15, i32 0, i32 1
  %17 = load %struct.qca_data*, %struct.qca_data** %16, align 8
  store %struct.qca_data* %17, %struct.qca_data** %5, align 8
  %18 = load i32, i32* @QCA_BAUDRATE_115200, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %20 = call i32 @qca_soc_type(%struct.hci_uart* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %22 = call i8* @qca_get_firmware_name(%struct.hci_uart* %21)
  store i8* %22, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %23 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %24 = call i32 @qca_check_speeds(%struct.hci_uart* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %2, align 4
  br label %157

29:                                               ; preds = %1
  %30 = load i32, i32* @QCA_IBS_ENABLED, align 4
  %31 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %32 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %31, i32 0, i32 0
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  %34 = load i32, i32* @HCI_QUIRK_SIMULTANEOUS_DISCOVERY, align 4
  %35 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 2
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @qca_is_wcn399x(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %71

41:                                               ; preds = %29
  %42 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %43 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @HCI_QUIRK_NON_PERSISTENT_SETUP, align 4
  %45 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 2
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  %48 = load i32, i32* @HCI_QUIRK_USE_BDADDR_PROPERTY, align 4
  %49 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 2
  %51 = call i32 @set_bit(i32 %48, i32* %50)
  %52 = load i32, i32* @qca_power_off, align 4
  %53 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %54 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %53, i32 0, i32 0
  %55 = load %struct.hci_dev*, %struct.hci_dev** %54, align 8
  %56 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %58 = call i32 @qca_wcn3990_init(%struct.hci_uart* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %41
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %2, align 4
  br label %157

63:                                               ; preds = %41
  %64 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %65 = call i32 @qca_read_soc_version(%struct.hci_dev* %64, i32* %11)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %2, align 4
  br label %157

70:                                               ; preds = %63
  br label %77

71:                                               ; preds = %29
  %72 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %73 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %75 = load i32, i32* @QCA_INIT_SPEED, align 4
  %76 = call i32 @qca_set_speed(%struct.hci_uart* %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %70
  %78 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %79 = load i32, i32* @QCA_OPER_SPEED, align 4
  %80 = call i32 @qca_get_speed(%struct.hci_uart* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %85 = load i32, i32* @QCA_OPER_SPEED, align 4
  %86 = call i32 @qca_set_speed(%struct.hci_uart* %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %2, align 4
  br label %157

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @qca_get_baudrate_value(i32 %92)
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %91, %77
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @qca_is_wcn399x(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %100 = call i32 @qca_read_soc_version(%struct.hci_dev* %99, i32* %11)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %2, align 4
  br label %157

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %94
  %107 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %107, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @qca_uart_setup(%struct.hci_dev* %110, i32 %111, i32 %112, i32 %113, i8* %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %106
  %119 = load i32, i32* @QCA_IBS_ENABLED, align 4
  %120 = load %struct.qca_data*, %struct.qca_data** %5, align 8
  %121 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %120, i32 0, i32 0
  %122 = call i32 @set_bit(i32 %119, i32* %121)
  %123 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %124 = call i32 @qca_debugfs_init(%struct.hci_dev* %123)
  br label %139

125:                                              ; preds = %106
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @ENOENT, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 0, i32* %10, align 4
  br label %138

131:                                              ; preds = %125
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @EAGAIN, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i32 0, i32* %10, align 4
  br label %137

137:                                              ; preds = %136, %131
  br label %138

138:                                              ; preds = %137, %130
  br label %139

139:                                              ; preds = %138, %118
  %140 = load i32, i32* %8, align 4
  %141 = call i64 @qca_is_wcn399x(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i32, i32* @qca_set_bdaddr, align 4
  %145 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %146 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %145, i32 0, i32 0
  %147 = load %struct.hci_dev*, %struct.hci_dev** %146, align 8
  %148 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %147, i32 0, i32 0
  store i32 %144, i32* %148, align 4
  br label %155

149:                                              ; preds = %139
  %150 = load i32, i32* @qca_set_bdaddr_rome, align 4
  %151 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %152 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %151, i32 0, i32 0
  %153 = load %struct.hci_dev*, %struct.hci_dev** %152, align 8
  %154 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %153, i32 0, i32 0
  store i32 %150, i32* %154, align 4
  br label %155

155:                                              ; preds = %149, %143
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %103, %89, %68, %61, %27
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @qca_soc_type(%struct.hci_uart*) #1

declare dso_local i8* @qca_get_firmware_name(%struct.hci_uart*) #1

declare dso_local i32 @qca_check_speeds(%struct.hci_uart*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @qca_is_wcn399x(i32) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @qca_wcn3990_init(%struct.hci_uart*) #1

declare dso_local i32 @qca_read_soc_version(%struct.hci_dev*, i32*) #1

declare dso_local i32 @qca_set_speed(%struct.hci_uart*, i32) #1

declare dso_local i32 @qca_get_speed(%struct.hci_uart*, i32) #1

declare dso_local i32 @qca_get_baudrate_value(i32) #1

declare dso_local i32 @qca_uart_setup(%struct.hci_dev*, i32, i32, i32, i8*) #1

declare dso_local i32 @qca_debugfs_init(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

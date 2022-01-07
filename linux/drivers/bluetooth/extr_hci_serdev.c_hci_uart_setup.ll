; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_serdev.c_hci_uart_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_serdev.c_hci_uart_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_uart = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.hci_uart*, i32)*, i32 (%struct.hci_uart*)* }
%struct.hci_rp_read_local_version = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to set baudrate\00", align 1
@HCI_UART_VND_DETECT = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_VERSION = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Reading local version info failed (%ld)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Event length mismatch for version info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @hci_uart_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_setup(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca %struct.hci_rp_read_local_version*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = call %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev* %9)
  store %struct.hci_uart* %10, %struct.hci_uart** %4, align 8
  %11 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %12 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %17 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  br label %34

19:                                               ; preds = %1
  %20 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %21 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %28 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  br label %33

32:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %26
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %39 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @serdev_device_set_baudrate(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %34
  %44 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %45 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %50 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  br label %67

52:                                               ; preds = %43
  %53 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %54 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %61 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  br label %66

65:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %59
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %69 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32 (%struct.hci_uart*, i32)*, i32 (%struct.hci_uart*, i32)** %71, align 8
  %73 = icmp ne i32 (%struct.hci_uart*, i32)* %72, null
  br i1 %73, label %74, label %98

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %74
  %78 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %79 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %78, i32 0, i32 3
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32 (%struct.hci_uart*, i32)*, i32 (%struct.hci_uart*, i32)** %81, align 8
  %83 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 %82(%struct.hci_uart* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %90 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %97

91:                                               ; preds = %77
  %92 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %93 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @serdev_device_set_baudrate(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %88
  br label %98

98:                                               ; preds = %97, %74, %67
  %99 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %100 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i32 (%struct.hci_uart*)*, i32 (%struct.hci_uart*)** %102, align 8
  %104 = icmp ne i32 (%struct.hci_uart*)* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %107 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %106, i32 0, i32 3
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32 (%struct.hci_uart*)*, i32 (%struct.hci_uart*)** %109, align 8
  %111 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %112 = call i32 %110(%struct.hci_uart* %111)
  store i32 %112, i32* %2, align 4
  br label %145

113:                                              ; preds = %98
  %114 = load i32, i32* @HCI_UART_VND_DETECT, align 4
  %115 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %116 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %115, i32 0, i32 2
  %117 = call i32 @test_bit(i32 %114, i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %145

120:                                              ; preds = %113
  %121 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %122 = load i32, i32* @HCI_OP_READ_LOCAL_VERSION, align 4
  %123 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %124 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %121, i32 %122, i32 0, i32* null, i32 %123)
  store %struct.sk_buff* %124, %struct.sk_buff** %6, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = call i64 @IS_ERR(%struct.sk_buff* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %120
  %129 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = call i32 @PTR_ERR(%struct.sk_buff* %130)
  %132 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %129, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  store i32 0, i32* %2, align 4
  br label %145

133:                                              ; preds = %120
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp ne i64 %137, 4
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %141 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %140, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %133
  %143 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %144 = call i32 @kfree_skb(%struct.sk_buff* %143)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %142, %128, %119, %105
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @serdev_device_set_baudrate(i32, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

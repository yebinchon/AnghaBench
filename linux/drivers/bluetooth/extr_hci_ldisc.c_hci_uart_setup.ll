; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.hci_uart = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.hci_uart*, i32)*, i32 (%struct.hci_uart*)* }
%struct.hci_rp_read_local_version = type { i32 }
%struct.sk_buff = type { i32, i64 }

@HCI_UART_VND_DETECT = common dso_local global i32 0, align 4
@HCI_OP_READ_LOCAL_VERSION = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s: Reading local version information failed (%ld)\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"%s: Event length mismatch for version information\00", align 1
@btbcm_set_bdaddr = common dso_local global i32 0, align 4
@btintel_set_bdaddr = common dso_local global i32 0, align 4
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
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @hci_uart_set_baudrate(%struct.hci_uart* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %43 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %48 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  br label %65

50:                                               ; preds = %41
  %51 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %52 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %59 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  br label %64

63:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %57
  br label %65

65:                                               ; preds = %64, %46
  %66 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %67 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32 (%struct.hci_uart*, i32)*, i32 (%struct.hci_uart*, i32)** %69, align 8
  %71 = icmp ne i32 (%struct.hci_uart*, i32)* %70, null
  br i1 %71, label %72, label %91

72:                                               ; preds = %65
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %77 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32 (%struct.hci_uart*, i32)*, i32 (%struct.hci_uart*, i32)** %79, align 8
  %81 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 %80(%struct.hci_uart* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %75
  %87 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @hci_uart_set_baudrate(%struct.hci_uart* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %75
  br label %91

91:                                               ; preds = %90, %72, %65
  %92 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %93 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32 (%struct.hci_uart*)*, i32 (%struct.hci_uart*)** %95, align 8
  %97 = icmp ne i32 (%struct.hci_uart*)* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %91
  %99 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %100 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i32 (%struct.hci_uart*)*, i32 (%struct.hci_uart*)** %102, align 8
  %104 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %105 = call i32 %103(%struct.hci_uart* %104)
  store i32 %105, i32* %2, align 4
  br label %153

106:                                              ; preds = %91
  %107 = load i32, i32* @HCI_UART_VND_DETECT, align 4
  %108 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %109 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %108, i32 0, i32 2
  %110 = call i32 @test_bit(i32 %107, i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %153

113:                                              ; preds = %106
  %114 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %115 = load i32, i32* @HCI_OP_READ_LOCAL_VERSION, align 4
  %116 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %117 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %114, i32 %115, i32 0, i32* null, i32 %116)
  store %struct.sk_buff* %117, %struct.sk_buff** %6, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = call i64 @IS_ERR(%struct.sk_buff* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %113
  %122 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %123 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = call i32 @PTR_ERR(%struct.sk_buff* %125)
  %127 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %126)
  store i32 0, i32* %2, align 4
  br label %153

128:                                              ; preds = %113
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = icmp ne i64 %132, 4
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %136 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  br label %150

139:                                              ; preds = %128
  %140 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to %struct.hci_rp_read_local_version*
  store %struct.hci_rp_read_local_version* %143, %struct.hci_rp_read_local_version** %5, align 8
  %144 = load %struct.hci_rp_read_local_version*, %struct.hci_rp_read_local_version** %5, align 8
  %145 = getelementptr inbounds %struct.hci_rp_read_local_version, %struct.hci_rp_read_local_version* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le16_to_cpu(i32 %146)
  switch i32 %147, label %148 [
  ]

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148
  br label %150

150:                                              ; preds = %149, %134
  %151 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %152 = call i32 @kfree_skb(%struct.sk_buff* %151)
  store i32 0, i32* %2, align 4
  br label %153

153:                                              ; preds = %150, %121, %112, %98
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @hci_uart_set_baudrate(%struct.hci_uart*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @BT_ERR(i8*, i32, ...) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

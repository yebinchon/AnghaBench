; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, %struct.qca_data* }
%struct.qca_data = type { i32, i32 }

@QCA_INIT_SPEED = common dso_local global i32 0, align 4
@QCA_OPER_SPEED = common dso_local global i32 0, align 4
@QCA_WCN3990 = common dso_local global i32 0, align 4
@QCA_DROP_VENDOR_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Set UART speed to %d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to change controller baudrate\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i32)* @qca_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_set_speed(%struct.hci_uart* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qca_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %12 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %11, i32 0, i32 1
  %13 = load %struct.qca_data*, %struct.qca_data** %12, align 8
  store %struct.qca_data* %13, %struct.qca_data** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @QCA_INIT_SPEED, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %19 = load i32, i32* @QCA_INIT_SPEED, align 4
  %20 = call i32 @qca_get_speed(%struct.hci_uart* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @host_set_baudrate(%struct.hci_uart* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %17
  br label %106

28:                                               ; preds = %2
  %29 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %30 = call i32 @qca_soc_type(%struct.hci_uart* %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %32 = load i32, i32* @QCA_OPER_SPEED, align 4
  %33 = call i32 @qca_get_speed(%struct.hci_uart* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %108

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @qca_is_wcn399x(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %43 = call i32 @hci_uart_set_flow_control(%struct.hci_uart* %42, i32 1)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @QCA_WCN3990, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load %struct.qca_data*, %struct.qca_data** %8, align 8
  %50 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %49, i32 0, i32 1
  %51 = call i32 @reinit_completion(i32* %50)
  %52 = load i32, i32* @QCA_DROP_VENDOR_EVENT, align 4
  %53 = load %struct.qca_data*, %struct.qca_data** %8, align 8
  %54 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %53, i32 0, i32 0
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %48, %44
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @qca_get_baudrate_value(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %60 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @bt_dev_dbg(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %65 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @qca_set_baudrate(i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %56
  br label %76

72:                                               ; preds = %56
  %73 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @host_set_baudrate(%struct.hci_uart* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %71
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @qca_is_wcn399x(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %82 = call i32 @hci_uart_set_flow_control(%struct.hci_uart* %81, i32 0)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @QCA_WCN3990, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %83
  %88 = load %struct.qca_data*, %struct.qca_data** %8, align 8
  %89 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %88, i32 0, i32 1
  %90 = call i32 @msecs_to_jiffies(i32 100)
  %91 = call i32 @wait_for_completion_timeout(i32* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %87
  %94 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %95 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @bt_dev_err(i32 %96, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @ETIMEDOUT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %93, %87
  %101 = load i32, i32* @QCA_DROP_VENDOR_EVENT, align 4
  %102 = load %struct.qca_data*, %struct.qca_data** %8, align 8
  %103 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %102, i32 0, i32 0
  %104 = call i32 @clear_bit(i32 %101, i32* %103)
  br label %105

105:                                              ; preds = %100, %83
  br label %106

106:                                              ; preds = %105, %27
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %36
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @qca_get_speed(%struct.hci_uart*, i32) #1

declare dso_local i32 @host_set_baudrate(%struct.hci_uart*, i32) #1

declare dso_local i32 @qca_soc_type(%struct.hci_uart*) #1

declare dso_local i64 @qca_is_wcn399x(i32) #1

declare dso_local i32 @hci_uart_set_flow_control(%struct.hci_uart*, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qca_get_baudrate_value(i32) #1

declare dso_local i32 @bt_dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @qca_set_baudrate(i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @bt_dev_err(i32, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

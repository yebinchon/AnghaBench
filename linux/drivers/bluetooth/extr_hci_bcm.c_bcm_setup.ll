; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.bcm_data* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.bcm_data = type { i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"hu %p\00", align 1
@bcm_set_diag = common dso_local global i32 0, align 4
@btbcm_set_bdaddr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"BCM: Patch %s not found\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"BCM: Patch failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @bcm_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_setup(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.bcm_data*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %9 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %10 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %9, i32 0, i32 4
  %11 = load %struct.bcm_data*, %struct.bcm_data** %10, align 8
  store %struct.bcm_data* %11, %struct.bcm_data** %4, align 8
  %12 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %13 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %16 = call i32 @bt_dev_dbg(%struct.TYPE_8__* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %15)
  %17 = load i32, i32* @bcm_set_diag, align 4
  %18 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %19 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* @btbcm_set_bdaddr, align 4
  %23 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %24 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %23, i32 0, i32 2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %28 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %31 = call i32 @btbcm_initialize(%struct.TYPE_8__* %29, i8* %30, i32 64, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %2, align 4
  br label %155

36:                                               ; preds = %1
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %38 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %39 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %38, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = call i32 @request_firmware(%struct.firmware** %6, i8* %37, i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %47 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %50 = call i32 (%struct.TYPE_8__*, i8*, ...) @bt_dev_info(%struct.TYPE_8__* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  store i32 0, i32* %2, align 4
  br label %155

51:                                               ; preds = %36
  %52 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %53 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load %struct.firmware*, %struct.firmware** %6, align 8
  %56 = call i32 @btbcm_patchram(%struct.TYPE_8__* %54, %struct.firmware* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %61 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (%struct.TYPE_8__*, i8*, ...) @bt_dev_info(%struct.TYPE_8__* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %135

65:                                               ; preds = %51
  %66 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %67 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %72 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %7, align 4
  br label %89

74:                                               ; preds = %65
  %75 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %76 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %75, i32 0, i32 3
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %83 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %82, i32 0, i32 3
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %7, align 4
  br label %88

87:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %81
  br label %89

89:                                               ; preds = %88, %70
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @host_set_baudrate(%struct.hci_uart* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %98 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %103 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %7, align 4
  br label %120

105:                                              ; preds = %96
  %106 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %107 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %106, i32 0, i32 3
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %114 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %113, i32 0, i32 3
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %7, align 4
  br label %119

118:                                              ; preds = %105
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %112
  br label %120

120:                                              ; preds = %119, %101
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @bcm_set_baudrate(%struct.hci_uart* %124, i32 %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %123
  %130 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @host_set_baudrate(%struct.hci_uart* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %123
  br label %134

134:                                              ; preds = %133, %120
  br label %135

135:                                              ; preds = %134, %59
  %136 = load %struct.firmware*, %struct.firmware** %6, align 8
  %137 = call i32 @release_firmware(%struct.firmware* %136)
  %138 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %139 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %138, i32 0, i32 2
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = call i32 @btbcm_finalize(%struct.TYPE_8__* %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %155

146:                                              ; preds = %135
  %147 = load %struct.bcm_data*, %struct.bcm_data** %4, align 8
  %148 = call i32 @bcm_request_irq(%struct.bcm_data* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %152 = call i32 @bcm_setup_sleep(%struct.hci_uart* %151)
  store i32 %152, i32* %8, align 4
  br label %153

153:                                              ; preds = %150, %146
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %144, %45, %34
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @bt_dev_dbg(%struct.TYPE_8__*, i8*, %struct.hci_uart*) #1

declare dso_local i32 @btbcm_initialize(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @bt_dev_info(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @btbcm_patchram(%struct.TYPE_8__*, %struct.firmware*) #1

declare dso_local i32 @host_set_baudrate(%struct.hci_uart*, i32) #1

declare dso_local i32 @bcm_set_baudrate(%struct.hci_uart*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @btbcm_finalize(%struct.TYPE_8__*) #1

declare dso_local i32 @bcm_request_irq(%struct.bcm_data*) #1

declare dso_local i32 @bcm_setup_sleep(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

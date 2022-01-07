; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_gpio_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcm.c_bcm_gpio_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_device = type { i32, {}*, {}*, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@BCM_NUM_SUPPLIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not set LPO clock rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_device*, i32)* @bcm_gpio_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_set_power(%struct.bcm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm_device* %0, %struct.bcm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %62

9:                                                ; preds = %2
  %10 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %11 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %62, label %14

14:                                               ; preds = %9
  %15 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %16 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %15, i32 0, i32 3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load i32, i32* @BCM_NUM_SUPPLIES, align 4
  %24 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %25 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i32 @regulator_bulk_enable(i32 %23, %struct.TYPE_3__* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %175

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %14
  %34 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %35 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clk_set_rate(i32 %36, i32 32768)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %42 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %159

45:                                               ; preds = %33
  %46 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %47 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clk_prepare_enable(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %159

53:                                               ; preds = %45
  %54 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %55 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @clk_prepare_enable(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %145

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %9, %2
  %63 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %64 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %63, i32 0, i32 1
  %65 = bitcast {}** %64 to i32 (%struct.bcm_device*, i32)**
  %66 = load i32 (%struct.bcm_device*, i32)*, i32 (%struct.bcm_device*, i32)** %65, align 8
  %67 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 %66(%struct.bcm_device* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %131

73:                                               ; preds = %62
  %74 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %75 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %74, i32 0, i32 2
  %76 = bitcast {}** %75 to i32 (%struct.bcm_device*, i32)**
  %77 = load i32 (%struct.bcm_device*, i32)*, i32 (%struct.bcm_device*, i32)** %76, align 8
  %78 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 %77(%struct.bcm_device* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %120

84:                                               ; preds = %73
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %115, label %87

87:                                               ; preds = %84
  %88 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %89 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %87
  %93 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %94 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @clk_disable_unprepare(i32 %95)
  %97 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %98 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @clk_disable_unprepare(i32 %99)
  %101 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %102 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %101, i32 0, i32 3
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %92
  %109 = load i32, i32* @BCM_NUM_SUPPLIES, align 4
  %110 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %111 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %110, i32 0, i32 3
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = call i32 @regulator_bulk_disable(i32 %109, %struct.TYPE_3__* %112)
  br label %114

114:                                              ; preds = %108, %92
  br label %115

115:                                              ; preds = %114, %87, %84
  %116 = call i32 @usleep_range(i32 100000, i32 120000)
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %119 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  store i32 0, i32* %3, align 4
  br label %175

120:                                              ; preds = %83
  %121 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %122 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %121, i32 0, i32 1
  %123 = bitcast {}** %122 to i32 (%struct.bcm_device*, i32)**
  %124 = load i32 (%struct.bcm_device*, i32)*, i32 (%struct.bcm_device*, i32)** %123, align 8
  %125 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 %124(%struct.bcm_device* %125, i32 %129)
  br label %131

131:                                              ; preds = %120, %72
  %132 = load i32, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %131
  %135 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %136 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %141 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @clk_disable_unprepare(i32 %142)
  br label %144

144:                                              ; preds = %139, %134, %131
  br label %145

145:                                              ; preds = %144, %60
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %150 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %155 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @clk_disable_unprepare(i32 %156)
  br label %158

158:                                              ; preds = %153, %148, %145
  br label %159

159:                                              ; preds = %158, %52, %40
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %164 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* @BCM_NUM_SUPPLIES, align 4
  %169 = load %struct.bcm_device*, %struct.bcm_device** %4, align 8
  %170 = getelementptr inbounds %struct.bcm_device, %struct.bcm_device* %169, i32 0, i32 3
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = call i32 @regulator_bulk_disable(i32 %168, %struct.TYPE_3__* %171)
  br label %173

173:                                              ; preds = %167, %162, %159
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %115, %30
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

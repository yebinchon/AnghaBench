; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_power_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_power_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32 }
%struct.qca_vreg = type { i32 }
%struct.regulator_bulk_data = type { i32 }
%struct.qca_serdev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, %struct.regulator_bulk_data* }
%struct.TYPE_3__ = type { i32, %struct.qca_vreg* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"on: %d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to enable regulator:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i32)* @qca_power_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_power_setup(%struct.hci_uart* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qca_vreg*, align 8
  %7 = alloca %struct.regulator_bulk_data*, align 8
  %8 = alloca %struct.qca_serdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %13 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qca_serdev* @serdev_device_get_drvdata(i32 %14)
  store %struct.qca_serdev* %15, %struct.qca_serdev** %8, align 8
  %16 = load %struct.qca_serdev*, %struct.qca_serdev** %8, align 8
  %17 = icmp ne %struct.qca_serdev* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.qca_serdev*, %struct.qca_serdev** %8, align 8
  %20 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.qca_serdev*, %struct.qca_serdev** %8, align 8
  %25 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.qca_serdev*, %struct.qca_serdev** %8, align 8
  %32 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %34, align 8
  %36 = icmp ne %struct.regulator_bulk_data* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30, %23, %18, %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %184

40:                                               ; preds = %30
  %41 = load %struct.qca_serdev*, %struct.qca_serdev** %8, align 8
  %42 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.qca_vreg*, %struct.qca_vreg** %46, align 8
  store %struct.qca_vreg* %47, %struct.qca_vreg** %6, align 8
  %48 = load %struct.qca_serdev*, %struct.qca_serdev** %8, align 8
  %49 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %51, align 8
  store %struct.regulator_bulk_data* %52, %struct.regulator_bulk_data** %7, align 8
  %53 = load %struct.qca_serdev*, %struct.qca_serdev** %8, align 8
  %54 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @BT_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %137

64:                                               ; preds = %40
  %65 = load %struct.qca_serdev*, %struct.qca_serdev** %8, align 8
  %66 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %137, label %71

71:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %94, %71
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load %struct.qca_vreg*, %struct.qca_vreg** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %77, i64 %79
  %81 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %81, i64 %83
  %85 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %80, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @qca_enable_regulator(i32 %88, i32 %86)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  br label %97

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %72

97:                                               ; preds = %92, %72
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %131

100:                                              ; preds = %97
  %101 = load %struct.qca_vreg*, %struct.qca_vreg** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %101, i64 %103
  %105 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @BT_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %127, %100
  %111 = load i32, i32* %9, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %110
  %114 = load %struct.qca_vreg*, %struct.qca_vreg** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %114, i64 %116
  %118 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %118, i64 %120
  %122 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %117, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @qca_disable_regulator(i32 %125, i32 %123)
  br label %127

127:                                              ; preds = %113
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %9, align 4
  br label %110

130:                                              ; preds = %110
  br label %136

131:                                              ; preds = %97
  %132 = load %struct.qca_serdev*, %struct.qca_serdev** %8, align 8
  %133 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  br label %136

136:                                              ; preds = %131, %130
  br label %182

137:                                              ; preds = %64, %40
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %181, label %140

140:                                              ; preds = %137
  %141 = load %struct.qca_serdev*, %struct.qca_serdev** %8, align 8
  %142 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %141, i32 0, i32 0
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %181

147:                                              ; preds = %140
  %148 = load %struct.qca_serdev*, %struct.qca_serdev** %8, align 8
  %149 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %173, %147
  %157 = load i32, i32* %9, align 4
  %158 = icmp sge i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %156
  %160 = load %struct.qca_vreg*, %struct.qca_vreg** %6, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %160, i64 %162
  %164 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %7, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %164, i64 %166
  %168 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.qca_vreg, %struct.qca_vreg* %163, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @qca_disable_regulator(i32 %171, i32 %169)
  br label %173

173:                                              ; preds = %159
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %9, align 4
  br label %156

176:                                              ; preds = %156
  %177 = load %struct.qca_serdev*, %struct.qca_serdev** %8, align 8
  %178 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %177, i32 0, i32 0
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  store i32 0, i32* %180, align 8
  br label %181

181:                                              ; preds = %176, %140, %137
  br label %182

182:                                              ; preds = %181, %136
  %183 = load i32, i32* %11, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %37
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.qca_serdev* @serdev_device_get_drvdata(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @qca_enable_regulator(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @qca_disable_regulator(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

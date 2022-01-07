; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_sbs_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_sbs_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.acpi_battery = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @acpi_sbs_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_sbs_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.acpi_battery*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.acpi_battery* @to_acpi_battery(%struct.power_supply* %9)
  store %struct.acpi_battery* %10, %struct.acpi_battery** %8, align 8
  %11 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %12 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 133
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %203

21:                                               ; preds = %15, %3
  %22 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %23 = call i32 @acpi_battery_get_state(%struct.acpi_battery* %22)
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %199 [
    i32 132, label %25
    i32 133, label %49
    i32 131, label %55
    i32 141, label %60
    i32 129, label %66
    i32 128, label %76
    i32 142, label %86
    i32 134, label %86
    i32 143, label %115
    i32 135, label %115
    i32 147, label %144
    i32 145, label %150
    i32 139, label %150
    i32 146, label %160
    i32 140, label %160
    i32 144, label %170
    i32 138, label %170
    i32 130, label %180
    i32 136, label %187
    i32 137, label %193
  ]

25:                                               ; preds = %21
  %26 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %27 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %32 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %33 = bitcast %union.power_supply_propval* %32 to i32*
  store i32 %31, i32* %33, align 4
  br label %48

34:                                               ; preds = %25
  %35 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %36 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %41 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %42 = bitcast %union.power_supply_propval* %41 to i32*
  store i32 %40, i32* %42, align 4
  br label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %45 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %46 = bitcast %union.power_supply_propval* %45 to i32*
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %30
  br label %202

49:                                               ; preds = %21
  %50 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %51 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %54 = bitcast %union.power_supply_propval* %53 to i32*
  store i32 %52, i32* %54, align 4
  br label %202

55:                                               ; preds = %21
  %56 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %57 = call i32 @acpi_battery_technology(%struct.acpi_battery* %56)
  %58 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %59 = bitcast %union.power_supply_propval* %58 to i32*
  store i32 %57, i32* %59, align 4
  br label %202

60:                                               ; preds = %21
  %61 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %62 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %65 = bitcast %union.power_supply_propval* %64 to i32*
  store i32 %63, i32* %65, align 4
  br label %202

66:                                               ; preds = %21
  %67 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %68 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %71 = call i32 @acpi_battery_vscale(%struct.acpi_battery* %70)
  %72 = mul nsw i32 %69, %71
  %73 = mul nsw i32 %72, 1000
  %74 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %75 = bitcast %union.power_supply_propval* %74 to i32*
  store i32 %73, i32* %75, align 4
  br label %202

76:                                               ; preds = %21
  %77 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %78 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %81 = call i32 @acpi_battery_vscale(%struct.acpi_battery* %80)
  %82 = mul nsw i32 %79, %81
  %83 = mul nsw i32 %82, 1000
  %84 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %85 = bitcast %union.power_supply_propval* %84 to i32*
  store i32 %83, i32* %85, align 4
  br label %202

86:                                               ; preds = %21, %21
  %87 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %88 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %87, i32 0, i32 12
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @abs(i32 %89) #3
  %91 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %92 = call i32 @acpi_battery_ipscale(%struct.acpi_battery* %91)
  %93 = mul nsw i32 %90, %92
  %94 = mul nsw i32 %93, 1000
  %95 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %96 = bitcast %union.power_supply_propval* %95 to i32*
  store i32 %94, i32* %96, align 4
  %97 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %98 = call i32 @acpi_battery_mode(%struct.acpi_battery* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %86
  %101 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %102 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %105 = call i32 @acpi_battery_vscale(%struct.acpi_battery* %104)
  %106 = mul nsw i32 %103, %105
  %107 = sdiv i32 %106, 1000
  br label %109

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %108, %100
  %110 = phi i32 [ %107, %100 ], [ 1, %108 ]
  %111 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %112 = bitcast %union.power_supply_propval* %111 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %202

115:                                              ; preds = %21, %21
  %116 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %117 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %116, i32 0, i32 11
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @abs(i32 %118) #3
  %120 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %121 = call i32 @acpi_battery_ipscale(%struct.acpi_battery* %120)
  %122 = mul nsw i32 %119, %121
  %123 = mul nsw i32 %122, 1000
  %124 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %125 = bitcast %union.power_supply_propval* %124 to i32*
  store i32 %123, i32* %125, align 4
  %126 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %127 = call i32 @acpi_battery_mode(%struct.acpi_battery* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %115
  %130 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %131 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %134 = call i32 @acpi_battery_vscale(%struct.acpi_battery* %133)
  %135 = mul nsw i32 %132, %134
  %136 = sdiv i32 %135, 1000
  br label %138

137:                                              ; preds = %115
  br label %138

138:                                              ; preds = %137, %129
  %139 = phi i32 [ %136, %129 ], [ 1, %137 ]
  %140 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %141 = bitcast %union.power_supply_propval* %140 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %202

144:                                              ; preds = %21
  %145 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %146 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %149 = bitcast %union.power_supply_propval* %148 to i32*
  store i32 %147, i32* %149, align 4
  br label %202

150:                                              ; preds = %21, %21
  %151 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %152 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %155 = call i32 @acpi_battery_scale(%struct.acpi_battery* %154)
  %156 = mul nsw i32 %153, %155
  %157 = mul nsw i32 %156, 1000
  %158 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %159 = bitcast %union.power_supply_propval* %158 to i32*
  store i32 %157, i32* %159, align 4
  br label %202

160:                                              ; preds = %21, %21
  %161 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %162 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %165 = call i32 @acpi_battery_scale(%struct.acpi_battery* %164)
  %166 = mul nsw i32 %163, %165
  %167 = mul nsw i32 %166, 1000
  %168 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %169 = bitcast %union.power_supply_propval* %168 to i32*
  store i32 %167, i32* %169, align 4
  br label %202

170:                                              ; preds = %21, %21
  %171 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %172 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %175 = call i32 @acpi_battery_scale(%struct.acpi_battery* %174)
  %176 = mul nsw i32 %173, %175
  %177 = mul nsw i32 %176, 1000
  %178 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %179 = bitcast %union.power_supply_propval* %178 to i32*
  store i32 %177, i32* %179, align 4
  br label %202

180:                                              ; preds = %21
  %181 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %182 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %181, i32 0, i32 10
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, 2730
  %185 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %186 = bitcast %union.power_supply_propval* %185 to i32*
  store i32 %184, i32* %186, align 4
  br label %202

187:                                              ; preds = %21
  %188 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %189 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %188, i32 0, i32 9
  %190 = load i32, i32* %189, align 4
  %191 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %192 = bitcast %union.power_supply_propval* %191 to i32*
  store i32 %190, i32* %192, align 4
  br label %202

193:                                              ; preds = %21
  %194 = load %struct.acpi_battery*, %struct.acpi_battery** %8, align 8
  %195 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 4
  %197 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %198 = bitcast %union.power_supply_propval* %197 to i32*
  store i32 %196, i32* %198, align 4
  br label %202

199:                                              ; preds = %21
  %200 = load i32, i32* @EINVAL, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %4, align 4
  br label %203

202:                                              ; preds = %193, %187, %180, %170, %160, %150, %144, %138, %109, %76, %66, %60, %55, %49, %48
  store i32 0, i32* %4, align 4
  br label %203

203:                                              ; preds = %202, %199, %18
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local %struct.acpi_battery* @to_acpi_battery(%struct.power_supply*) #1

declare dso_local i32 @acpi_battery_get_state(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_technology(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_vscale(%struct.acpi_battery*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @acpi_battery_ipscale(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_mode(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_scale(%struct.acpi_battery*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_acpi_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_acpi_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.acpi_battery = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ACPI_BATTERY_STATE_DISCHARGING = common dso_local global i32 0, align 4
@ACPI_BATTERY_STATE_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@ACPI_BATTERY_VALUE_UNKNOWN = common dso_local global i32 0, align 4
@ACPI_BATTERY_STATE_CRITICAL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL = common dso_local global i32 0, align 4
@ACPI_BATTERY_ALARM_PRESENT = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_LOW = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_CAPACITY_LEVEL_NORMAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @acpi_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_battery*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.acpi_battery* @to_acpi_battery(%struct.power_supply* %10)
  store %struct.acpi_battery* %11, %struct.acpi_battery** %9, align 8
  %12 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %13 = call i32 @acpi_battery_present(%struct.acpi_battery* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %17 = call i32 @acpi_battery_get_state(%struct.acpi_battery* %16)
  br label %25

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 133
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %275

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %270 [
    i32 131, label %27
    i32 133, label %65
    i32 130, label %70
    i32 140, label %75
    i32 129, label %81
    i32 128, label %98
    i32 141, label %115
    i32 134, label %115
    i32 143, label %132
    i32 138, label %132
    i32 144, label %149
    i32 139, label %149
    i32 142, label %166
    i32 137, label %166
    i32 146, label %183
    i32 145, label %208
    i32 135, label %252
    i32 136, label %258
    i32 132, label %264
  ]

27:                                               ; preds = %25
  %28 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %29 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ACPI_BATTERY_STATE_DISCHARGING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %36 = call i32 @acpi_battery_handle_discharging(%struct.acpi_battery* %35)
  %37 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %38 = bitcast %union.power_supply_propval* %37 to i32*
  store i32 %36, i32* %38, align 4
  br label %64

39:                                               ; preds = %27
  %40 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %41 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ACPI_BATTERY_STATE_CHARGING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %48 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %49 = bitcast %union.power_supply_propval* %48 to i32*
  store i32 %47, i32* %49, align 4
  br label %63

50:                                               ; preds = %39
  %51 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %52 = call i32 @acpi_battery_is_charged(%struct.acpi_battery* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %56 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %57 = bitcast %union.power_supply_propval* %56 to i32*
  store i32 %55, i32* %57, align 4
  br label %62

58:                                               ; preds = %50
  %59 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %60 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %61 = bitcast %union.power_supply_propval* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %46
  br label %64

64:                                               ; preds = %63, %34
  br label %273

65:                                               ; preds = %25
  %66 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %67 = call i32 @acpi_battery_present(%struct.acpi_battery* %66)
  %68 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %69 = bitcast %union.power_supply_propval* %68 to i32*
  store i32 %67, i32* %69, align 4
  br label %273

70:                                               ; preds = %25
  %71 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %72 = call i32 @acpi_battery_technology(%struct.acpi_battery* %71)
  %73 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %74 = bitcast %union.power_supply_propval* %73 to i32*
  store i32 %72, i32* %74, align 4
  br label %273

75:                                               ; preds = %25
  %76 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %77 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %80 = bitcast %union.power_supply_propval* %79 to i32*
  store i32 %78, i32* %80, align 4
  br label %273

81:                                               ; preds = %25
  %82 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %83 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ACPI_BATTERY_VALUE_UNKNOWN, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %97

90:                                               ; preds = %81
  %91 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %92 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %93, 1000
  %95 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %96 = bitcast %union.power_supply_propval* %95 to i32*
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %90, %87
  br label %273

98:                                               ; preds = %25
  %99 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %100 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ACPI_BATTERY_VALUE_UNKNOWN, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %114

107:                                              ; preds = %98
  %108 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %109 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %110, 1000
  %112 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %113 = bitcast %union.power_supply_propval* %112 to i32*
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %107, %104
  br label %273

115:                                              ; preds = %25, %25
  %116 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %117 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ACPI_BATTERY_VALUE_UNKNOWN, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, i32* @ENODEV, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %8, align 4
  br label %131

124:                                              ; preds = %115
  %125 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %126 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, 1000
  %129 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %130 = bitcast %union.power_supply_propval* %129 to i32*
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %124, %121
  br label %273

132:                                              ; preds = %25, %25
  %133 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %134 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @ACPI_BATTERY_VALUE_UNKNOWN, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32, i32* @ENODEV, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %148

141:                                              ; preds = %132
  %142 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %143 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %144, 1000
  %146 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %147 = bitcast %union.power_supply_propval* %146 to i32*
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %141, %138
  br label %273

149:                                              ; preds = %25, %25
  %150 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %151 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @ACPI_BATTERY_VALUE_UNKNOWN, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32, i32* @ENODEV, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %8, align 4
  br label %165

158:                                              ; preds = %149
  %159 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %160 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %161, 1000
  %163 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %164 = bitcast %union.power_supply_propval* %163 to i32*
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %158, %155
  br label %273

166:                                              ; preds = %25, %25
  %167 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %168 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ACPI_BATTERY_VALUE_UNKNOWN, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %8, align 4
  br label %182

175:                                              ; preds = %166
  %176 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %177 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %178, 1000
  %180 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %181 = bitcast %union.power_supply_propval* %180 to i32*
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %175, %172
  br label %273

183:                                              ; preds = %25
  %184 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %185 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %183
  %189 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %190 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %188
  %194 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %195 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %196, 100
  %198 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %199 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 4
  %201 = sdiv i32 %197, %200
  %202 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %203 = bitcast %union.power_supply_propval* %202 to i32*
  store i32 %201, i32* %203, align 4
  br label %207

204:                                              ; preds = %188, %183
  %205 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %206 = bitcast %union.power_supply_propval* %205 to i32*
  store i32 0, i32* %206, align 4
  br label %207

207:                                              ; preds = %204, %193
  br label %273

208:                                              ; preds = %25
  %209 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %210 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @ACPI_BATTERY_STATE_CRITICAL, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %208
  %216 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL, align 4
  %217 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %218 = bitcast %union.power_supply_propval* %217 to i32*
  store i32 %216, i32* %218, align 4
  br label %251

219:                                              ; preds = %208
  %220 = load i32, i32* @ACPI_BATTERY_ALARM_PRESENT, align 4
  %221 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %222 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %221, i32 0, i32 12
  %223 = call i32 @test_bit(i32 %220, i32* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %219
  %226 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %227 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %230 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 4
  %232 = icmp sle i32 %228, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %225
  %234 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_LOW, align 4
  %235 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %236 = bitcast %union.power_supply_propval* %235 to i32*
  store i32 %234, i32* %236, align 4
  br label %250

237:                                              ; preds = %225, %219
  %238 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %239 = call i32 @acpi_battery_is_charged(%struct.acpi_battery* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_FULL, align 4
  %243 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %244 = bitcast %union.power_supply_propval* %243 to i32*
  store i32 %242, i32* %244, align 4
  br label %249

245:                                              ; preds = %237
  %246 = load i32, i32* @POWER_SUPPLY_CAPACITY_LEVEL_NORMAL, align 4
  %247 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %248 = bitcast %union.power_supply_propval* %247 to i32*
  store i32 %246, i32* %248, align 4
  br label %249

249:                                              ; preds = %245, %241
  br label %250

250:                                              ; preds = %249, %233
  br label %251

251:                                              ; preds = %250, %215
  br label %273

252:                                              ; preds = %25
  %253 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %254 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %253, i32 0, i32 11
  %255 = load i32, i32* %254, align 4
  %256 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %257 = bitcast %union.power_supply_propval* %256 to i32*
  store i32 %255, i32* %257, align 4
  br label %273

258:                                              ; preds = %25
  %259 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %260 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %259, i32 0, i32 10
  %261 = load i32, i32* %260, align 4
  %262 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %263 = bitcast %union.power_supply_propval* %262 to i32*
  store i32 %261, i32* %263, align 4
  br label %273

264:                                              ; preds = %25
  %265 = load %struct.acpi_battery*, %struct.acpi_battery** %9, align 8
  %266 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %265, i32 0, i32 9
  %267 = load i32, i32* %266, align 4
  %268 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %269 = bitcast %union.power_supply_propval* %268 to i32*
  store i32 %267, i32* %269, align 4
  br label %273

270:                                              ; preds = %25
  %271 = load i32, i32* @EINVAL, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %8, align 4
  br label %273

273:                                              ; preds = %270, %264, %258, %252, %251, %207, %182, %165, %148, %131, %114, %97, %75, %70, %65, %64
  %274 = load i32, i32* %8, align 4
  store i32 %274, i32* %4, align 4
  br label %275

275:                                              ; preds = %273, %21
  %276 = load i32, i32* %4, align 4
  ret i32 %276
}

declare dso_local %struct.acpi_battery* @to_acpi_battery(%struct.power_supply*) #1

declare dso_local i32 @acpi_battery_present(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_get_state(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_handle_discharging(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_is_charged(%struct.acpi_battery*) #1

declare dso_local i32 @acpi_battery_technology(%struct.acpi_battery*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_handle_lcd_special_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_handle_lcd_special_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i8)* }
%struct.charlcd_priv = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8*, i32 }

@LCD_FLAG_D = common dso_local global i32 0, align 4
@LCD_FLAG_C = common dso_local global i32 0, align 4
@LCD_FLAG_B = common dso_local global i32 0, align 4
@LCD_FLAG_L = common dso_local global i32 0, align 4
@LCD_FLAG_F = common dso_local global i32 0, align 4
@LCD_FLAG_N = common dso_local global i32 0, align 4
@LCD_CMD_SHIFT = common dso_local global i32 0, align 4
@LCD_CMD_SHIFT_RIGHT = common dso_local global i32 0, align 4
@LCD_CMD_DISPLAY_SHIFT = common dso_local global i32 0, align 4
@LCD_CMD_SET_CGRAM_ADDR = common dso_local global i8 0, align 1
@LCD_CMD_DISPLAY_CTRL = common dso_local global i32 0, align 4
@LCD_CMD_DISPLAY_ON = common dso_local global i32 0, align 4
@LCD_CMD_CURSOR_ON = common dso_local global i32 0, align 4
@LCD_CMD_BLINK_ON = common dso_local global i32 0, align 4
@LCD_CMD_FUNCTION_SET = common dso_local global i32 0, align 4
@LCD_CMD_DATA_LEN_8BITS = common dso_local global i32 0, align 4
@LCD_CMD_FONT_5X10_DOTS = common dso_local global i32 0, align 4
@LCD_CMD_TWO_LINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charlcd*)* @handle_lcd_special_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_lcd_special_code(%struct.charlcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.charlcd*, align 8
  %4 = alloca %struct.charlcd_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store %struct.charlcd* %0, %struct.charlcd** %3, align 8
  %15 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %16 = call %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd* %15)
  store %struct.charlcd_priv* %16, %struct.charlcd_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %17 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %18 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  store i8* %21, i8** %6, align 8
  %22 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %23 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %408 [
    i32 68, label %28
    i32 100, label %34
    i32 67, label %41
    i32 99, label %47
    i32 66, label %54
    i32 98, label %60
    i32 43, label %67
    i32 45, label %73
    i32 42, label %80
    i32 102, label %83
    i32 70, label %90
    i32 110, label %96
    i32 78, label %103
    i32 108, label %109
    i32 114, label %140
    i32 76, label %177
    i32 82, label %188
    i32 107, label %201
    i32 73, label %226
    i32 71, label %229
    i32 120, label %378
    i32 121, label %378
  ]

28:                                               ; preds = %1
  %29 = load i32, i32* @LCD_FLAG_D, align 4
  %30 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %31 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  store i32 1, i32* %5, align 4
  br label %408

34:                                               ; preds = %1
  %35 = load i32, i32* @LCD_FLAG_D, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %38 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  store i32 1, i32* %5, align 4
  br label %408

41:                                               ; preds = %1
  %42 = load i32, i32* @LCD_FLAG_C, align 4
  %43 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %44 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  store i32 1, i32* %5, align 4
  br label %408

47:                                               ; preds = %1
  %48 = load i32, i32* @LCD_FLAG_C, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %51 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  store i32 1, i32* %5, align 4
  br label %408

54:                                               ; preds = %1
  %55 = load i32, i32* @LCD_FLAG_B, align 4
  %56 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %57 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  store i32 1, i32* %5, align 4
  br label %408

60:                                               ; preds = %1
  %61 = load i32, i32* @LCD_FLAG_B, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %64 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  store i32 1, i32* %5, align 4
  br label %408

67:                                               ; preds = %1
  %68 = load i32, i32* @LCD_FLAG_L, align 4
  %69 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %70 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  store i32 1, i32* %5, align 4
  br label %408

73:                                               ; preds = %1
  %74 = load i32, i32* @LCD_FLAG_L, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %77 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  store i32 1, i32* %5, align 4
  br label %408

80:                                               ; preds = %1
  %81 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %82 = call i32 @charlcd_poke(%struct.charlcd* %81)
  store i32 1, i32* %5, align 4
  br label %408

83:                                               ; preds = %1
  %84 = load i32, i32* @LCD_FLAG_F, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %87 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  store i32 1, i32* %5, align 4
  br label %408

90:                                               ; preds = %1
  %91 = load i32, i32* @LCD_FLAG_F, align 4
  %92 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %93 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  store i32 1, i32* %5, align 4
  br label %408

96:                                               ; preds = %1
  %97 = load i32, i32* @LCD_FLAG_N, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %100 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  store i32 1, i32* %5, align 4
  br label %408

103:                                              ; preds = %1
  %104 = load i32, i32* @LCD_FLAG_N, align 4
  %105 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %106 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  store i32 1, i32* %5, align 4
  br label %408

109:                                              ; preds = %1
  %110 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %111 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %109
  %116 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %117 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %121 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %115
  %125 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %126 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %125, i32 0, i32 3
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %128, align 8
  %130 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %131 = load i32, i32* @LCD_CMD_SHIFT, align 4
  %132 = call i32 %129(%struct.charlcd* %130, i32 %131)
  br label %133

133:                                              ; preds = %124, %115
  %134 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %135 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %109
  store i32 1, i32* %5, align 4
  br label %408

140:                                              ; preds = %1
  %141 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %142 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %146 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %176

149:                                              ; preds = %140
  %150 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %151 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %155 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %156, 1
  %158 = icmp slt i32 %153, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %149
  %160 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %161 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %160, i32 0, i32 3
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %163, align 8
  %165 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %166 = load i32, i32* @LCD_CMD_SHIFT, align 4
  %167 = load i32, i32* @LCD_CMD_SHIFT_RIGHT, align 4
  %168 = or i32 %166, %167
  %169 = call i32 %164(%struct.charlcd* %165, i32 %168)
  br label %170

170:                                              ; preds = %159, %149
  %171 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %172 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %170, %140
  store i32 1, i32* %5, align 4
  br label %408

177:                                              ; preds = %1
  %178 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %179 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %178, i32 0, i32 3
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %181, align 8
  %183 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %184 = load i32, i32* @LCD_CMD_SHIFT, align 4
  %185 = load i32, i32* @LCD_CMD_DISPLAY_SHIFT, align 4
  %186 = or i32 %184, %185
  %187 = call i32 %182(%struct.charlcd* %183, i32 %186)
  store i32 1, i32* %5, align 4
  br label %408

188:                                              ; preds = %1
  %189 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %190 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %189, i32 0, i32 3
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %192, align 8
  %194 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %195 = load i32, i32* @LCD_CMD_SHIFT, align 4
  %196 = load i32, i32* @LCD_CMD_DISPLAY_SHIFT, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @LCD_CMD_SHIFT_RIGHT, align 4
  %199 = or i32 %197, %198
  %200 = call i32 %193(%struct.charlcd* %194, i32 %199)
  store i32 1, i32* %5, align 4
  br label %408

201:                                              ; preds = %1
  %202 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %203 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %220, %201
  %207 = load i32, i32* %8, align 4
  %208 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %209 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %223

212:                                              ; preds = %206
  %213 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %214 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %213, i32 0, i32 3
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = load i32 (%struct.charlcd*, i8)*, i32 (%struct.charlcd*, i8)** %216, align 8
  %218 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %219 = call i32 %217(%struct.charlcd* %218, i8 zeroext 32)
  br label %220

220:                                              ; preds = %212
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  br label %206

223:                                              ; preds = %206
  %224 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %225 = call i32 @charlcd_gotoxy(%struct.charlcd* %224)
  store i32 1, i32* %5, align 4
  br label %408

226:                                              ; preds = %1
  %227 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %228 = call i32 @charlcd_init_display(%struct.charlcd* %227)
  store i32 1, i32* %5, align 4
  br label %408

229:                                              ; preds = %1
  %230 = load i8*, i8** %6, align 8
  %231 = call i32 @strchr(i8* %230, i8 signext 59)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %229
  br label %408

234:                                              ; preds = %229
  %235 = load i8*, i8** %6, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %6, align 8
  %237 = load i8*, i8** %6, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %6, align 8
  %239 = load i8, i8* %237, align 1
  %240 = sext i8 %239 to i32
  %241 = sub nsw i32 %240, 48
  %242 = trunc i32 %241 to i8
  store i8 %242, i8* %10, align 1
  %243 = load i8, i8* %10, align 1
  %244 = zext i8 %243 to i32
  %245 = icmp sgt i32 %244, 7
  br i1 %245, label %246, label %247

246:                                              ; preds = %234
  store i32 1, i32* %5, align 4
  br label %408

247:                                              ; preds = %234
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8 0, i8* %13, align 1
  br label %248

248:                                              ; preds = %339, %325, %247
  %249 = load i8*, i8** %6, align 8
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load i32, i32* %11, align 4
  %255 = icmp slt i32 %254, 8
  br label %256

256:                                              ; preds = %253, %248
  %257 = phi i1 [ false, %248 ], [ %255, %253 ]
  br i1 %257, label %258, label %342

258:                                              ; preds = %256
  %259 = load i32, i32* %12, align 4
  %260 = xor i32 %259, 4
  store i32 %260, i32* %12, align 4
  %261 = load i8*, i8** %6, align 8
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp sge i32 %263, 48
  br i1 %264, label %265, label %281

265:                                              ; preds = %258
  %266 = load i8*, i8** %6, align 8
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp sle i32 %268, 57
  br i1 %269, label %270, label %281

270:                                              ; preds = %265
  %271 = load i8*, i8** %6, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = sub nsw i32 %273, 48
  %275 = load i32, i32* %12, align 4
  %276 = shl i32 %274, %275
  %277 = load i8, i8* %13, align 1
  %278 = sext i8 %277 to i32
  %279 = or i32 %278, %276
  %280 = trunc i32 %279 to i8
  store i8 %280, i8* %13, align 1
  br label %330

281:                                              ; preds = %265, %258
  %282 = load i8*, i8** %6, align 8
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp sge i32 %284, 65
  br i1 %285, label %286, label %303

286:                                              ; preds = %281
  %287 = load i8*, i8** %6, align 8
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp sle i32 %289, 70
  br i1 %290, label %291, label %303

291:                                              ; preds = %286
  %292 = load i8*, i8** %6, align 8
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = sub nsw i32 %294, 65
  %296 = add nsw i32 %295, 10
  %297 = load i32, i32* %12, align 4
  %298 = shl i32 %296, %297
  %299 = load i8, i8* %13, align 1
  %300 = sext i8 %299 to i32
  %301 = or i32 %300, %298
  %302 = trunc i32 %301 to i8
  store i8 %302, i8* %13, align 1
  br label %329

303:                                              ; preds = %286, %281
  %304 = load i8*, i8** %6, align 8
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = icmp sge i32 %306, 97
  br i1 %307, label %308, label %325

308:                                              ; preds = %303
  %309 = load i8*, i8** %6, align 8
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp sle i32 %311, 102
  br i1 %312, label %313, label %325

313:                                              ; preds = %308
  %314 = load i8*, i8** %6, align 8
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = sub nsw i32 %316, 97
  %318 = add nsw i32 %317, 10
  %319 = load i32, i32* %12, align 4
  %320 = shl i32 %318, %319
  %321 = load i8, i8* %13, align 1
  %322 = sext i8 %321 to i32
  %323 = or i32 %322, %320
  %324 = trunc i32 %323 to i8
  store i8 %324, i8* %13, align 1
  br label %328

325:                                              ; preds = %308, %303
  %326 = load i8*, i8** %6, align 8
  %327 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %327, i8** %6, align 8
  br label %248

328:                                              ; preds = %313
  br label %329

329:                                              ; preds = %328, %291
  br label %330

330:                                              ; preds = %329, %270
  %331 = load i32, i32* %12, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %330
  %334 = load i8, i8* %13, align 1
  %335 = load i32, i32* %11, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %11, align 4
  %337 = sext i32 %335 to i64
  %338 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 %337
  store i8 %334, i8* %338, align 1
  store i8 0, i8* %13, align 1
  br label %339

339:                                              ; preds = %333, %330
  %340 = load i8*, i8** %6, align 8
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** %6, align 8
  br label %248

342:                                              ; preds = %256
  %343 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %344 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %343, i32 0, i32 3
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 0
  %347 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %346, align 8
  %348 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %349 = load i8, i8* @LCD_CMD_SET_CGRAM_ADDR, align 1
  %350 = zext i8 %349 to i32
  %351 = load i8, i8* %10, align 1
  %352 = zext i8 %351 to i32
  %353 = mul nsw i32 %352, 8
  %354 = or i32 %350, %353
  %355 = call i32 %347(%struct.charlcd* %348, i32 %354)
  store i32 0, i32* %14, align 4
  br label %356

356:                                              ; preds = %372, %342
  %357 = load i32, i32* %14, align 4
  %358 = load i32, i32* %11, align 4
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %375

360:                                              ; preds = %356
  %361 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %362 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %361, i32 0, i32 3
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 1
  %365 = load i32 (%struct.charlcd*, i8)*, i32 (%struct.charlcd*, i8)** %364, align 8
  %366 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %367 = load i32, i32* %14, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 %368
  %370 = load i8, i8* %369, align 1
  %371 = call i32 %365(%struct.charlcd* %366, i8 zeroext %370)
  br label %372

372:                                              ; preds = %360
  %373 = load i32, i32* %14, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %14, align 4
  br label %356

375:                                              ; preds = %356
  %376 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %377 = call i32 @charlcd_gotoxy(%struct.charlcd* %376)
  store i32 1, i32* %5, align 4
  br label %408

378:                                              ; preds = %1, %1
  %379 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %380 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %379, i32 0, i32 2
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %384 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = sub nsw i32 %386, 1
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %382, i64 %388
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  %392 = icmp ne i32 %391, 59
  br i1 %392, label %393, label %394

393:                                              ; preds = %378
  br label %408

394:                                              ; preds = %378
  %395 = load i8*, i8** %6, align 8
  %396 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %397 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 0
  %399 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %400 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 1
  %402 = call i32 @parse_xy(i8* %395, i32* %398, i32* %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %407

404:                                              ; preds = %394
  %405 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %406 = call i32 @charlcd_gotoxy(%struct.charlcd* %405)
  br label %407

407:                                              ; preds = %404, %394
  store i32 1, i32* %5, align 4
  br label %408

408:                                              ; preds = %1, %407, %393, %375, %246, %233, %226, %223, %188, %177, %176, %139, %103, %96, %90, %83, %80, %73, %67, %60, %54, %47, %41, %34, %28
  %409 = load i32, i32* %7, align 4
  %410 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %411 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = icmp eq i32 %409, %412
  br i1 %413, label %414, label %416

414:                                              ; preds = %408
  %415 = load i32, i32* %5, align 4
  store i32 %415, i32* %2, align 4
  br label %553

416:                                              ; preds = %408
  %417 = load i32, i32* %7, align 4
  %418 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %419 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = xor i32 %417, %420
  %422 = load i32, i32* @LCD_FLAG_B, align 4
  %423 = load i32, i32* @LCD_FLAG_C, align 4
  %424 = or i32 %422, %423
  %425 = load i32, i32* @LCD_FLAG_D, align 4
  %426 = or i32 %424, %425
  %427 = and i32 %421, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %474

429:                                              ; preds = %416
  %430 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %431 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %430, i32 0, i32 3
  %432 = load %struct.TYPE_6__*, %struct.TYPE_6__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 0
  %434 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %433, align 8
  %435 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %436 = load i32, i32* @LCD_CMD_DISPLAY_CTRL, align 4
  %437 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %438 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @LCD_FLAG_D, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %445

443:                                              ; preds = %429
  %444 = load i32, i32* @LCD_CMD_DISPLAY_ON, align 4
  br label %446

445:                                              ; preds = %429
  br label %446

446:                                              ; preds = %445, %443
  %447 = phi i32 [ %444, %443 ], [ 0, %445 ]
  %448 = or i32 %436, %447
  %449 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %450 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* @LCD_FLAG_C, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %457

455:                                              ; preds = %446
  %456 = load i32, i32* @LCD_CMD_CURSOR_ON, align 4
  br label %458

457:                                              ; preds = %446
  br label %458

458:                                              ; preds = %457, %455
  %459 = phi i32 [ %456, %455 ], [ 0, %457 ]
  %460 = or i32 %448, %459
  %461 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %462 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = load i32, i32* @LCD_FLAG_B, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %469

467:                                              ; preds = %458
  %468 = load i32, i32* @LCD_CMD_BLINK_ON, align 4
  br label %470

469:                                              ; preds = %458
  br label %470

470:                                              ; preds = %469, %467
  %471 = phi i32 [ %468, %467 ], [ 0, %469 ]
  %472 = or i32 %460, %471
  %473 = call i32 %434(%struct.charlcd* %435, i32 %472)
  br label %551

474:                                              ; preds = %416
  %475 = load i32, i32* %7, align 4
  %476 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %477 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = xor i32 %475, %478
  %480 = load i32, i32* @LCD_FLAG_F, align 4
  %481 = load i32, i32* @LCD_FLAG_N, align 4
  %482 = or i32 %480, %481
  %483 = and i32 %479, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %528

485:                                              ; preds = %474
  %486 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %487 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %486, i32 0, i32 3
  %488 = load %struct.TYPE_6__*, %struct.TYPE_6__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %488, i32 0, i32 0
  %490 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %489, align 8
  %491 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %492 = load i32, i32* @LCD_CMD_FUNCTION_SET, align 4
  %493 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %494 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 8
  %496 = icmp eq i32 %495, 8
  br i1 %496, label %497, label %499

497:                                              ; preds = %485
  %498 = load i32, i32* @LCD_CMD_DATA_LEN_8BITS, align 4
  br label %500

499:                                              ; preds = %485
  br label %500

500:                                              ; preds = %499, %497
  %501 = phi i32 [ %498, %497 ], [ 0, %499 ]
  %502 = or i32 %492, %501
  %503 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %504 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = load i32, i32* @LCD_FLAG_F, align 4
  %507 = and i32 %505, %506
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %511

509:                                              ; preds = %500
  %510 = load i32, i32* @LCD_CMD_FONT_5X10_DOTS, align 4
  br label %512

511:                                              ; preds = %500
  br label %512

512:                                              ; preds = %511, %509
  %513 = phi i32 [ %510, %509 ], [ 0, %511 ]
  %514 = or i32 %502, %513
  %515 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %516 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = load i32, i32* @LCD_FLAG_N, align 4
  %519 = and i32 %517, %518
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %523

521:                                              ; preds = %512
  %522 = load i32, i32* @LCD_CMD_TWO_LINES, align 4
  br label %524

523:                                              ; preds = %512
  br label %524

524:                                              ; preds = %523, %521
  %525 = phi i32 [ %522, %521 ], [ 0, %523 ]
  %526 = or i32 %514, %525
  %527 = call i32 %490(%struct.charlcd* %491, i32 %526)
  br label %550

528:                                              ; preds = %474
  %529 = load i32, i32* %7, align 4
  %530 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %531 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = xor i32 %529, %532
  %534 = load i32, i32* @LCD_FLAG_L, align 4
  %535 = and i32 %533, %534
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %549

537:                                              ; preds = %528
  %538 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %539 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %540 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = load i32, i32* @LCD_FLAG_L, align 4
  %543 = and i32 %541, %542
  %544 = icmp ne i32 %543, 0
  %545 = xor i1 %544, true
  %546 = xor i1 %545, true
  %547 = zext i1 %546 to i32
  %548 = call i32 @charlcd_backlight(%struct.charlcd* %538, i32 %547)
  br label %549

549:                                              ; preds = %537, %528
  br label %550

550:                                              ; preds = %549, %524
  br label %551

551:                                              ; preds = %550, %470
  %552 = load i32, i32* %5, align 4
  store i32 %552, i32* %2, align 4
  br label %553

553:                                              ; preds = %551, %414
  %554 = load i32, i32* %2, align 4
  ret i32 %554
}

declare dso_local %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd*) #1

declare dso_local i32 @charlcd_poke(%struct.charlcd*) #1

declare dso_local i32 @charlcd_gotoxy(%struct.charlcd*) #1

declare dso_local i32 @charlcd_init_display(%struct.charlcd*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @parse_xy(i8*, i32*, i32*) #1

declare dso_local i32 @charlcd_backlight(%struct.charlcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_lcd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_panel.c_lcd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, %struct.charlcd*, %struct.TYPE_3__ }
%struct.charlcd = type { i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64 }

@lcd_height = common dso_local global i64 0, align 8
@lcd_width = common dso_local global i64 0, align 8
@lcd_bwidth = common dso_local global i64 0, align 8
@lcd_hwidth = common dso_local global i64 0, align 8
@selected_lcd_type = common dso_local global i32 0, align 4
@LCD_PROTO_PARALLEL = common dso_local global i64 0, align 8
@lcd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LCD_CHARSET_NORMAL = common dso_local global i8* null, align 8
@PIN_STROBE = common dso_local global i8* null, align 8
@PIN_AUTOLF = common dso_local global i8* null, align 8
@LCD_PROTO_SERIAL = common dso_local global i64 0, align 8
@LCD_CHARSET_KS0074 = common dso_local global i64 0, align 8
@PIN_D0 = common dso_local global i64 0, align 8
@PIN_SELECP = common dso_local global i8* null, align 8
@PIN_INITP = common dso_local global i64 0, align 8
@DEFAULT_LCD_PROTO = common dso_local global i64 0, align 8
@DEFAULT_LCD_CHARSET = common dso_local global i8* null, align 8
@NOT_SET = common dso_local global i64 0, align 8
@lcd_charset = common dso_local global i64 0, align 8
@lcd_proto = common dso_local global i64 0, align 8
@lcd_e_pin = common dso_local global i64 0, align 8
@PIN_NOT_SET = common dso_local global i64 0, align 8
@lcd_rs_pin = common dso_local global i64 0, align 8
@lcd_rw_pin = common dso_local global i64 0, align 8
@lcd_cl_pin = common dso_local global i64 0, align 8
@lcd_da_pin = common dso_local global i64 0, align 8
@lcd_bl_pin = common dso_local global i64 0, align 8
@DEFAULT_LCD_WIDTH = common dso_local global i64 0, align 8
@DEFAULT_LCD_BWIDTH = common dso_local global i64 0, align 8
@DEFAULT_LCD_HWIDTH = common dso_local global i64 0, align 8
@DEFAULT_LCD_HEIGHT = common dso_local global i64 0, align 8
@charlcd_serial_ops = common dso_local global i32 0, align 4
@DEFAULT_LCD_PIN_SCL = common dso_local global i64 0, align 8
@DEFAULT_LCD_PIN_SDA = common dso_local global i64 0, align 8
@charlcd_parallel_ops = common dso_local global i32 0, align 4
@DEFAULT_LCD_PIN_E = common dso_local global i64 0, align 8
@DEFAULT_LCD_PIN_RS = common dso_local global i64 0, align 8
@DEFAULT_LCD_PIN_RW = common dso_local global i64 0, align 8
@charlcd_tilcd_ops = common dso_local global i32 0, align 4
@DEFAULT_LCD_PIN_BL = common dso_local global i64 0, align 8
@PIN_NONE = common dso_local global i8* null, align 8
@lcd_char_conv_ks0074 = common dso_local global i32* null, align 8
@lcd_bits = common dso_local global i32** null, align 8
@LCD_PORT_D = common dso_local global i64 0, align 8
@LCD_BIT_E = common dso_local global i64 0, align 8
@LCD_PORT_C = common dso_local global i64 0, align 8
@LCD_BIT_RS = common dso_local global i64 0, align 8
@LCD_BIT_RW = common dso_local global i64 0, align 8
@LCD_BIT_BL = common dso_local global i64 0, align 8
@LCD_BIT_CL = common dso_local global i64 0, align 8
@LCD_BIT_DA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lcd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcd_init() #0 {
  %1 = alloca %struct.charlcd*, align 8
  %2 = call %struct.charlcd* @charlcd_alloc(i32 0)
  store %struct.charlcd* %2, %struct.charlcd** %1, align 8
  %3 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %4 = icmp ne %struct.charlcd* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %430

6:                                                ; preds = %0
  %7 = load i64, i64* @lcd_height, align 8
  %8 = trunc i64 %7 to i32
  %9 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %10 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i64, i64* @lcd_width, align 8
  %12 = trunc i64 %11 to i32
  %13 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %14 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i64, i64* @lcd_bwidth, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %18 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* @lcd_hwidth, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %22 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @selected_lcd_type, align 4
  switch i32 %23, label %78 [
    i32 128, label %24
    i32 130, label %40
    i32 129, label %56
    i32 132, label %73
    i32 131, label %77
  ]

24:                                               ; preds = %6
  %25 = load i64, i64* @LCD_PROTO_PARALLEL, align 8
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 0), align 8
  %26 = load i8*, i8** @LCD_CHARSET_NORMAL, align 8
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 1), align 8
  %28 = load i8*, i8** @PIN_STROBE, align 8
  %29 = ptrtoint i8* %28 to i64
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 0), align 8
  %30 = load i8*, i8** @PIN_AUTOLF, align 8
  %31 = ptrtoint i8* %30 to i64
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 1), align 8
  %32 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %33 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %32, i32 0, i32 1
  store i32 40, i32* %33, align 4
  %34 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %35 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %34, i32 0, i32 2
  store i32 40, i32* %35, align 8
  %36 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %37 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %36, i32 0, i32 3
  store i32 64, i32* %37, align 4
  %38 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %39 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %38, i32 0, i32 0
  store i32 2, i32* %39, align 8
  br label %94

40:                                               ; preds = %6
  %41 = load i64, i64* @LCD_PROTO_SERIAL, align 8
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 0), align 8
  %42 = load i64, i64* @LCD_CHARSET_KS0074, align 8
  store i64 %42, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 1), align 8
  %43 = load i8*, i8** @PIN_AUTOLF, align 8
  %44 = ptrtoint i8* %43 to i64
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 2), align 8
  %45 = load i8*, i8** @PIN_STROBE, align 8
  %46 = ptrtoint i8* %45 to i64
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 3), align 8
  %47 = load i64, i64* @PIN_D0, align 8
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 4), align 8
  %48 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %49 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %48, i32 0, i32 1
  store i32 16, i32* %49, align 4
  %50 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %51 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %50, i32 0, i32 2
  store i32 40, i32* %51, align 8
  %52 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %53 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %52, i32 0, i32 3
  store i32 16, i32* %53, align 4
  %54 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %55 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %54, i32 0, i32 0
  store i32 2, i32* %55, align 8
  br label %94

56:                                               ; preds = %6
  %57 = load i64, i64* @LCD_PROTO_PARALLEL, align 8
  store i64 %57, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 0), align 8
  %58 = load i8*, i8** @LCD_CHARSET_NORMAL, align 8
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 1), align 8
  %60 = load i8*, i8** @PIN_AUTOLF, align 8
  %61 = ptrtoint i8* %60 to i64
  store i64 %61, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 0), align 8
  %62 = load i8*, i8** @PIN_SELECP, align 8
  %63 = ptrtoint i8* %62 to i64
  store i64 %63, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 1), align 8
  %64 = load i64, i64* @PIN_INITP, align 8
  store i64 %64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 5), align 8
  %65 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %66 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %65, i32 0, i32 1
  store i32 16, i32* %66, align 4
  %67 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %68 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %67, i32 0, i32 2
  store i32 40, i32* %68, align 8
  %69 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %70 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %69, i32 0, i32 3
  store i32 64, i32* %70, align 4
  %71 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %72 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %71, i32 0, i32 0
  store i32 2, i32* %72, align 8
  br label %94

73:                                               ; preds = %6
  %74 = load i64, i64* @DEFAULT_LCD_PROTO, align 8
  store i64 %74, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 0), align 8
  %75 = load i8*, i8** @DEFAULT_LCD_CHARSET, align 8
  %76 = ptrtoint i8* %75 to i64
  store i64 %76, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 1), align 8
  br label %94

77:                                               ; preds = %6
  br label %78

78:                                               ; preds = %6, %77
  %79 = load i64, i64* @LCD_PROTO_PARALLEL, align 8
  store i64 %79, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 0), align 8
  %80 = load i8*, i8** @LCD_CHARSET_NORMAL, align 8
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 1), align 8
  %82 = load i8*, i8** @PIN_STROBE, align 8
  %83 = ptrtoint i8* %82 to i64
  store i64 %83, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 0), align 8
  %84 = load i8*, i8** @PIN_SELECP, align 8
  %85 = ptrtoint i8* %84 to i64
  store i64 %85, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 1), align 8
  %86 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %87 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %86, i32 0, i32 1
  store i32 16, i32* %87, align 4
  %88 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %89 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %88, i32 0, i32 2
  store i32 40, i32* %89, align 8
  %90 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %91 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %90, i32 0, i32 3
  store i32 64, i32* %91, align 4
  %92 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %93 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %92, i32 0, i32 0
  store i32 2, i32* %93, align 8
  br label %94

94:                                               ; preds = %78, %73, %56, %40, %24
  %95 = load i64, i64* @lcd_height, align 8
  %96 = load i64, i64* @NOT_SET, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i64, i64* @lcd_height, align 8
  %100 = trunc i64 %99 to i32
  %101 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %102 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %98, %94
  %104 = load i64, i64* @lcd_width, align 8
  %105 = load i64, i64* @NOT_SET, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i64, i64* @lcd_width, align 8
  %109 = trunc i64 %108 to i32
  %110 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %111 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %107, %103
  %113 = load i64, i64* @lcd_bwidth, align 8
  %114 = load i64, i64* @NOT_SET, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i64, i64* @lcd_bwidth, align 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %120 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %116, %112
  %122 = load i64, i64* @lcd_hwidth, align 8
  %123 = load i64, i64* @NOT_SET, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i64, i64* @lcd_hwidth, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %129 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %121
  %131 = load i64, i64* @lcd_charset, align 8
  %132 = load i64, i64* @NOT_SET, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i64, i64* @lcd_charset, align 8
  store i64 %135, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 1), align 8
  br label %136

136:                                              ; preds = %134, %130
  %137 = load i64, i64* @lcd_proto, align 8
  %138 = load i64, i64* @NOT_SET, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i64, i64* @lcd_proto, align 8
  store i64 %141, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 0), align 8
  br label %142

142:                                              ; preds = %140, %136
  %143 = load i64, i64* @lcd_e_pin, align 8
  %144 = load i64, i64* @PIN_NOT_SET, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i64, i64* @lcd_e_pin, align 8
  store i64 %147, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 0), align 8
  br label %148

148:                                              ; preds = %146, %142
  %149 = load i64, i64* @lcd_rs_pin, align 8
  %150 = load i64, i64* @PIN_NOT_SET, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i64, i64* @lcd_rs_pin, align 8
  store i64 %153, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 1), align 8
  br label %154

154:                                              ; preds = %152, %148
  %155 = load i64, i64* @lcd_rw_pin, align 8
  %156 = load i64, i64* @PIN_NOT_SET, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i64, i64* @lcd_rw_pin, align 8
  store i64 %159, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 5), align 8
  br label %160

160:                                              ; preds = %158, %154
  %161 = load i64, i64* @lcd_cl_pin, align 8
  %162 = load i64, i64* @PIN_NOT_SET, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i64, i64* @lcd_cl_pin, align 8
  store i64 %165, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 3), align 8
  br label %166

166:                                              ; preds = %164, %160
  %167 = load i64, i64* @lcd_da_pin, align 8
  %168 = load i64, i64* @PIN_NOT_SET, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i64, i64* @lcd_da_pin, align 8
  store i64 %171, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 4), align 8
  br label %172

172:                                              ; preds = %170, %166
  %173 = load i64, i64* @lcd_bl_pin, align 8
  %174 = load i64, i64* @PIN_NOT_SET, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i64, i64* @lcd_bl_pin, align 8
  store i64 %177, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 2), align 8
  br label %178

178:                                              ; preds = %176, %172
  %179 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %180 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp sle i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load i64, i64* @DEFAULT_LCD_WIDTH, align 8
  %185 = trunc i64 %184 to i32
  %186 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %187 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %183, %178
  %189 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %190 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp sle i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load i64, i64* @DEFAULT_LCD_BWIDTH, align 8
  %195 = trunc i64 %194 to i32
  %196 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %197 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %193, %188
  %199 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %200 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = icmp sle i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load i64, i64* @DEFAULT_LCD_HWIDTH, align 8
  %205 = trunc i64 %204 to i32
  %206 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %207 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  br label %208

208:                                              ; preds = %203, %198
  %209 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %210 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp sle i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load i64, i64* @DEFAULT_LCD_HEIGHT, align 8
  %215 = trunc i64 %214 to i32
  %216 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %217 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %213, %208
  %219 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 0), align 8
  %220 = load i64, i64* @LCD_PROTO_SERIAL, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %237

222:                                              ; preds = %218
  %223 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %224 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %223, i32 0, i32 5
  store i32* @charlcd_serial_ops, i32** %224, align 8
  %225 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 3), align 8
  %226 = load i64, i64* @PIN_NOT_SET, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = load i64, i64* @DEFAULT_LCD_PIN_SCL, align 8
  store i64 %229, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 3), align 8
  br label %230

230:                                              ; preds = %228, %222
  %231 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 4), align 8
  %232 = load i64, i64* @PIN_NOT_SET, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i64, i64* @DEFAULT_LCD_PIN_SDA, align 8
  store i64 %235, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 4), align 8
  br label %236

236:                                              ; preds = %234, %230
  br label %266

237:                                              ; preds = %218
  %238 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 0), align 8
  %239 = load i64, i64* @LCD_PROTO_PARALLEL, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %262

241:                                              ; preds = %237
  %242 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %243 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %242, i32 0, i32 5
  store i32* @charlcd_parallel_ops, i32** %243, align 8
  %244 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 0), align 8
  %245 = load i64, i64* @PIN_NOT_SET, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %241
  %248 = load i64, i64* @DEFAULT_LCD_PIN_E, align 8
  store i64 %248, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 0), align 8
  br label %249

249:                                              ; preds = %247, %241
  %250 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 1), align 8
  %251 = load i64, i64* @PIN_NOT_SET, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %249
  %254 = load i64, i64* @DEFAULT_LCD_PIN_RS, align 8
  store i64 %254, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 1), align 8
  br label %255

255:                                              ; preds = %253, %249
  %256 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 5), align 8
  %257 = load i64, i64* @PIN_NOT_SET, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = load i64, i64* @DEFAULT_LCD_PIN_RW, align 8
  store i64 %260, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 5), align 8
  br label %261

261:                                              ; preds = %259, %255
  br label %265

262:                                              ; preds = %237
  %263 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %264 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %263, i32 0, i32 5
  store i32* @charlcd_tilcd_ops, i32** %264, align 8
  br label %265

265:                                              ; preds = %262, %261
  br label %266

266:                                              ; preds = %265, %236
  %267 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 2), align 8
  %268 = load i64, i64* @PIN_NOT_SET, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %266
  %271 = load i64, i64* @DEFAULT_LCD_PIN_BL, align 8
  store i64 %271, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 2), align 8
  br label %272

272:                                              ; preds = %270, %266
  %273 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 0), align 8
  %274 = load i64, i64* @PIN_NOT_SET, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = load i8*, i8** @PIN_NONE, align 8
  %278 = ptrtoint i8* %277 to i64
  store i64 %278, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 0), align 8
  br label %279

279:                                              ; preds = %276, %272
  %280 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 1), align 8
  %281 = load i64, i64* @PIN_NOT_SET, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load i8*, i8** @PIN_NONE, align 8
  %285 = ptrtoint i8* %284 to i64
  store i64 %285, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 1), align 8
  br label %286

286:                                              ; preds = %283, %279
  %287 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 5), align 8
  %288 = load i64, i64* @PIN_NOT_SET, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %286
  %291 = load i8*, i8** @PIN_NONE, align 8
  %292 = ptrtoint i8* %291 to i64
  store i64 %292, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 5), align 8
  br label %293

293:                                              ; preds = %290, %286
  %294 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 2), align 8
  %295 = load i64, i64* @PIN_NOT_SET, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  %298 = load i8*, i8** @PIN_NONE, align 8
  %299 = ptrtoint i8* %298 to i64
  store i64 %299, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 2), align 8
  br label %300

300:                                              ; preds = %297, %293
  %301 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 3), align 8
  %302 = load i64, i64* @PIN_NOT_SET, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %307

304:                                              ; preds = %300
  %305 = load i8*, i8** @PIN_NONE, align 8
  %306 = ptrtoint i8* %305 to i64
  store i64 %306, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 3), align 8
  br label %307

307:                                              ; preds = %304, %300
  %308 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 4), align 8
  %309 = load i64, i64* @PIN_NOT_SET, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = load i8*, i8** @PIN_NONE, align 8
  %313 = ptrtoint i8* %312 to i64
  store i64 %313, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 4), align 8
  br label %314

314:                                              ; preds = %311, %307
  %315 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 1), align 8
  %316 = load i64, i64* @NOT_SET, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = load i8*, i8** @DEFAULT_LCD_CHARSET, align 8
  %320 = ptrtoint i8* %319 to i64
  store i64 %320, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 1), align 8
  br label %321

321:                                              ; preds = %318, %314
  %322 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 1), align 8
  %323 = load i64, i64* @LCD_CHARSET_KS0074, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %321
  %326 = load i32*, i32** @lcd_char_conv_ks0074, align 8
  %327 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %328 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %327, i32 0, i32 4
  store i32* %326, i32** %328, align 8
  br label %332

329:                                              ; preds = %321
  %330 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  %331 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %330, i32 0, i32 4
  store i32* null, i32** %331, align 8
  br label %332

332:                                              ; preds = %329, %325
  %333 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 0), align 8
  %334 = load i32**, i32*** @lcd_bits, align 8
  %335 = load i64, i64* @LCD_PORT_D, align 8
  %336 = getelementptr inbounds i32*, i32** %334, i64 %335
  %337 = load i32*, i32** %336, align 8
  %338 = load i64, i64* @LCD_BIT_E, align 8
  %339 = getelementptr inbounds i32, i32* %337, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load i32**, i32*** @lcd_bits, align 8
  %342 = load i64, i64* @LCD_PORT_C, align 8
  %343 = getelementptr inbounds i32*, i32** %341, i64 %342
  %344 = load i32*, i32** %343, align 8
  %345 = load i64, i64* @LCD_BIT_E, align 8
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @pin_to_bits(i64 %333, i32 %340, i32 %347)
  %349 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 1), align 8
  %350 = load i32**, i32*** @lcd_bits, align 8
  %351 = load i64, i64* @LCD_PORT_D, align 8
  %352 = getelementptr inbounds i32*, i32** %350, i64 %351
  %353 = load i32*, i32** %352, align 8
  %354 = load i64, i64* @LCD_BIT_RS, align 8
  %355 = getelementptr inbounds i32, i32* %353, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32**, i32*** @lcd_bits, align 8
  %358 = load i64, i64* @LCD_PORT_C, align 8
  %359 = getelementptr inbounds i32*, i32** %357, i64 %358
  %360 = load i32*, i32** %359, align 8
  %361 = load i64, i64* @LCD_BIT_RS, align 8
  %362 = getelementptr inbounds i32, i32* %360, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @pin_to_bits(i64 %349, i32 %356, i32 %363)
  %365 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 5), align 8
  %366 = load i32**, i32*** @lcd_bits, align 8
  %367 = load i64, i64* @LCD_PORT_D, align 8
  %368 = getelementptr inbounds i32*, i32** %366, i64 %367
  %369 = load i32*, i32** %368, align 8
  %370 = load i64, i64* @LCD_BIT_RW, align 8
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = load i32**, i32*** @lcd_bits, align 8
  %374 = load i64, i64* @LCD_PORT_C, align 8
  %375 = getelementptr inbounds i32*, i32** %373, i64 %374
  %376 = load i32*, i32** %375, align 8
  %377 = load i64, i64* @LCD_BIT_RW, align 8
  %378 = getelementptr inbounds i32, i32* %376, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @pin_to_bits(i64 %365, i32 %372, i32 %379)
  %381 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 2), align 8
  %382 = load i32**, i32*** @lcd_bits, align 8
  %383 = load i64, i64* @LCD_PORT_D, align 8
  %384 = getelementptr inbounds i32*, i32** %382, i64 %383
  %385 = load i32*, i32** %384, align 8
  %386 = load i64, i64* @LCD_BIT_BL, align 8
  %387 = getelementptr inbounds i32, i32* %385, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = load i32**, i32*** @lcd_bits, align 8
  %390 = load i64, i64* @LCD_PORT_C, align 8
  %391 = getelementptr inbounds i32*, i32** %389, i64 %390
  %392 = load i32*, i32** %391, align 8
  %393 = load i64, i64* @LCD_BIT_BL, align 8
  %394 = getelementptr inbounds i32, i32* %392, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @pin_to_bits(i64 %381, i32 %388, i32 %395)
  %397 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 3), align 8
  %398 = load i32**, i32*** @lcd_bits, align 8
  %399 = load i64, i64* @LCD_PORT_D, align 8
  %400 = getelementptr inbounds i32*, i32** %398, i64 %399
  %401 = load i32*, i32** %400, align 8
  %402 = load i64, i64* @LCD_BIT_CL, align 8
  %403 = getelementptr inbounds i32, i32* %401, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = load i32**, i32*** @lcd_bits, align 8
  %406 = load i64, i64* @LCD_PORT_C, align 8
  %407 = getelementptr inbounds i32*, i32** %405, i64 %406
  %408 = load i32*, i32** %407, align 8
  %409 = load i64, i64* @LCD_BIT_CL, align 8
  %410 = getelementptr inbounds i32, i32* %408, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @pin_to_bits(i64 %397, i32 %404, i32 %411)
  %413 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 4, i32 4), align 8
  %414 = load i32**, i32*** @lcd_bits, align 8
  %415 = load i64, i64* @LCD_PORT_D, align 8
  %416 = getelementptr inbounds i32*, i32** %414, i64 %415
  %417 = load i32*, i32** %416, align 8
  %418 = load i64, i64* @LCD_BIT_DA, align 8
  %419 = getelementptr inbounds i32, i32* %417, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = load i32**, i32*** @lcd_bits, align 8
  %422 = load i64, i64* @LCD_PORT_C, align 8
  %423 = getelementptr inbounds i32*, i32** %421, i64 %422
  %424 = load i32*, i32** %423, align 8
  %425 = load i64, i64* @LCD_BIT_DA, align 8
  %426 = getelementptr inbounds i32, i32* %424, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @pin_to_bits(i64 %413, i32 %420, i32 %427)
  %429 = load %struct.charlcd*, %struct.charlcd** %1, align 8
  store %struct.charlcd* %429, %struct.charlcd** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lcd, i32 0, i32 2), align 8
  br label %430

430:                                              ; preds = %332, %5
  ret void
}

declare dso_local %struct.charlcd* @charlcd_alloc(i32) #1

declare dso_local i32 @pin_to_bits(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

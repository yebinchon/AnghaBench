; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-kfr2r09/extr_lcd_wqvga.c_display_on.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-kfr2r09/extr_lcd_wqvga.c_display_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_sys_bus_ops = type { i32 }

@data_frame_if = common dso_local global i32 0, align 4
@data_panel = common dso_local global i32 0, align 4
@data_timing = common dso_local global i32 0, align 4
@data_timing_src = common dso_local global i32 0, align 4
@data_gamma = common dso_local global i32 0, align 4
@data_power = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sh_mobile_lcdc_sys_bus_ops*)* @display_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_on(i8* %0, %struct.sh_mobile_lcdc_sys_bus_ops* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sh_mobile_lcdc_sys_bus_ops*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sh_mobile_lcdc_sys_bus_ops* %1, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %7 = call i32 @write_reg(i8* %5, %struct.sh_mobile_lcdc_sys_bus_ops* %6, i32 0, i32 176)
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %10 = call i32 @write_reg(i8* %8, %struct.sh_mobile_lcdc_sys_bus_ops* %9, i32 1, i32 0)
  %11 = load i8*, i8** %3, align 8
  %12 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %13 = call i32 @write_reg(i8* %11, %struct.sh_mobile_lcdc_sys_bus_ops* %12, i32 0, i32 177)
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %16 = call i32 @write_reg(i8* %14, %struct.sh_mobile_lcdc_sys_bus_ops* %15, i32 1, i32 0)
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %19 = call i32 @write_reg(i8* %17, %struct.sh_mobile_lcdc_sys_bus_ops* %18, i32 0, i32 179)
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %22 = load i32, i32* @data_frame_if, align 4
  %23 = load i32, i32* @data_frame_if, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @write_data(i8* %20, %struct.sh_mobile_lcdc_sys_bus_ops* %21, i32 %22, i32 %24)
  %26 = load i8*, i8** %3, align 8
  %27 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %28 = call i32 @write_reg(i8* %26, %struct.sh_mobile_lcdc_sys_bus_ops* %27, i32 0, i32 180)
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %31 = call i32 @write_reg(i8* %29, %struct.sh_mobile_lcdc_sys_bus_ops* %30, i32 1, i32 0)
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %34 = call i32 @write_reg(i8* %32, %struct.sh_mobile_lcdc_sys_bus_ops* %33, i32 0, i32 192)
  %35 = load i8*, i8** %3, align 8
  %36 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %37 = load i32, i32* @data_panel, align 4
  %38 = load i32, i32* @data_panel, align 4
  %39 = call i32 @ARRAY_SIZE(i32 %38)
  %40 = call i32 @write_data(i8* %35, %struct.sh_mobile_lcdc_sys_bus_ops* %36, i32 %37, i32 %39)
  %41 = load i8*, i8** %3, align 8
  %42 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %43 = call i32 @write_reg(i8* %41, %struct.sh_mobile_lcdc_sys_bus_ops* %42, i32 0, i32 193)
  %44 = load i8*, i8** %3, align 8
  %45 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %46 = load i32, i32* @data_timing, align 4
  %47 = load i32, i32* @data_timing, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = call i32 @write_data(i8* %44, %struct.sh_mobile_lcdc_sys_bus_ops* %45, i32 %46, i32 %48)
  %50 = load i8*, i8** %3, align 8
  %51 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %52 = call i32 @write_reg(i8* %50, %struct.sh_mobile_lcdc_sys_bus_ops* %51, i32 0, i32 194)
  %53 = load i8*, i8** %3, align 8
  %54 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %55 = load i32, i32* @data_timing, align 4
  %56 = load i32, i32* @data_timing, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = call i32 @write_data(i8* %53, %struct.sh_mobile_lcdc_sys_bus_ops* %54, i32 %55, i32 %57)
  %59 = load i8*, i8** %3, align 8
  %60 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %61 = call i32 @write_reg(i8* %59, %struct.sh_mobile_lcdc_sys_bus_ops* %60, i32 0, i32 195)
  %62 = load i8*, i8** %3, align 8
  %63 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %64 = load i32, i32* @data_timing, align 4
  %65 = load i32, i32* @data_timing, align 4
  %66 = call i32 @ARRAY_SIZE(i32 %65)
  %67 = call i32 @write_data(i8* %62, %struct.sh_mobile_lcdc_sys_bus_ops* %63, i32 %64, i32 %66)
  %68 = load i8*, i8** %3, align 8
  %69 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %70 = call i32 @write_reg(i8* %68, %struct.sh_mobile_lcdc_sys_bus_ops* %69, i32 0, i32 196)
  %71 = load i8*, i8** %3, align 8
  %72 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %73 = load i32, i32* @data_timing_src, align 4
  %74 = load i32, i32* @data_timing_src, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = call i32 @write_data(i8* %71, %struct.sh_mobile_lcdc_sys_bus_ops* %72, i32 %73, i32 %75)
  %77 = load i8*, i8** %3, align 8
  %78 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %79 = call i32 @write_reg(i8* %77, %struct.sh_mobile_lcdc_sys_bus_ops* %78, i32 0, i32 200)
  %80 = load i8*, i8** %3, align 8
  %81 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %82 = load i32, i32* @data_gamma, align 4
  %83 = load i32, i32* @data_gamma, align 4
  %84 = call i32 @ARRAY_SIZE(i32 %83)
  %85 = call i32 @write_data(i8* %80, %struct.sh_mobile_lcdc_sys_bus_ops* %81, i32 %82, i32 %84)
  %86 = load i8*, i8** %3, align 8
  %87 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %88 = call i32 @write_reg(i8* %86, %struct.sh_mobile_lcdc_sys_bus_ops* %87, i32 0, i32 201)
  %89 = load i8*, i8** %3, align 8
  %90 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %91 = load i32, i32* @data_gamma, align 4
  %92 = load i32, i32* @data_gamma, align 4
  %93 = call i32 @ARRAY_SIZE(i32 %92)
  %94 = call i32 @write_data(i8* %89, %struct.sh_mobile_lcdc_sys_bus_ops* %90, i32 %91, i32 %93)
  %95 = load i8*, i8** %3, align 8
  %96 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %97 = call i32 @write_reg(i8* %95, %struct.sh_mobile_lcdc_sys_bus_ops* %96, i32 0, i32 202)
  %98 = load i8*, i8** %3, align 8
  %99 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %100 = load i32, i32* @data_gamma, align 4
  %101 = load i32, i32* @data_gamma, align 4
  %102 = call i32 @ARRAY_SIZE(i32 %101)
  %103 = call i32 @write_data(i8* %98, %struct.sh_mobile_lcdc_sys_bus_ops* %99, i32 %100, i32 %102)
  %104 = load i8*, i8** %3, align 8
  %105 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %106 = call i32 @write_reg(i8* %104, %struct.sh_mobile_lcdc_sys_bus_ops* %105, i32 0, i32 208)
  %107 = load i8*, i8** %3, align 8
  %108 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %109 = load i32, i32* @data_power, align 4
  %110 = load i32, i32* @data_power, align 4
  %111 = call i32 @ARRAY_SIZE(i32 %110)
  %112 = call i32 @write_data(i8* %107, %struct.sh_mobile_lcdc_sys_bus_ops* %108, i32 %109, i32 %111)
  %113 = load i8*, i8** %3, align 8
  %114 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %115 = call i32 @write_reg(i8* %113, %struct.sh_mobile_lcdc_sys_bus_ops* %114, i32 0, i32 209)
  %116 = load i8*, i8** %3, align 8
  %117 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %118 = call i32 @write_reg(i8* %116, %struct.sh_mobile_lcdc_sys_bus_ops* %117, i32 1, i32 0)
  %119 = load i8*, i8** %3, align 8
  %120 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %121 = call i32 @write_reg(i8* %119, %struct.sh_mobile_lcdc_sys_bus_ops* %120, i32 1, i32 15)
  %122 = load i8*, i8** %3, align 8
  %123 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %124 = call i32 @write_reg(i8* %122, %struct.sh_mobile_lcdc_sys_bus_ops* %123, i32 1, i32 2)
  %125 = load i8*, i8** %3, align 8
  %126 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %127 = call i32 @write_reg(i8* %125, %struct.sh_mobile_lcdc_sys_bus_ops* %126, i32 0, i32 210)
  %128 = load i8*, i8** %3, align 8
  %129 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %130 = call i32 @write_reg(i8* %128, %struct.sh_mobile_lcdc_sys_bus_ops* %129, i32 1, i32 99)
  %131 = load i8*, i8** %3, align 8
  %132 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %133 = call i32 @write_reg(i8* %131, %struct.sh_mobile_lcdc_sys_bus_ops* %132, i32 1, i32 36)
  %134 = load i8*, i8** %3, align 8
  %135 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %136 = call i32 @write_reg(i8* %134, %struct.sh_mobile_lcdc_sys_bus_ops* %135, i32 0, i32 211)
  %137 = load i8*, i8** %3, align 8
  %138 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %139 = call i32 @write_reg(i8* %137, %struct.sh_mobile_lcdc_sys_bus_ops* %138, i32 1, i32 99)
  %140 = load i8*, i8** %3, align 8
  %141 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %142 = call i32 @write_reg(i8* %140, %struct.sh_mobile_lcdc_sys_bus_ops* %141, i32 1, i32 36)
  %143 = load i8*, i8** %3, align 8
  %144 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %145 = call i32 @write_reg(i8* %143, %struct.sh_mobile_lcdc_sys_bus_ops* %144, i32 0, i32 212)
  %146 = load i8*, i8** %3, align 8
  %147 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %148 = call i32 @write_reg(i8* %146, %struct.sh_mobile_lcdc_sys_bus_ops* %147, i32 1, i32 99)
  %149 = load i8*, i8** %3, align 8
  %150 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %151 = call i32 @write_reg(i8* %149, %struct.sh_mobile_lcdc_sys_bus_ops* %150, i32 1, i32 36)
  %152 = load i8*, i8** %3, align 8
  %153 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %154 = call i32 @write_reg(i8* %152, %struct.sh_mobile_lcdc_sys_bus_ops* %153, i32 0, i32 216)
  %155 = load i8*, i8** %3, align 8
  %156 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %157 = call i32 @write_reg(i8* %155, %struct.sh_mobile_lcdc_sys_bus_ops* %156, i32 1, i32 119)
  %158 = load i8*, i8** %3, align 8
  %159 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %160 = call i32 @write_reg(i8* %158, %struct.sh_mobile_lcdc_sys_bus_ops* %159, i32 1, i32 119)
  %161 = load i8*, i8** %3, align 8
  %162 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %163 = call i32 @write_reg(i8* %161, %struct.sh_mobile_lcdc_sys_bus_ops* %162, i32 0, i32 53)
  %164 = load i8*, i8** %3, align 8
  %165 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %166 = call i32 @write_reg(i8* %164, %struct.sh_mobile_lcdc_sys_bus_ops* %165, i32 1, i32 0)
  %167 = load i8*, i8** %3, align 8
  %168 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %169 = call i32 @write_reg(i8* %167, %struct.sh_mobile_lcdc_sys_bus_ops* %168, i32 0, i32 68)
  %170 = load i8*, i8** %3, align 8
  %171 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %172 = call i32 @write_reg(i8* %170, %struct.sh_mobile_lcdc_sys_bus_ops* %171, i32 1, i32 0)
  %173 = load i8*, i8** %3, align 8
  %174 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %175 = call i32 @write_reg(i8* %173, %struct.sh_mobile_lcdc_sys_bus_ops* %174, i32 1, i32 0)
  %176 = load i8*, i8** %3, align 8
  %177 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %178 = call i32 @write_reg(i8* %176, %struct.sh_mobile_lcdc_sys_bus_ops* %177, i32 0, i32 42)
  %179 = load i8*, i8** %3, align 8
  %180 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %181 = call i32 @write_reg(i8* %179, %struct.sh_mobile_lcdc_sys_bus_ops* %180, i32 1, i32 0)
  %182 = load i8*, i8** %3, align 8
  %183 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %184 = call i32 @write_reg(i8* %182, %struct.sh_mobile_lcdc_sys_bus_ops* %183, i32 1, i32 0)
  %185 = load i8*, i8** %3, align 8
  %186 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %187 = call i32 @write_reg(i8* %185, %struct.sh_mobile_lcdc_sys_bus_ops* %186, i32 1, i32 0)
  %188 = load i8*, i8** %3, align 8
  %189 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %190 = call i32 @write_reg(i8* %188, %struct.sh_mobile_lcdc_sys_bus_ops* %189, i32 1, i32 239)
  %191 = load i8*, i8** %3, align 8
  %192 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %193 = call i32 @write_reg(i8* %191, %struct.sh_mobile_lcdc_sys_bus_ops* %192, i32 0, i32 43)
  %194 = load i8*, i8** %3, align 8
  %195 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %196 = call i32 @write_reg(i8* %194, %struct.sh_mobile_lcdc_sys_bus_ops* %195, i32 1, i32 0)
  %197 = load i8*, i8** %3, align 8
  %198 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %199 = call i32 @write_reg(i8* %197, %struct.sh_mobile_lcdc_sys_bus_ops* %198, i32 1, i32 0)
  %200 = load i8*, i8** %3, align 8
  %201 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %202 = call i32 @write_reg(i8* %200, %struct.sh_mobile_lcdc_sys_bus_ops* %201, i32 1, i32 1)
  %203 = load i8*, i8** %3, align 8
  %204 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %205 = call i32 @write_reg(i8* %203, %struct.sh_mobile_lcdc_sys_bus_ops* %204, i32 1, i32 143)
  %206 = load i8*, i8** %3, align 8
  %207 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %208 = call i32 @write_reg(i8* %206, %struct.sh_mobile_lcdc_sys_bus_ops* %207, i32 0, i32 17)
  %209 = call i32 @mdelay(i32 120)
  %210 = load i8*, i8** %3, align 8
  %211 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %212 = call i32 @clear_memory(i8* %210, %struct.sh_mobile_lcdc_sys_bus_ops* %211)
  %213 = load i8*, i8** %3, align 8
  %214 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %215 = call i32 @write_reg(i8* %213, %struct.sh_mobile_lcdc_sys_bus_ops* %214, i32 0, i32 41)
  %216 = call i32 @mdelay(i32 1)
  %217 = load i8*, i8** %3, align 8
  %218 = load %struct.sh_mobile_lcdc_sys_bus_ops*, %struct.sh_mobile_lcdc_sys_bus_ops** %4, align 8
  %219 = call i32 @write_memory_start(i8* %217, %struct.sh_mobile_lcdc_sys_bus_ops* %218)
  ret void
}

declare dso_local i32 @write_reg(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*, i32, i32) #1

declare dso_local i32 @write_data(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @clear_memory(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*) #1

declare dso_local i32 @write_memory_start(i8*, %struct.sh_mobile_lcdc_sys_bus_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

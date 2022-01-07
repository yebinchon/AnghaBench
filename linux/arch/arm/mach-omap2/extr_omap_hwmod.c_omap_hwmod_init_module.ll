; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c_omap_hwmod_init_module.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c_omap_hwmod_init_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ti_sysc_module_data = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.ti_sysc_cookie = type { i32, %struct.omap_hwmod* }
%struct.omap_hwmod = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sysc_regbits = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_HWMOD_STATE_UNKNOWN = common dso_local global i32 0, align 4
@HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@SYSC_QUIRK_NO_IDLE = common dso_local global i32 0, align 4
@HWMOD_NO_IDLE = common dso_local global i32 0, align 4
@SYSC_QUIRK_NO_IDLE_ON_INIT = common dso_local global i32 0, align 4
@HWMOD_INIT_NO_IDLE = common dso_local global i32 0, align 4
@SYSC_QUIRK_NO_RESET_ON_INIT = common dso_local global i32 0, align 4
@HWMOD_INIT_NO_RESET = common dso_local global i32 0, align 4
@SYSC_QUIRK_USE_CLOCKACT = common dso_local global i32 0, align 4
@HWMOD_SET_DEFAULT_CLOCKACT = common dso_local global i32 0, align 4
@SYSC_QUIRK_SWSUP_SIDLE = common dso_local global i32 0, align 4
@HWMOD_SWSUP_SIDLE = common dso_local global i32 0, align 4
@SYSC_QUIRK_SWSUP_SIDLE_ACT = common dso_local global i32 0, align 4
@HWMOD_SWSUP_SIDLE_ACT = common dso_local global i32 0, align 4
@SYSC_QUIRK_SWSUP_MSTANDBY = common dso_local global i32 0, align 4
@HWMOD_SWSUP_MSTANDBY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_hwmod_init_module(%struct.device* %0, %struct.ti_sysc_module_data* %1, %struct.ti_sysc_cookie* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ti_sysc_module_data*, align 8
  %7 = alloca %struct.ti_sysc_cookie*, align 8
  %8 = alloca %struct.omap_hwmod*, align 8
  %9 = alloca %struct.sysc_regbits*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.ti_sysc_module_data* %1, %struct.ti_sysc_module_data** %6, align 8
  store %struct.ti_sysc_cookie* %2, %struct.ti_sysc_cookie** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = icmp ne %struct.device* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %20 = icmp ne %struct.ti_sysc_module_data* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %23 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.ti_sysc_cookie*, %struct.ti_sysc_cookie** %7, align 8
  %28 = icmp ne %struct.ti_sysc_cookie* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %21, %18, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %264

32:                                               ; preds = %26
  %33 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %34 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.omap_hwmod* @_lookup(i64 %35)
  store %struct.omap_hwmod* %36, %struct.omap_hwmod** %8, align 8
  %37 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %38 = icmp ne %struct.omap_hwmod* %37, null
  br i1 %38, label %95, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kzalloc(i32 40, i32 %40)
  %42 = bitcast i8* %41 to %struct.omap_hwmod*
  store %struct.omap_hwmod* %42, %struct.omap_hwmod** %8, align 8
  %43 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %44 = icmp ne %struct.omap_hwmod* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %264

48:                                               ; preds = %39
  %49 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %50 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %53 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %52, i32 0, i32 5
  store i64 %51, i64* %53, align 8
  %54 = load i32, i32* @_HWMOD_STATE_UNKNOWN, align 4
  %55 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %56 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %58 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %57, i32 0, i32 3
  %59 = call i32 @lockdep_register_key(i32* %58)
  %60 = load i32, i32* @HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT, align 4
  %61 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %62 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @kzalloc(i32 8, i32 %65)
  %67 = bitcast i8* %66 to %struct.TYPE_7__*
  %68 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %69 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %68, i32 0, i32 1
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %69, align 8
  %70 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %71 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = icmp ne %struct.TYPE_7__* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %48
  %75 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %76 = call i32 @kfree(%struct.omap_hwmod* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %264

79:                                               ; preds = %48
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %82 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %83 = call i32 @omap_hwmod_init_reset_quirks(%struct.device* %80, %struct.omap_hwmod* %81, %struct.ti_sysc_module_data* %82)
  %84 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %85 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %88 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i64 %86, i64* %90, align 8
  %91 = call i32 @mutex_lock(i32* @list_lock)
  %92 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %93 = call i32 @_register(%struct.omap_hwmod* %92)
  store i32 %93, i32* %15, align 4
  %94 = call i32 @mutex_unlock(i32* @list_lock)
  br label %95

95:                                               ; preds = %79, %32
  %96 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %97 = load %struct.ti_sysc_cookie*, %struct.ti_sysc_cookie** %7, align 8
  %98 = getelementptr inbounds %struct.ti_sysc_cookie, %struct.ti_sysc_cookie* %97, i32 0, i32 1
  store %struct.omap_hwmod* %96, %struct.omap_hwmod** %98, align 8
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %101 = call i32 @omap_hwmod_init_regbits(%struct.device* %99, %struct.ti_sysc_module_data* %100, %struct.sysc_regbits** %9)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %4, align 4
  br label %264

106:                                              ; preds = %95
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %109 = call i32 @omap_hwmod_init_reg_offs(%struct.device* %107, %struct.ti_sysc_module_data* %108, i32* %10, i32* %11, i32* %12)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %15, align 4
  store i32 %113, i32* %4, align 4
  br label %264

114:                                              ; preds = %106
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %117 = call i32 @omap_hwmod_init_sysc_flags(%struct.device* %115, %struct.ti_sysc_module_data* %116, i32* %13)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %4, align 4
  br label %264

122:                                              ; preds = %114
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %125 = call i32 @omap_hwmod_init_idlemodes(%struct.device* %123, %struct.ti_sysc_module_data* %124, i32* %14)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %4, align 4
  br label %264

130:                                              ; preds = %122
  %131 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %132 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SYSC_QUIRK_NO_IDLE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %130
  %140 = load i32, i32* @HWMOD_NO_IDLE, align 4
  %141 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %142 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %139, %130
  %146 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %147 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %146, i32 0, i32 0
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @SYSC_QUIRK_NO_IDLE_ON_INIT, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %145
  %155 = load i32, i32* @HWMOD_INIT_NO_IDLE, align 4
  %156 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %157 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %154, %145
  %161 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %162 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %161, i32 0, i32 0
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @SYSC_QUIRK_NO_RESET_ON_INIT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %160
  %170 = load i32, i32* @HWMOD_INIT_NO_RESET, align 4
  %171 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %172 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %169, %160
  %176 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %177 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %176, i32 0, i32 0
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @SYSC_QUIRK_USE_CLOCKACT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %175
  %185 = load i32, i32* @HWMOD_SET_DEFAULT_CLOCKACT, align 4
  %186 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %187 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %184, %175
  %191 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %192 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %191, i32 0, i32 0
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @SYSC_QUIRK_SWSUP_SIDLE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %190
  %200 = load i32, i32* @HWMOD_SWSUP_SIDLE, align 4
  %201 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %202 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %205

205:                                              ; preds = %199, %190
  %206 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %207 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %206, i32 0, i32 0
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @SYSC_QUIRK_SWSUP_SIDLE_ACT, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %205
  %215 = load i32, i32* @HWMOD_SWSUP_SIDLE_ACT, align 4
  %216 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %217 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %214, %205
  %221 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %222 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %221, i32 0, i32 0
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @SYSC_QUIRK_SWSUP_MSTANDBY, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %220
  %230 = load i32, i32* @HWMOD_SWSUP_MSTANDBY, align 4
  %231 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %232 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  br label %235

235:                                              ; preds = %229, %220
  %236 = load %struct.device*, %struct.device** %5, align 8
  %237 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %238 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %239 = load %struct.sysc_regbits*, %struct.sysc_regbits** %9, align 8
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %14, align 4
  %245 = call i32 @omap_hwmod_check_module(%struct.device* %236, %struct.omap_hwmod* %237, %struct.ti_sysc_module_data* %238, %struct.sysc_regbits* %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244)
  store i32 %245, i32* %15, align 4
  %246 = load i32, i32* %15, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %235
  %249 = load i32, i32* %15, align 4
  store i32 %249, i32* %4, align 4
  br label %264

250:                                              ; preds = %235
  %251 = load %struct.device*, %struct.device** %5, align 8
  %252 = load %struct.omap_hwmod*, %struct.omap_hwmod** %8, align 8
  %253 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %6, align 8
  %254 = load %struct.sysc_regbits*, %struct.sysc_regbits** %9, align 8
  %255 = load %struct.ti_sysc_cookie*, %struct.ti_sysc_cookie** %7, align 8
  %256 = getelementptr inbounds %struct.ti_sysc_cookie, %struct.ti_sysc_cookie* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* %12, align 4
  %261 = load i32, i32* %13, align 4
  %262 = load i32, i32* %14, align 4
  %263 = call i32 @omap_hwmod_allocate_module(%struct.device* %251, %struct.omap_hwmod* %252, %struct.ti_sysc_module_data* %253, %struct.sysc_regbits* %254, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 %262)
  store i32 %263, i32* %4, align 4
  br label %264

264:                                              ; preds = %250, %248, %128, %120, %112, %104, %74, %45, %29
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local %struct.omap_hwmod* @_lookup(i64) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @lockdep_register_key(i32*) #1

declare dso_local i32 @kfree(%struct.omap_hwmod*) #1

declare dso_local i32 @omap_hwmod_init_reset_quirks(%struct.device*, %struct.omap_hwmod*, %struct.ti_sysc_module_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_register(%struct.omap_hwmod*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @omap_hwmod_init_regbits(%struct.device*, %struct.ti_sysc_module_data*, %struct.sysc_regbits**) #1

declare dso_local i32 @omap_hwmod_init_reg_offs(%struct.device*, %struct.ti_sysc_module_data*, i32*, i32*, i32*) #1

declare dso_local i32 @omap_hwmod_init_sysc_flags(%struct.device*, %struct.ti_sysc_module_data*, i32*) #1

declare dso_local i32 @omap_hwmod_init_idlemodes(%struct.device*, %struct.ti_sysc_module_data*, i32*) #1

declare dso_local i32 @omap_hwmod_check_module(%struct.device*, %struct.omap_hwmod*, %struct.ti_sysc_module_data*, %struct.sysc_regbits*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @omap_hwmod_allocate_module(%struct.device*, %struct.omap_hwmod*, %struct.ti_sysc_module_data*, %struct.sysc_regbits*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

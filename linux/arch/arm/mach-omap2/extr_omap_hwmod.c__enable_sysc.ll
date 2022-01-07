; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__enable_sysc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__enable_sysc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.clockdomain = type { i32 }

@HWMOD_CONTROL_OPT_CLKS_IN_RESET = common dso_local global i32 0, align 4
@SYSC_HAS_SIDLEMODE = common dso_local global i32 0, align 4
@HWMOD_SWSUP_SIDLE = common dso_local global i32 0, align 4
@HWMOD_SWSUP_SIDLE_ACT = common dso_local global i32 0, align 4
@HWMOD_IDLEMODE_NO = common dso_local global i32 0, align 4
@SYSC_HAS_ENAWAKEUP = common dso_local global i32 0, align 4
@SIDLE_SMART_WKUP = common dso_local global i32 0, align 4
@HWMOD_IDLEMODE_SMART_WKUP = common dso_local global i32 0, align 4
@HWMOD_IDLEMODE_SMART = common dso_local global i32 0, align 4
@CLKDM_ACTIVE_WITH_MPU = common dso_local global i32 0, align 4
@SIDLE_SMART = common dso_local global i32 0, align 4
@HWMOD_IDLEMODE_FORCE = common dso_local global i32 0, align 4
@SYSC_HAS_MIDLEMODE = common dso_local global i32 0, align 4
@HWMOD_FORCE_MSTANDBY = common dso_local global i32 0, align 4
@HWMOD_SWSUP_MSTANDBY = common dso_local global i32 0, align 4
@MSTANDBY_SMART_WKUP = common dso_local global i32 0, align 4
@HWMOD_SET_DEFAULT_CLOCKACT = common dso_local global i32 0, align 4
@SYSC_HAS_CLOCKACTIVITY = common dso_local global i32 0, align 4
@CLOCKACT_TEST_ICLK = common dso_local global i32 0, align 4
@SYSC_HAS_AUTOIDLE = common dso_local global i32 0, align 4
@HWMOD_NO_OCP_AUTOIDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hwmod*)* @_enable_sysc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_enable_sysc(%struct.omap_hwmod* %0) #0 {
  %2 = alloca %struct.omap_hwmod*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clockdomain*, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %2, align 8
  %8 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %9 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %219

15:                                               ; preds = %1
  %16 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %17 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @HWMOD_CONTROL_OPT_CLKS_IN_RESET, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %24 = call i32 @_enable_optional_clocks(%struct.omap_hwmod* %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %27 = call i32 @_wait_softreset_complete(%struct.omap_hwmod* %26)
  %28 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %29 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @HWMOD_CONTROL_OPT_CLKS_IN_RESET, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %36 = call i32 @_disable_optional_clocks(%struct.omap_hwmod* %35)
  br label %37

37:                                               ; preds = %34, %25
  %38 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %39 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %5, align 4
  %41 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %42 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  %48 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %49 = call %struct.clockdomain* @_get_clkdm(%struct.omap_hwmod* %48)
  store %struct.clockdomain* %49, %struct.clockdomain** %7, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @SYSC_HAS_SIDLEMODE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %128

54:                                               ; preds = %37
  %55 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %56 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @HWMOD_SWSUP_SIDLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %54
  %62 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %63 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @HWMOD_SWSUP_SIDLE_ACT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61, %54
  %69 = load i32, i32* @HWMOD_IDLEMODE_NO, align 4
  store i32 %69, i32* %3, align 4
  br label %94

70:                                               ; preds = %61
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @SYSC_HAS_ENAWAKEUP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %77 = call i32 @_enable_wakeup(%struct.omap_hwmod* %76, i32* %5)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %80 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SIDLE_SMART_WKUP, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = load i32, i32* @HWMOD_IDLEMODE_SMART_WKUP, align 4
  store i32 %90, i32* %3, align 4
  br label %93

91:                                               ; preds = %78
  %92 = load i32, i32* @HWMOD_IDLEMODE_SMART, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %89
  br label %94

94:                                               ; preds = %93, %68
  %95 = load %struct.clockdomain*, %struct.clockdomain** %7, align 8
  %96 = icmp ne %struct.clockdomain* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.clockdomain*, %struct.clockdomain** %7, align 8
  %99 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CLKDM_ACTIVE_WITH_MPU, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br label %104

104:                                              ; preds = %97, %94
  %105 = phi i1 [ false, %94 ], [ %103, %97 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %104
  %110 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %111 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @SIDLE_SMART, align 4
  %118 = load i32, i32* @SIDLE_SMART_WKUP, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %109
  %123 = load i32, i32* @HWMOD_IDLEMODE_FORCE, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %109, %104
  %125 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @_set_slave_idlemode(%struct.omap_hwmod* %125, i32 %126, i32* %5)
  br label %128

128:                                              ; preds = %124, %37
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @SYSC_HAS_MIDLEMODE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %180

133:                                              ; preds = %128
  %134 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %135 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @HWMOD_FORCE_MSTANDBY, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @HWMOD_IDLEMODE_FORCE, align 4
  store i32 %141, i32* %3, align 4
  br label %176

142:                                              ; preds = %133
  %143 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %144 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @HWMOD_SWSUP_MSTANDBY, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @HWMOD_IDLEMODE_NO, align 4
  store i32 %150, i32* %3, align 4
  br label %175

151:                                              ; preds = %142
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @SYSC_HAS_ENAWAKEUP, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %158 = call i32 @_enable_wakeup(%struct.omap_hwmod* %157, i32* %5)
  br label %159

159:                                              ; preds = %156, %151
  %160 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %161 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %160, i32 0, i32 1
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @MSTANDBY_SMART_WKUP, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %159
  %171 = load i32, i32* @HWMOD_IDLEMODE_SMART_WKUP, align 4
  store i32 %171, i32* %3, align 4
  br label %174

172:                                              ; preds = %159
  %173 = load i32, i32* @HWMOD_IDLEMODE_SMART, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %172, %170
  br label %175

175:                                              ; preds = %174, %149
  br label %176

176:                                              ; preds = %175, %140
  %177 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %178 = load i32, i32* %3, align 4
  %179 = call i32 @_set_master_standbymode(%struct.omap_hwmod* %177, i32 %178, i32* %5)
  br label %180

180:                                              ; preds = %176, %128
  %181 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %182 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @HWMOD_SET_DEFAULT_CLOCKACT, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %180
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @SYSC_HAS_CLOCKACTIVITY, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %194 = load i32, i32* @CLOCKACT_TEST_ICLK, align 4
  %195 = call i32 @_set_clockactivity(%struct.omap_hwmod* %193, i32 %194, i32* %5)
  br label %196

196:                                              ; preds = %192, %187, %180
  %197 = load i32, i32* %5, align 4
  %198 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %199 = call i32 @_write_sysconfig(i32 %197, %struct.omap_hwmod* %198)
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @SYSC_HAS_AUTOIDLE, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %219

204:                                              ; preds = %196
  %205 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %206 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @HWMOD_NO_OCP_AUTOIDLE, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32 0, i32 1
  store i32 %212, i32* %3, align 4
  %213 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %214 = load i32, i32* %3, align 4
  %215 = call i32 @_set_module_autoidle(%struct.omap_hwmod* %213, i32 %214, i32* %5)
  %216 = load i32, i32* %5, align 4
  %217 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %218 = call i32 @_write_sysconfig(i32 %216, %struct.omap_hwmod* %217)
  br label %219

219:                                              ; preds = %14, %204, %196
  ret void
}

declare dso_local i32 @_enable_optional_clocks(%struct.omap_hwmod*) #1

declare dso_local i32 @_wait_softreset_complete(%struct.omap_hwmod*) #1

declare dso_local i32 @_disable_optional_clocks(%struct.omap_hwmod*) #1

declare dso_local %struct.clockdomain* @_get_clkdm(%struct.omap_hwmod*) #1

declare dso_local i32 @_enable_wakeup(%struct.omap_hwmod*, i32*) #1

declare dso_local i32 @_set_slave_idlemode(%struct.omap_hwmod*, i32, i32*) #1

declare dso_local i32 @_set_master_standbymode(%struct.omap_hwmod*, i32, i32*) #1

declare dso_local i32 @_set_clockactivity(%struct.omap_hwmod*, i32, i32*) #1

declare dso_local i32 @_write_sysconfig(i32, %struct.omap_hwmod*) #1

declare dso_local i32 @_set_module_autoidle(%struct.omap_hwmod*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

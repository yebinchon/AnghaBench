; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_display.c_dispc_disable_outputs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_display.c_dispc_disable_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_dispc_dev_attr = type { i32, i64 }
%struct.omap_hwmod = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"dss_dispc\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"display: could not disable outputs during reset - could not find dss_dispc hwmod\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"display: could not disable outputs during reset due to missing dev_attr\0A\00", align 1
@DISPC_CONTROL = common dso_local global i32 0, align 4
@LCD_EN_MASK = common dso_local global i32 0, align 4
@DIGIT_EN_MASK = common dso_local global i32 0, align 4
@DISPC_CONTROL2 = common dso_local global i32 0, align 4
@DISPC_CONTROL3 = common dso_local global i32 0, align 4
@FRAMEDONE_IRQ_SHIFT = common dso_local global i32 0, align 4
@FRAMEDONETV_IRQ_SHIFT = common dso_local global i32 0, align 4
@EVSYNC_EVEN_IRQ_SHIFT = common dso_local global i32 0, align 4
@EVSYNC_ODD_IRQ_SHIFT = common dso_local global i32 0, align 4
@FRAMEDONE2_IRQ_SHIFT = common dso_local global i32 0, align 4
@FRAMEDONE3_IRQ_SHIFT = common dso_local global i32 0, align 4
@DISPC_IRQSTATUS = common dso_local global i32 0, align 4
@FRAMEDONE_IRQ_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"didn't get FRAMEDONE1/2/3 or TV interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dispc_disable_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_disable_outputs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap_dss_dispc_dev_attr*, align 8
  %9 = alloca %struct.omap_hwmod*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = call %struct.omap_hwmod* @omap_hwmod_lookup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.omap_hwmod* %10, %struct.omap_hwmod** %9, align 8
  %11 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %12 = icmp ne %struct.omap_hwmod* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  br label %185

15:                                               ; preds = %0
  %16 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %17 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0))
  br label %185

22:                                               ; preds = %15
  %23 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %24 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.omap_dss_dispc_dev_attr*
  store %struct.omap_dss_dispc_dev_attr* %26, %struct.omap_dss_dispc_dev_attr** %8, align 8
  %27 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %28 = load i32, i32* @DISPC_CONTROL, align 4
  %29 = call i32 @omap_hwmod_read(%struct.omap_hwmod* %27, i32 %28)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @LCD_EN_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* @DIGIT_EN_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %4, align 4
  %36 = load %struct.omap_dss_dispc_dev_attr*, %struct.omap_dss_dispc_dev_attr** %8, align 8
  %37 = getelementptr inbounds %struct.omap_dss_dispc_dev_attr, %struct.omap_dss_dispc_dev_attr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %47

40:                                               ; preds = %22
  %41 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %42 = load i32, i32* @DISPC_CONTROL2, align 4
  %43 = call i32 @omap_hwmod_read(%struct.omap_hwmod* %41, i32 %42)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @LCD_EN_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %40, %22
  %48 = load %struct.omap_dss_dispc_dev_attr*, %struct.omap_dss_dispc_dev_attr** %8, align 8
  %49 = getelementptr inbounds %struct.omap_dss_dispc_dev_attr, %struct.omap_dss_dispc_dev_attr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 3
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %54 = load i32, i32* @DISPC_CONTROL3, align 4
  %55 = call i32 @omap_hwmod_read(%struct.omap_hwmod* %53, i32 %54)
  store i32 %55, i32* %1, align 4
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* @LCD_EN_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %52, %47
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %185

69:                                               ; preds = %59
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* @FRAMEDONE_IRQ_SHIFT, align 4
  %74 = shl i32 1, %73
  %75 = load i32, i32* %2, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = load %struct.omap_dss_dispc_dev_attr*, %struct.omap_dss_dispc_dev_attr** %8, align 8
  %82 = getelementptr inbounds %struct.omap_dss_dispc_dev_attr, %struct.omap_dss_dispc_dev_attr* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* @FRAMEDONETV_IRQ_SHIFT, align 4
  %87 = shl i32 1, %86
  %88 = load i32, i32* %2, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %2, align 4
  br label %98

90:                                               ; preds = %80
  %91 = load i32, i32* @EVSYNC_EVEN_IRQ_SHIFT, align 4
  %92 = shl i32 1, %91
  %93 = load i32, i32* @EVSYNC_ODD_IRQ_SHIFT, align 4
  %94 = shl i32 1, %93
  %95 = or i32 %92, %94
  %96 = load i32, i32* %2, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %90, %85
  br label %99

99:                                               ; preds = %98, %77
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* @FRAMEDONE2_IRQ_SHIFT, align 4
  %104 = shl i32 1, %103
  %105 = load i32, i32* %2, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* @FRAMEDONE3_IRQ_SHIFT, align 4
  %112 = shl i32 1, %111
  %113 = load i32, i32* %2, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %110, %107
  %116 = load i32, i32* %2, align 4
  %117 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %118 = load i32, i32* @DISPC_IRQSTATUS, align 4
  %119 = call i32 @omap_hwmod_write(i32 %116, %struct.omap_hwmod* %117, i32 %118)
  %120 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %121 = load i32, i32* @DISPC_CONTROL, align 4
  %122 = call i32 @omap_hwmod_read(%struct.omap_hwmod* %120, i32 %121)
  store i32 %122, i32* %1, align 4
  %123 = load i32, i32* @LCD_EN_MASK, align 4
  %124 = load i32, i32* @DIGIT_EN_MASK, align 4
  %125 = or i32 %123, %124
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %1, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %1, align 4
  %129 = load i32, i32* %1, align 4
  %130 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %131 = load i32, i32* @DISPC_CONTROL, align 4
  %132 = call i32 @omap_hwmod_write(i32 %129, %struct.omap_hwmod* %130, i32 %131)
  %133 = load %struct.omap_dss_dispc_dev_attr*, %struct.omap_dss_dispc_dev_attr** %8, align 8
  %134 = getelementptr inbounds %struct.omap_dss_dispc_dev_attr, %struct.omap_dss_dispc_dev_attr* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %135, 2
  br i1 %136, label %137, label %149

137:                                              ; preds = %115
  %138 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %139 = load i32, i32* @DISPC_CONTROL2, align 4
  %140 = call i32 @omap_hwmod_read(%struct.omap_hwmod* %138, i32 %139)
  store i32 %140, i32* %1, align 4
  %141 = load i32, i32* @LCD_EN_MASK, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %1, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %1, align 4
  %145 = load i32, i32* %1, align 4
  %146 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %147 = load i32, i32* @DISPC_CONTROL2, align 4
  %148 = call i32 @omap_hwmod_write(i32 %145, %struct.omap_hwmod* %146, i32 %147)
  br label %149

149:                                              ; preds = %137, %115
  %150 = load %struct.omap_dss_dispc_dev_attr*, %struct.omap_dss_dispc_dev_attr** %8, align 8
  %151 = getelementptr inbounds %struct.omap_dss_dispc_dev_attr, %struct.omap_dss_dispc_dev_attr* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp sgt i32 %152, 3
  br i1 %153, label %154, label %166

154:                                              ; preds = %149
  %155 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %156 = load i32, i32* @DISPC_CONTROL3, align 4
  %157 = call i32 @omap_hwmod_read(%struct.omap_hwmod* %155, i32 %156)
  store i32 %157, i32* %1, align 4
  %158 = load i32, i32* @LCD_EN_MASK, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %1, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %1, align 4
  %162 = load i32, i32* %1, align 4
  %163 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %164 = load i32, i32* @DISPC_CONTROL3, align 4
  %165 = call i32 @omap_hwmod_write(i32 %162, %struct.omap_hwmod* %163, i32 %164)
  br label %166

166:                                              ; preds = %154, %149
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %183, %166
  %168 = load %struct.omap_hwmod*, %struct.omap_hwmod** %9, align 8
  %169 = load i32, i32* @DISPC_IRQSTATUS, align 4
  %170 = call i32 @omap_hwmod_read(%struct.omap_hwmod* %168, i32 %169)
  %171 = load i32, i32* %2, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* %2, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %167
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @FRAMEDONE_IRQ_TIMEOUT, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %185

183:                                              ; preds = %175
  %184 = call i32 @mdelay(i32 1)
  br label %167

185:                                              ; preds = %13, %20, %68, %181, %167
  ret void
}

declare dso_local %struct.omap_hwmod* @omap_hwmod_lookup(i8*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @omap_hwmod_read(%struct.omap_hwmod*, i32) #1

declare dso_local i32 @omap_hwmod_write(i32, %struct.omap_hwmod*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

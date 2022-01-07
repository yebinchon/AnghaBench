; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_device = type { i32, i32, i32, i32, i32*, %struct.platform_device*, i32, i32 }
%struct.platform_device = type { %struct.TYPE_3__, %struct.platform_device_id* }
%struct.TYPE_3__ = type { %struct.sh_timer_config*, i64 }
%struct.sh_timer_config = type { i32 }
%struct.platform_device_id = type { i32 }

@CONFIG_OF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to remap I/O memory\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_tmu_device*, %struct.platform_device*)* @sh_tmu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_tmu_setup(%struct.sh_tmu_device* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_tmu_device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.platform_device_id*, align 8
  %9 = alloca %struct.sh_timer_config*, align 8
  store %struct.sh_tmu_device* %0, %struct.sh_tmu_device** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %12 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %11, i32 0, i32 5
  store %struct.platform_device* %10, %struct.platform_device** %12, align 8
  %13 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %14 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %13, i32 0, i32 7
  %15 = call i32 @raw_spin_lock_init(i32* %14)
  %16 = load i32, i32* @CONFIG_OF, align 4
  %17 = call i64 @IS_ENABLED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %27 = call i32 @sh_tmu_parse_dt(%struct.sh_tmu_device* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %197

32:                                               ; preds = %25
  br label %67

33:                                               ; preds = %19, %2
  %34 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.sh_timer_config*, %struct.sh_timer_config** %36, align 8
  %38 = icmp ne %struct.sh_timer_config* %37, null
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 1
  %42 = load %struct.platform_device_id*, %struct.platform_device_id** %41, align 8
  store %struct.platform_device_id* %42, %struct.platform_device_id** %8, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.sh_timer_config*, %struct.sh_timer_config** %45, align 8
  store %struct.sh_timer_config* %46, %struct.sh_timer_config** %9, align 8
  %47 = load %struct.platform_device_id*, %struct.platform_device_id** %8, align 8
  %48 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %51 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.sh_timer_config*, %struct.sh_timer_config** %9, align 8
  %53 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @hweight8(i32 %54)
  %56 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %57 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %66

58:                                               ; preds = %33
  %59 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %60 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %59, i32 0, i32 5
  %61 = load %struct.platform_device*, %struct.platform_device** %60, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_err(%struct.TYPE_3__* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @ENXIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %197

66:                                               ; preds = %39
  br label %67

67:                                               ; preds = %66, %32
  %68 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %69 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %68, i32 0, i32 5
  %70 = load %struct.platform_device*, %struct.platform_device** %69, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 @clk_get(%struct.TYPE_3__* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %74 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %76 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %67
  %81 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %82 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %81, i32 0, i32 5
  %83 = load %struct.platform_device*, %struct.platform_device** %82, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_err(%struct.TYPE_3__* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %87 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @PTR_ERR(i32 %88)
  store i32 %89, i32* %3, align 4
  br label %197

90:                                               ; preds = %67
  %91 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %92 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @clk_prepare(i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %191

98:                                               ; preds = %90
  %99 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %100 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @clk_enable(i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %186

106:                                              ; preds = %98
  %107 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %108 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @clk_get_rate(i32 %109)
  %111 = sdiv i32 %110, 4
  %112 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %113 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %115 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @clk_disable(i32 %116)
  %118 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %119 = call i32 @sh_tmu_map_memory(%struct.sh_tmu_device* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %106
  %123 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %124 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %123, i32 0, i32 5
  %125 = load %struct.platform_device*, %struct.platform_device** %124, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @dev_err(%struct.TYPE_3__* %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %186

128:                                              ; preds = %106
  %129 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %130 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call i32* @kcalloc(i32 %131, i32 4, i32 %132)
  %134 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %135 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %134, i32 0, i32 4
  store i32* %133, i32** %135, align 8
  %136 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %137 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %128
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %7, align 4
  br label %177

143:                                              ; preds = %128
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %170, %143
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %147 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ult i32 %145, %148
  br i1 %149, label %150, label %173

150:                                              ; preds = %144
  %151 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %152 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = icmp eq i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %6, align 4
  %162 = icmp eq i32 %161, 1
  %163 = zext i1 %162 to i32
  %164 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %165 = call i32 @sh_tmu_channel_setup(i32* %156, i32 %157, i32 %160, i32 %163, %struct.sh_tmu_device* %164)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %150
  br label %177

169:                                              ; preds = %150
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %6, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %144

173:                                              ; preds = %144
  %174 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %175 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %176 = call i32 @platform_set_drvdata(%struct.platform_device* %174, %struct.sh_tmu_device* %175)
  store i32 0, i32* %3, align 4
  br label %197

177:                                              ; preds = %168, %140
  %178 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %179 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @kfree(i32* %180)
  %182 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %183 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @iounmap(i32 %184)
  br label %186

186:                                              ; preds = %177, %122, %105
  %187 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %188 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @clk_unprepare(i32 %189)
  br label %191

191:                                              ; preds = %186, %97
  %192 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %4, align 8
  %193 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @clk_put(i32 %194)
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %191, %173, %80, %58, %30
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @sh_tmu_parse_dt(%struct.sh_tmu_device*) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @clk_get(%struct.TYPE_3__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @sh_tmu_map_memory(%struct.sh_tmu_device*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sh_tmu_channel_setup(i32*, i32, i32, i32, %struct.sh_tmu_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sh_tmu_device*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

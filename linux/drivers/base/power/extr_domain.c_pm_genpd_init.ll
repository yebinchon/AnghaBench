; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_pm_genpd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_pm_genpd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32*, i64, i32, i32, i32, %struct.dev_power_governor*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_power_governor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@genpd_power_off_work_fn = common dso_local global i32 0, align 4
@GPD_STATE_POWER_OFF = common dso_local global i32 0, align 4
@GPD_STATE_ACTIVE = common dso_local global i32 0, align 4
@genpd_runtime_suspend = common dso_local global i32 0, align 4
@genpd_runtime_resume = common dso_local global i32 0, align 4
@genpd_prepare = common dso_local global i32 0, align 4
@genpd_suspend_noirq = common dso_local global i32 0, align 4
@genpd_resume_noirq = common dso_local global i32 0, align 4
@genpd_freeze_noirq = common dso_local global i32 0, align 4
@genpd_thaw_noirq = common dso_local global i32 0, align 4
@genpd_poweroff_noirq = common dso_local global i32 0, align 4
@genpd_restore_noirq = common dso_local global i32 0, align 4
@genpd_complete = common dso_local global i32 0, align 4
@GENPD_FLAG_PM_CLK = common dso_local global i32 0, align 4
@pm_clk_suspend = common dso_local global i32 0, align 4
@pm_clk_resume = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: no governor for states\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@gpd_list_lock = common dso_local global i32 0, align 4
@gpd_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_genpd_init(%struct.generic_pm_domain* %0, %struct.dev_power_governor* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.generic_pm_domain*, align 8
  %6 = alloca %struct.dev_power_governor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %5, align 8
  store %struct.dev_power_governor* %1, %struct.dev_power_governor** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %10 = call i64 @IS_ERR_OR_NULL(%struct.generic_pm_domain* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %204

15:                                               ; preds = %3
  %16 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %17 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %16, i32 0, i32 20
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %20 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %19, i32 0, i32 19
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %23 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %22, i32 0, i32 18
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %26 = call i32 @genpd_lock_init(%struct.generic_pm_domain* %25)
  %27 = load %struct.dev_power_governor*, %struct.dev_power_governor** %6, align 8
  %28 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %29 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %28, i32 0, i32 17
  store %struct.dev_power_governor* %27, %struct.dev_power_governor** %29, align 8
  %30 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %31 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %30, i32 0, i32 16
  %32 = load i32, i32* @genpd_power_off_work_fn, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %35 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %34, i32 0, i32 15
  %36 = call i32 @atomic_set(i32* %35, i32 0)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %15
  %40 = load i32, i32* @GPD_STATE_POWER_OFF, align 4
  br label %43

41:                                               ; preds = %15
  %42 = load i32, i32* @GPD_STATE_ACTIVE, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %46 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %45, i32 0, i32 14
  store i32 %44, i32* %46, align 8
  %47 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %48 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %47, i32 0, i32 13
  store i64 0, i64* %48, align 8
  %49 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %50 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 8
  %51 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %52 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %54 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %53, i32 0, i32 12
  store i32* null, i32** %54, align 8
  %55 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %56 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  %57 = call i32 (...) @ktime_get()
  %58 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %59 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @genpd_runtime_suspend, align 4
  %61 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %62 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %61, i32 0, i32 10
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 9
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @genpd_runtime_resume, align 4
  %66 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %67 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %66, i32 0, i32 10
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 8
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* @genpd_prepare, align 4
  %71 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %72 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %71, i32 0, i32 10
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 7
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* @genpd_suspend_noirq, align 4
  %76 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %77 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 6
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* @genpd_resume_noirq, align 4
  %81 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %82 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %81, i32 0, i32 10
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  store i32 %80, i32* %84, align 4
  %85 = load i32, i32* @genpd_freeze_noirq, align 4
  %86 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %87 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %86, i32 0, i32 10
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* @genpd_thaw_noirq, align 4
  %91 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %92 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %91, i32 0, i32 10
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* @genpd_poweroff_noirq, align 4
  %96 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %97 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %96, i32 0, i32 10
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* @genpd_restore_noirq, align 4
  %101 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %102 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %101, i32 0, i32 10
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* @genpd_complete, align 4
  %106 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %107 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %106, i32 0, i32 10
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 4
  %110 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %111 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @GENPD_FLAG_PM_CLK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %43
  %117 = load i32, i32* @pm_clk_suspend, align 4
  %118 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %119 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %118, i32 0, i32 9
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* @pm_clk_resume, align 4
  %122 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %123 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 4
  br label %125

125:                                              ; preds = %116, %43
  %126 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %127 = call i64 @genpd_is_always_on(%struct.generic_pm_domain* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %131 = call i64 @genpd_is_rpm_always_on(%struct.generic_pm_domain* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129, %125
  %134 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %135 = call i32 @genpd_status_on(%struct.generic_pm_domain* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %204

140:                                              ; preds = %133, %129
  %141 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %142 = call i64 @genpd_is_cpu_domain(%struct.generic_pm_domain* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %146 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %145, i32 0, i32 8
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = call i32 @zalloc_cpumask_var(i32* %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %204

153:                                              ; preds = %144, %140
  %154 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %155 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %153
  %159 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %160 = call i32 @genpd_set_default_power_state(%struct.generic_pm_domain* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %158
  %164 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %165 = call i64 @genpd_is_cpu_domain(%struct.generic_pm_domain* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %169 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @free_cpumask_var(i32 %170)
  br label %172

172:                                              ; preds = %167, %163
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %4, align 4
  br label %204

174:                                              ; preds = %158
  br label %189

175:                                              ; preds = %153
  %176 = load %struct.dev_power_governor*, %struct.dev_power_governor** %6, align 8
  %177 = icmp ne %struct.dev_power_governor* %176, null
  br i1 %177, label %188, label %178

178:                                              ; preds = %175
  %179 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %180 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %185 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %183, %178, %175
  br label %189

189:                                              ; preds = %188, %174
  %190 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %191 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %190, i32 0, i32 7
  %192 = call i32 @device_initialize(i32* %191)
  %193 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %194 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %193, i32 0, i32 7
  %195 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %196 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @dev_set_name(i32* %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %197)
  %199 = call i32 @mutex_lock(i32* @gpd_list_lock)
  %200 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  %201 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %200, i32 0, i32 5
  %202 = call i32 @list_add(i32* %201, i32* @gpd_list)
  %203 = call i32 @mutex_unlock(i32* @gpd_list_lock)
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %189, %172, %150, %137, %12
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.generic_pm_domain*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @genpd_lock_init(%struct.generic_pm_domain*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @genpd_is_always_on(%struct.generic_pm_domain*) #1

declare dso_local i64 @genpd_is_rpm_always_on(%struct.generic_pm_domain*) #1

declare dso_local i32 @genpd_status_on(%struct.generic_pm_domain*) #1

declare dso_local i64 @genpd_is_cpu_domain(%struct.generic_pm_domain*) #1

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @genpd_set_default_power_state(%struct.generic_pm_domain*) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @device_initialize(i32*) #1

declare dso_local i32 @dev_set_name(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

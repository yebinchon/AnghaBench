; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sti-cpufreq.c_sti_cpufreq_fetch_regmap_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_sti-cpufreq.c_sti_cpufreq_fetch_regmap_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.reg_field = type { i32 }
%struct.regmap_field = type { i32 }

@ddata = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate reg field\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to read %s code\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"SUBSTRATE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"PCODE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reg_field*, i32, i32)* @sti_cpufreq_fetch_regmap_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_cpufreq_fetch_regmap_field(%struct.reg_field* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reg_field*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap_field*, align 8
  %9 = alloca %struct.reg_field, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.reg_field* %0, %struct.reg_field** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.reg_field*, %struct.reg_field** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %13, i64 %15
  %17 = bitcast %struct.reg_field* %9 to i8*
  %18 = bitcast %struct.reg_field* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ddata, i32 0, i32 1), align 8
  store %struct.device* %19, %struct.device** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %9, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ddata, i32 0, i32 0), align 8
  %24 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.regmap_field* @devm_regmap_field_alloc(%struct.device* %22, i32 %23, i32 %25)
  store %struct.regmap_field* %26, %struct.regmap_field** %8, align 8
  %27 = load %struct.regmap_field*, %struct.regmap_field** %8, align 8
  %28 = call i64 @IS_ERR(%struct.regmap_field* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.device*, %struct.device** %10, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.regmap_field*, %struct.regmap_field** %8, align 8
  %34 = call i32 @PTR_ERR(%struct.regmap_field* %33)
  store i32 %34, i32* %4, align 4
  br label %50

35:                                               ; preds = %3
  %36 = load %struct.regmap_field*, %struct.regmap_field** %8, align 8
  %37 = call i32 @regmap_field_read(%struct.regmap_field* %36, i32* %11)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.device*, %struct.device** %10, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %40, %30
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.regmap_field* @devm_regmap_field_alloc(%struct.device*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.regmap_field*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @PTR_ERR(%struct.regmap_field*) #2

declare dso_local i32 @regmap_field_read(%struct.regmap_field*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_enable_disable_shadow_mbr.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_enable_disable_shadow_mbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_mbr_data = type { i64, i32 }
%struct.opal_step = type { i32, i32* }

@OPAL_MBR_ENABLE = common dso_local global i64 0, align 8
@OPAL_TRUE = common dso_local global i32 0, align 4
@OPAL_FALSE = common dso_local global i32 0, align 4
@start_admin1LSP_opal_session = common dso_local global i32 0, align 4
@set_mbr_done = common dso_local global i32 0, align 4
@end_opal_session = common dso_local global i32 0, align 4
@set_mbr_enable_disable = common dso_local global i32 0, align 4
@OPAL_MBR_DISABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, %struct.opal_mbr_data*)* @opal_enable_disable_shadow_mbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_enable_disable_shadow_mbr(%struct.opal_dev* %0, %struct.opal_mbr_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca %struct.opal_mbr_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x %struct.opal_step], align 16
  %8 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store %struct.opal_mbr_data* %1, %struct.opal_mbr_data** %5, align 8
  %9 = load %struct.opal_mbr_data*, %struct.opal_mbr_data** %5, align 8
  %10 = getelementptr inbounds %struct.opal_mbr_data, %struct.opal_mbr_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OPAL_MBR_ENABLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @OPAL_TRUE, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @OPAL_FALSE, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %6, align 4
  %20 = getelementptr inbounds [6 x %struct.opal_step], [6 x %struct.opal_step]* %7, i64 0, i64 0
  %21 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %20, i32 0, i32 0
  %22 = load i32, i32* @start_admin1LSP_opal_session, align 4
  store i32 %22, i32* %21, align 16
  %23 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %20, i32 0, i32 1
  %24 = load %struct.opal_mbr_data*, %struct.opal_mbr_data** %5, align 8
  %25 = getelementptr inbounds %struct.opal_mbr_data, %struct.opal_mbr_data* %24, i32 0, i32 1
  store i32* %25, i32** %23, align 8
  %26 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %20, i64 1
  %27 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %26, i32 0, i32 0
  %28 = load i32, i32* @set_mbr_done, align 4
  store i32 %28, i32* %27, align 16
  %29 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %26, i32 0, i32 1
  store i32* %6, i32** %29, align 8
  %30 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %26, i64 1
  %31 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %30, i32 0, i32 0
  %32 = load i32, i32* @end_opal_session, align 4
  store i32 %32, i32* %31, align 16
  %33 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %30, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %30, i64 1
  %35 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %34, i32 0, i32 0
  %36 = load i32, i32* @start_admin1LSP_opal_session, align 4
  store i32 %36, i32* %35, align 16
  %37 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %34, i32 0, i32 1
  %38 = load %struct.opal_mbr_data*, %struct.opal_mbr_data** %5, align 8
  %39 = getelementptr inbounds %struct.opal_mbr_data, %struct.opal_mbr_data* %38, i32 0, i32 1
  store i32* %39, i32** %37, align 8
  %40 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %34, i64 1
  %41 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %40, i32 0, i32 0
  %42 = load i32, i32* @set_mbr_enable_disable, align 4
  store i32 %42, i32* %41, align 16
  %43 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %40, i32 0, i32 1
  store i32* %6, i32** %43, align 8
  %44 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %40, i64 1
  %45 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %44, i32 0, i32 0
  %46 = load i32, i32* @end_opal_session, align 4
  store i32 %46, i32* %45, align 16
  %47 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %44, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load %struct.opal_mbr_data*, %struct.opal_mbr_data** %5, align 8
  %49 = getelementptr inbounds %struct.opal_mbr_data, %struct.opal_mbr_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OPAL_MBR_ENABLE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %18
  %54 = load %struct.opal_mbr_data*, %struct.opal_mbr_data** %5, align 8
  %55 = getelementptr inbounds %struct.opal_mbr_data, %struct.opal_mbr_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @OPAL_MBR_DISABLE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %77

62:                                               ; preds = %53, %18
  %63 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %64 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %67 = call i32 @setup_opal_dev(%struct.opal_dev* %66)
  %68 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %69 = getelementptr inbounds [6 x %struct.opal_step], [6 x %struct.opal_step]* %7, i64 0, i64 0
  %70 = getelementptr inbounds [6 x %struct.opal_step], [6 x %struct.opal_step]* %7, i64 0, i64 0
  %71 = call i32 @ARRAY_SIZE(%struct.opal_step* %70)
  %72 = call i32 @execute_steps(%struct.opal_dev* %68, %struct.opal_step* %69, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %74 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %62, %59
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @setup_opal_dev(%struct.opal_dev*) #1

declare dso_local i32 @execute_steps(%struct.opal_dev*, %struct.opal_step*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.opal_step*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

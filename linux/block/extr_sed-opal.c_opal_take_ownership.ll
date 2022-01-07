; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_take_ownership.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_take_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_key = type { i32 }
%struct.opal_step = type { i32, %struct.opal_key* }

@start_anybodyASP_opal_session = common dso_local global i32 0, align 4
@get_msid_cpin_pin = common dso_local global i32 0, align 4
@end_opal_session = common dso_local global i32 0, align 4
@start_SIDASP_opal_session = common dso_local global i32 0, align 4
@set_sid_cpin_pin = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, %struct.opal_key*)* @opal_take_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_take_ownership(%struct.opal_dev* %0, %struct.opal_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca %struct.opal_key*, align 8
  %6 = alloca [6 x %struct.opal_step], align 16
  %7 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store %struct.opal_key* %1, %struct.opal_key** %5, align 8
  %8 = getelementptr inbounds [6 x %struct.opal_step], [6 x %struct.opal_step]* %6, i64 0, i64 0
  %9 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %8, i32 0, i32 0
  %10 = load i32, i32* @start_anybodyASP_opal_session, align 4
  store i32 %10, i32* %9, align 16
  %11 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %8, i32 0, i32 1
  store %struct.opal_key* null, %struct.opal_key** %11, align 8
  %12 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %8, i64 1
  %13 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %12, i32 0, i32 0
  %14 = load i32, i32* @get_msid_cpin_pin, align 4
  store i32 %14, i32* %13, align 16
  %15 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %12, i32 0, i32 1
  store %struct.opal_key* null, %struct.opal_key** %15, align 8
  %16 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %12, i64 1
  %17 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %16, i32 0, i32 0
  %18 = load i32, i32* @end_opal_session, align 4
  store i32 %18, i32* %17, align 16
  %19 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %16, i32 0, i32 1
  store %struct.opal_key* null, %struct.opal_key** %19, align 8
  %20 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %16, i64 1
  %21 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %20, i32 0, i32 0
  %22 = load i32, i32* @start_SIDASP_opal_session, align 4
  store i32 %22, i32* %21, align 16
  %23 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %20, i32 0, i32 1
  %24 = load %struct.opal_key*, %struct.opal_key** %5, align 8
  store %struct.opal_key* %24, %struct.opal_key** %23, align 8
  %25 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %20, i64 1
  %26 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %25, i32 0, i32 0
  %27 = load i32, i32* @set_sid_cpin_pin, align 4
  store i32 %27, i32* %26, align 16
  %28 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %25, i32 0, i32 1
  %29 = load %struct.opal_key*, %struct.opal_key** %5, align 8
  store %struct.opal_key* %29, %struct.opal_key** %28, align 8
  %30 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %25, i64 1
  %31 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %30, i32 0, i32 0
  %32 = load i32, i32* @end_opal_session, align 4
  store i32 %32, i32* %31, align 16
  %33 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %30, i32 0, i32 1
  store %struct.opal_key* null, %struct.opal_key** %33, align 8
  %34 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %35 = icmp ne %struct.opal_dev* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %54

39:                                               ; preds = %2
  %40 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %41 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %44 = call i32 @setup_opal_dev(%struct.opal_dev* %43)
  %45 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %46 = getelementptr inbounds [6 x %struct.opal_step], [6 x %struct.opal_step]* %6, i64 0, i64 0
  %47 = getelementptr inbounds [6 x %struct.opal_step], [6 x %struct.opal_step]* %6, i64 0, i64 0
  %48 = call i32 @ARRAY_SIZE(%struct.opal_step* %47)
  %49 = call i32 @execute_steps(%struct.opal_dev* %45, %struct.opal_step* %46, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %51 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %39, %36
  %55 = load i32, i32* %3, align 4
  ret i32 %55
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

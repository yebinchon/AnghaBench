; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_erase_locking_range.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_erase_locking_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_session_info = type { i32 }
%struct.opal_step = type { i32, %struct.opal_session_info* }

@start_auth_opal_session = common dso_local global i32 0, align 4
@erase_locking_range = common dso_local global i32 0, align 4
@end_opal_session = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, %struct.opal_session_info*)* @opal_erase_locking_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_erase_locking_range(%struct.opal_dev* %0, %struct.opal_session_info* %1) #0 {
  %3 = alloca %struct.opal_dev*, align 8
  %4 = alloca %struct.opal_session_info*, align 8
  %5 = alloca [3 x %struct.opal_step], align 16
  %6 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %3, align 8
  store %struct.opal_session_info* %1, %struct.opal_session_info** %4, align 8
  %7 = getelementptr inbounds [3 x %struct.opal_step], [3 x %struct.opal_step]* %5, i64 0, i64 0
  %8 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %7, i32 0, i32 0
  %9 = load i32, i32* @start_auth_opal_session, align 4
  store i32 %9, i32* %8, align 16
  %10 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %7, i32 0, i32 1
  %11 = load %struct.opal_session_info*, %struct.opal_session_info** %4, align 8
  store %struct.opal_session_info* %11, %struct.opal_session_info** %10, align 8
  %12 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %7, i64 1
  %13 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %12, i32 0, i32 0
  %14 = load i32, i32* @erase_locking_range, align 4
  store i32 %14, i32* %13, align 16
  %15 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %12, i32 0, i32 1
  %16 = load %struct.opal_session_info*, %struct.opal_session_info** %4, align 8
  store %struct.opal_session_info* %16, %struct.opal_session_info** %15, align 8
  %17 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %12, i64 1
  %18 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %17, i32 0, i32 0
  %19 = load i32, i32* @end_opal_session, align 4
  store i32 %19, i32* %18, align 16
  %20 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %17, i32 0, i32 1
  store %struct.opal_session_info* null, %struct.opal_session_info** %20, align 8
  %21 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %22 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %25 = call i32 @setup_opal_dev(%struct.opal_dev* %24)
  %26 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %27 = getelementptr inbounds [3 x %struct.opal_step], [3 x %struct.opal_step]* %5, i64 0, i64 0
  %28 = getelementptr inbounds [3 x %struct.opal_step], [3 x %struct.opal_step]* %5, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(%struct.opal_step* %28)
  %30 = call i32 @execute_steps(%struct.opal_dev* %26, %struct.opal_step* %27, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %32 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %6, align 4
  ret i32 %34
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

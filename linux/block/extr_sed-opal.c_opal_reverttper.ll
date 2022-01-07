; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_reverttper.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_reverttper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_key = type { i32 }
%struct.opal_step = type { i32, %struct.opal_key* }

@start_SIDASP_opal_session = common dso_local global i32 0, align 4
@revert_tper = common dso_local global i32 0, align 4
@start_PSID_opal_session = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, %struct.opal_key*, i32)* @opal_reverttper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_reverttper(%struct.opal_dev* %0, %struct.opal_key* %1, i32 %2) #0 {
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca %struct.opal_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.opal_step], align 16
  %8 = alloca [2 x %struct.opal_step], align 16
  %9 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store %struct.opal_key* %1, %struct.opal_key** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [2 x %struct.opal_step], [2 x %struct.opal_step]* %7, i64 0, i64 0
  %11 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %10, i32 0, i32 0
  %12 = load i32, i32* @start_SIDASP_opal_session, align 4
  store i32 %12, i32* %11, align 16
  %13 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %10, i32 0, i32 1
  %14 = load %struct.opal_key*, %struct.opal_key** %5, align 8
  store %struct.opal_key* %14, %struct.opal_key** %13, align 8
  %15 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %10, i64 1
  %16 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %15, i32 0, i32 0
  %17 = load i32, i32* @revert_tper, align 4
  store i32 %17, i32* %16, align 16
  %18 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %15, i32 0, i32 1
  store %struct.opal_key* null, %struct.opal_key** %18, align 8
  %19 = getelementptr inbounds [2 x %struct.opal_step], [2 x %struct.opal_step]* %8, i64 0, i64 0
  %20 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %19, i32 0, i32 0
  %21 = load i32, i32* @start_PSID_opal_session, align 4
  store i32 %21, i32* %20, align 16
  %22 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %19, i32 0, i32 1
  %23 = load %struct.opal_key*, %struct.opal_key** %5, align 8
  store %struct.opal_key* %23, %struct.opal_key** %22, align 8
  %24 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %19, i64 1
  %25 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %24, i32 0, i32 0
  %26 = load i32, i32* @revert_tper, align 4
  store i32 %26, i32* %25, align 16
  %27 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %24, i32 0, i32 1
  store %struct.opal_key* null, %struct.opal_key** %27, align 8
  %28 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %29 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %32 = call i32 @setup_opal_dev(%struct.opal_dev* %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %37 = getelementptr inbounds [2 x %struct.opal_step], [2 x %struct.opal_step]* %8, i64 0, i64 0
  %38 = getelementptr inbounds [2 x %struct.opal_step], [2 x %struct.opal_step]* %8, i64 0, i64 0
  %39 = call i32 @ARRAY_SIZE(%struct.opal_step* %38)
  %40 = call i32 @execute_steps(%struct.opal_dev* %36, %struct.opal_step* %37, i32 %39)
  store i32 %40, i32* %9, align 4
  br label %47

41:                                               ; preds = %3
  %42 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %43 = getelementptr inbounds [2 x %struct.opal_step], [2 x %struct.opal_step]* %7, i64 0, i64 0
  %44 = getelementptr inbounds [2 x %struct.opal_step], [2 x %struct.opal_step]* %7, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(%struct.opal_step* %44)
  %46 = call i32 @execute_steps(%struct.opal_dev* %42, %struct.opal_step* %43, i32 %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %49 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %55 = call i32 @clean_opal_dev(%struct.opal_dev* %54)
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @setup_opal_dev(%struct.opal_dev*) #1

declare dso_local i32 @execute_steps(%struct.opal_dev*, %struct.opal_step*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.opal_step*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clean_opal_dev(%struct.opal_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

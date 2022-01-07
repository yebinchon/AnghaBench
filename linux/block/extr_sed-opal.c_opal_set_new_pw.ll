; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_set_new_pw.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_set_new_pw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_new_pw = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.opal_step = type { i32, %struct.TYPE_2__* }

@start_auth_opal_session = common dso_local global i32 0, align 4
@set_new_pw = common dso_local global i32 0, align 4
@end_opal_session = common dso_local global i32 0, align 4
@OPAL_USER9 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, %struct.opal_new_pw*)* @opal_set_new_pw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_set_new_pw(%struct.opal_dev* %0, %struct.opal_new_pw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca %struct.opal_new_pw*, align 8
  %6 = alloca [3 x %struct.opal_step], align 16
  %7 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store %struct.opal_new_pw* %1, %struct.opal_new_pw** %5, align 8
  %8 = getelementptr inbounds [3 x %struct.opal_step], [3 x %struct.opal_step]* %6, i64 0, i64 0
  %9 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %8, i32 0, i32 0
  %10 = load i32, i32* @start_auth_opal_session, align 4
  store i32 %10, i32* %9, align 16
  %11 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %8, i32 0, i32 1
  %12 = load %struct.opal_new_pw*, %struct.opal_new_pw** %5, align 8
  %13 = getelementptr inbounds %struct.opal_new_pw, %struct.opal_new_pw* %12, i32 0, i32 1
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %11, align 8
  %14 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %8, i64 1
  %15 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %14, i32 0, i32 0
  %16 = load i32, i32* @set_new_pw, align 4
  store i32 %16, i32* %15, align 16
  %17 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %14, i32 0, i32 1
  %18 = load %struct.opal_new_pw*, %struct.opal_new_pw** %5, align 8
  %19 = getelementptr inbounds %struct.opal_new_pw, %struct.opal_new_pw* %18, i32 0, i32 0
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %17, align 8
  %20 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %14, i64 1
  %21 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %20, i32 0, i32 0
  %22 = load i32, i32* @end_opal_session, align 4
  store i32 %22, i32* %21, align 16
  %23 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %20, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %23, align 8
  %24 = load %struct.opal_new_pw*, %struct.opal_new_pw** %5, align 8
  %25 = getelementptr inbounds %struct.opal_new_pw, %struct.opal_new_pw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OPAL_USER9, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load %struct.opal_new_pw*, %struct.opal_new_pw** %5, align 8
  %32 = getelementptr inbounds %struct.opal_new_pw, %struct.opal_new_pw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OPAL_USER9, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %2
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %55

40:                                               ; preds = %30
  %41 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %42 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %45 = call i32 @setup_opal_dev(%struct.opal_dev* %44)
  %46 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %47 = getelementptr inbounds [3 x %struct.opal_step], [3 x %struct.opal_step]* %6, i64 0, i64 0
  %48 = getelementptr inbounds [3 x %struct.opal_step], [3 x %struct.opal_step]* %6, i64 0, i64 0
  %49 = call i32 @ARRAY_SIZE(%struct.opal_step* %48)
  %50 = call i32 @execute_steps(%struct.opal_dev* %46, %struct.opal_step* %47, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %52 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %40, %37
  %56 = load i32, i32* %3, align 4
  ret i32 %56
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

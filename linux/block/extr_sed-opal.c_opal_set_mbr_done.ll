; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_set_mbr_done.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_set_mbr_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_mbr_done = type { i64, i32 }
%struct.opal_step = type { i32, i32* }

@OPAL_MBR_DONE = common dso_local global i64 0, align 8
@OPAL_TRUE = common dso_local global i32 0, align 4
@OPAL_FALSE = common dso_local global i32 0, align 4
@start_admin1LSP_opal_session = common dso_local global i32 0, align 4
@set_mbr_done = common dso_local global i32 0, align 4
@end_opal_session = common dso_local global i32 0, align 4
@OPAL_MBR_NOT_DONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, %struct.opal_mbr_done*)* @opal_set_mbr_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_set_mbr_done(%struct.opal_dev* %0, %struct.opal_mbr_done* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca %struct.opal_mbr_done*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x %struct.opal_step], align 16
  %8 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store %struct.opal_mbr_done* %1, %struct.opal_mbr_done** %5, align 8
  %9 = load %struct.opal_mbr_done*, %struct.opal_mbr_done** %5, align 8
  %10 = getelementptr inbounds %struct.opal_mbr_done, %struct.opal_mbr_done* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OPAL_MBR_DONE, align 8
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
  %20 = getelementptr inbounds [3 x %struct.opal_step], [3 x %struct.opal_step]* %7, i64 0, i64 0
  %21 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %20, i32 0, i32 0
  %22 = load i32, i32* @start_admin1LSP_opal_session, align 4
  store i32 %22, i32* %21, align 16
  %23 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %20, i32 0, i32 1
  %24 = load %struct.opal_mbr_done*, %struct.opal_mbr_done** %5, align 8
  %25 = getelementptr inbounds %struct.opal_mbr_done, %struct.opal_mbr_done* %24, i32 0, i32 1
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
  %34 = load %struct.opal_mbr_done*, %struct.opal_mbr_done** %5, align 8
  %35 = getelementptr inbounds %struct.opal_mbr_done, %struct.opal_mbr_done* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @OPAL_MBR_DONE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %18
  %40 = load %struct.opal_mbr_done*, %struct.opal_mbr_done** %5, align 8
  %41 = getelementptr inbounds %struct.opal_mbr_done, %struct.opal_mbr_done* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @OPAL_MBR_NOT_DONE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %63

48:                                               ; preds = %39, %18
  %49 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %50 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %53 = call i32 @setup_opal_dev(%struct.opal_dev* %52)
  %54 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %55 = getelementptr inbounds [3 x %struct.opal_step], [3 x %struct.opal_step]* %7, i64 0, i64 0
  %56 = getelementptr inbounds [3 x %struct.opal_step], [3 x %struct.opal_step]* %7, i64 0, i64 0
  %57 = call i32 @ARRAY_SIZE(%struct.opal_step* %56)
  %58 = call i32 @execute_steps(%struct.opal_dev* %54, %struct.opal_step* %55, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %60 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %48, %45
  %64 = load i32, i32* %3, align 4
  ret i32 %64
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

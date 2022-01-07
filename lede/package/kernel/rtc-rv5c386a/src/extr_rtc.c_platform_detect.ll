; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/rtc-rv5c386a/src/extr_rtc.c_platform_detect.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/rtc-rv5c386a/src/extr_rtc.c_platform_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"model_no\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"WL700\00", align 1
@sda_index = common dso_local global i32 0, align 4
@scl_index = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"et0phyaddr\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"et1phyaddr\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"hardware_version\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"WL300-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @platform_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_detect() #0 {
  %1 = alloca [20 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %5 = call i64 @bcm47xx_nvram_getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %4, i32 20)
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %9 = call i64 @startswith(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 2, i32* @sda_index, align 4
  store i32 5, i32* @scl_index, align 4
  br label %43

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %0
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %15 = call i64 @bcm47xx_nvram_getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %14, i32 20)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %19 = call i32 @simple_strtoul(i8* %18, i32* null, i32 0)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %22 = call i64 @bcm47xx_nvram_getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %21, i32 20)
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %26 = call i32 @simple_strtoul(i8* %25, i32* null, i32 0)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %29 = call i64 @bcm47xx_nvram_getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %28, i32 20)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %33 = call i64 @startswith(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 4, i32* @sda_index, align 4
  store i32 5, i32* @scl_index, align 4
  br label %43

42:                                               ; preds = %38, %35, %31
  br label %43

43:                                               ; preds = %11, %41, %42, %27
  ret void
}

declare dso_local i64 @bcm47xx_nvram_getenv(i8*, i8*, i32) #1

declare dso_local i64 @startswith(i8*, i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

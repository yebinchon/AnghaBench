; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_get_msid_cpin_pin.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_get_msid_cpin_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i64, i32, i32 }

@opaluid = common dso_local global i32* null, align 8
@OPAL_C_PIN_MSID = common dso_local global i64 0, align 8
@OPAL_PIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Couldn't extract MSID_CPIN from response\0A\00", align 1
@OPAL_INVAL_PARAM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @get_msid_cpin_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_msid_cpin_pin(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %10 = load i32*, i32** @opaluid, align 8
  %11 = load i64, i64* @OPAL_C_PIN_MSID, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @OPAL_PIN, align 4
  %15 = call i32 @generic_get_column(%struct.opal_dev* %9, i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %22 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %21, i32 0, i32 2
  %23 = call i64 @response_get_string(i32* %22, i32 4, i8** %6)
  store i64 %23, i64* %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @OPAL_INVAL_PARAM, align 4
  store i32 %28, i32* %3, align 4
  br label %47

29:                                               ; preds = %20
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @kmemdup(i8* %30, i64 %31, i32 %32)
  %34 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %35 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %37 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %29
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %46 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %40, %26, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @generic_get_column(%struct.opal_dev*, i32, i32) #1

declare dso_local i64 @response_get_string(i32*, i32, i8**) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @kmemdup(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

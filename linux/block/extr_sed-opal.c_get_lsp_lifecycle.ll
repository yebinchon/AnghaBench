; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_get_lsp_lifecycle.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_get_lsp_lifecycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }

@opaluid = common dso_local global i32* null, align 8
@OPAL_LOCKINGSP_UID = common dso_local global i64 0, align 8
@OPAL_LIFECYCLE = common dso_local global i32 0, align 4
@OPAL_MANUFACTURED_INACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"Couldn't determine the status of the Lifecycle state\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i8*)* @get_lsp_lifecycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_lsp_lifecycle(%struct.opal_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %9 = load i32*, i32** @opaluid, align 8
  %10 = load i64, i64* @OPAL_LOCKINGSP_UID, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OPAL_LIFECYCLE, align 4
  %14 = call i32 @generic_get_column(%struct.opal_dev* %8, i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %21 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %20, i32 0, i32 0
  %22 = call i64 @response_get_u64(i32* %21, i32 4)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @OPAL_MANUFACTURED_INACTIVE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %26, %17
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @generic_get_column(%struct.opal_dev*, i32, i32) #1

declare dso_local i64 @response_get_u64(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

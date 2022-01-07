; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_start_opal_session_cont.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_start_opal_session_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i64, i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Couldn't authenticate session\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*)* @start_opal_session_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_opal_session_cont(%struct.opal_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.opal_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %8 = call i32 @parse_and_check_status(%struct.opal_dev* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %15 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %14, i32 0, i32 2
  %16 = call i64 @response_get_u64(i32* %15, i32 4)
  store i64 %16, i64* %4, align 8
  %17 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %18 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %17, i32 0, i32 2
  %19 = call i64 @response_get_u64(i32* %18, i32 5)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %36

29:                                               ; preds = %22, %13
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %32 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %35 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %29, %25, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @parse_and_check_status(%struct.opal_dev*) #1

declare dso_local i64 @response_get_u64(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_parse_dts_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_parse_dts_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.sysc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }
%struct.property = type { i32 }

@sysc_dts_quirks = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"dts flag should be at module level for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysc*, %struct.device_node*, i32)* @sysc_parse_dts_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysc_parse_dts_quirks(%struct.sysc* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca %struct.sysc*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.sysc* %0, %struct.sysc** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %50, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sysc_dts_quirks, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sysc_dts_quirks, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call %struct.property* @of_get_property(%struct.device_node* %23, i8* %24, i32* %9)
  store %struct.property* %25, %struct.property** %7, align 8
  %26 = load %struct.property*, %struct.property** %7, align 8
  %27 = icmp ne %struct.property* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  br label %50

29:                                               ; preds = %16
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sysc_dts_quirks, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sysc*, %struct.sysc** %4, align 8
  %37 = getelementptr inbounds %struct.sysc, %struct.sysc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %29
  %44 = load %struct.sysc*, %struct.sysc** %4, align 8
  %45 = getelementptr inbounds %struct.sysc, %struct.sysc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %43, %29
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %11

53:                                               ; preds = %11
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local %struct.property* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

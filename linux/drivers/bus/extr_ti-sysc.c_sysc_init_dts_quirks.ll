; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_dts_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_dts_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ti,hwmods\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ti,sysc-delay-us\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"bad ti,sysc-delay-us: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*)* @sysc_init_dts_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_init_dts_quirks(%struct.sysc* %0) #0 {
  %2 = alloca %struct.sysc*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %2, align 8
  %6 = load %struct.sysc*, %struct.sysc** %2, align 8
  %7 = getelementptr inbounds %struct.sysc, %struct.sysc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %3, align 8
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = call i32 @of_get_property(%struct.device_node* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null)
  %13 = load %struct.sysc*, %struct.sysc** %2, align 8
  %14 = getelementptr inbounds %struct.sysc, %struct.sysc* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.sysc*, %struct.sysc** %2, align 8
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = call i32 @sysc_parse_dts_quirks(%struct.sysc* %15, %struct.device_node* %16, i32 0)
  %18 = load %struct.device_node*, %struct.device_node** %3, align 8
  %19 = call i32 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 255
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.sysc*, %struct.sysc** %2, align 8
  %27 = getelementptr inbounds %struct.sysc, %struct.sysc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_warn(%struct.TYPE_4__* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.sysc*, %struct.sysc** %2, align 8
  %35 = getelementptr inbounds %struct.sysc, %struct.sysc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %1
  ret i32 0
}

declare dso_local i32 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @sysc_parse_dts_quirks(%struct.sysc*, %struct.device_node*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

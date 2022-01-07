; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devcon.c_generic_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devcon.c_generic_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }
%struct.device_connection = type { i32*, i64 }
%struct.device = type opaque

@generic_match_buses = common dso_local global %struct.bus_type** null, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device_connection*, i32, i8*)* @generic_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @generic_match(%struct.device_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device_connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bus_type*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.device_connection* %0, %struct.device_connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %11 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %16 = call i8* @device_connection_fwnode_match(%struct.device_connection* %15)
  store i8* %16, i8** %4, align 8
  br label %48

17:                                               ; preds = %3
  %18 = load %struct.bus_type**, %struct.bus_type*** @generic_match_buses, align 8
  %19 = getelementptr inbounds %struct.bus_type*, %struct.bus_type** %18, i64 0
  %20 = load %struct.bus_type*, %struct.bus_type** %19, align 8
  store %struct.bus_type* %20, %struct.bus_type** %8, align 8
  br label %21

21:                                               ; preds = %41, %17
  %22 = load %struct.bus_type*, %struct.bus_type** %8, align 8
  %23 = icmp ne %struct.bus_type* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load %struct.bus_type*, %struct.bus_type** %8, align 8
  %26 = load %struct.device_connection*, %struct.device_connection** %5, align 8
  %27 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @bus_find_device_by_name(%struct.bus_type* %25, i32* null, i32 %32)
  %34 = bitcast i8* %33 to %struct.device*
  store %struct.device* %34, %struct.device** %9, align 8
  %35 = load %struct.device*, %struct.device** %9, align 8
  %36 = icmp ne %struct.device* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = bitcast %struct.device* %38 to i8*
  store i8* %39, i8** %4, align 8
  br label %48

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.bus_type*, %struct.bus_type** %8, align 8
  %43 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %42, i32 1
  store %struct.bus_type* %43, %struct.bus_type** %8, align 8
  br label %21

44:                                               ; preds = %21
  %45 = load i32, i32* @EPROBE_DEFER, align 4
  %46 = sub nsw i32 0, %45
  %47 = call i8* @ERR_PTR(i32 %46)
  store i8* %47, i8** %4, align 8
  br label %48

48:                                               ; preds = %44, %37, %14
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

declare dso_local i8* @device_connection_fwnode_match(%struct.device_connection*) #1

declare dso_local i8* @bus_find_device_by_name(%struct.bus_type*, i32*, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

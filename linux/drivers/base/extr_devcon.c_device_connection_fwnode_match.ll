; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devcon.c_device_connection_fwnode_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devcon.c_device_connection_fwnode_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }
%struct.device_connection = type { i32, i32 }
%struct.device = type opaque

@generic_match_buses = common dso_local global %struct.bus_type** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device_connection*)* @device_connection_fwnode_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @device_connection_fwnode_match(%struct.device_connection* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.device_connection*, align 8
  %4 = alloca %struct.bus_type*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.device_connection* %0, %struct.device_connection** %3, align 8
  %6 = load %struct.bus_type**, %struct.bus_type*** @generic_match_buses, align 8
  %7 = getelementptr inbounds %struct.bus_type*, %struct.bus_type** %6, i64 0
  %8 = load %struct.bus_type*, %struct.bus_type** %7, align 8
  store %struct.bus_type* %8, %struct.bus_type** %4, align 8
  br label %9

9:                                                ; preds = %41, %1
  %10 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %11 = icmp ne %struct.bus_type* %10, null
  br i1 %11, label %12, label %44

12:                                               ; preds = %9
  %13 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %14 = load %struct.device_connection*, %struct.device_connection** %3, align 8
  %15 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @bus_find_device_by_fwnode(%struct.bus_type* %13, i32 %16)
  %18 = bitcast i8* %17 to %struct.device*
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %12
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = bitcast %struct.device* %22 to i8*
  %24 = call i32 @dev_name(i8* %23)
  %25 = load %struct.device_connection*, %struct.device_connection** %3, align 8
  %26 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.device_connection*, %struct.device_connection** %3, align 8
  %29 = getelementptr inbounds %struct.device_connection, %struct.device_connection* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strlen(i32 %30)
  %32 = call i32 @strncmp(i32 %24, i32 %27, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %21
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = bitcast %struct.device* %35 to i8*
  store i8* %36, i8** %2, align 8
  br label %45

37:                                               ; preds = %21, %12
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = bitcast %struct.device* %38 to i8*
  %40 = call i32 @put_device(i8* %39)
  br label %41

41:                                               ; preds = %37
  %42 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %43 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %42, i32 1
  store %struct.bus_type* %43, %struct.bus_type** %4, align 8
  br label %9

44:                                               ; preds = %9
  store i8* null, i8** %2, align 8
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i8* @bus_find_device_by_fwnode(%struct.bus_type*, i32) #1

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i32 @dev_name(i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @put_device(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

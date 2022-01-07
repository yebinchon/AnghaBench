; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_slip_kern.c_slip_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_slip_kern.c_slip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i64, i32*, i64 }
%struct.uml_net_private = type { i64 }
%struct.slip_data = type { i32, i32, i32, %struct.net_device*, i32*, i32 }
%struct.slip_init = type { i32 }

@ARPHRD_SLIP = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SLIP backend - SLIP IP = %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*)* @slip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slip_init(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uml_net_private*, align 8
  %6 = alloca %struct.slip_data*, align 8
  %7 = alloca %struct.slip_init*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.slip_init*
  store %struct.slip_init* %9, %struct.slip_init** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.uml_net_private* @netdev_priv(%struct.net_device* %10)
  store %struct.uml_net_private* %11, %struct.uml_net_private** %5, align 8
  %12 = load %struct.uml_net_private*, %struct.uml_net_private** %5, align 8
  %13 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.slip_data*
  store %struct.slip_data* %15, %struct.slip_data** %6, align 8
  %16 = load %struct.slip_data*, %struct.slip_data** %6, align 8
  %17 = getelementptr inbounds %struct.slip_data, %struct.slip_data* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @memset(i32 %18, i32 0, i32 4)
  %20 = load %struct.slip_data*, %struct.slip_data** %6, align 8
  %21 = getelementptr inbounds %struct.slip_data, %struct.slip_data* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.slip_init*, %struct.slip_init** %7, align 8
  %23 = getelementptr inbounds %struct.slip_init, %struct.slip_init* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.slip_data*, %struct.slip_data** %6, align 8
  %26 = getelementptr inbounds %struct.slip_data, %struct.slip_data* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.slip_data*, %struct.slip_data** %6, align 8
  %28 = getelementptr inbounds %struct.slip_data, %struct.slip_data* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load %struct.slip_data*, %struct.slip_data** %6, align 8
  %31 = getelementptr inbounds %struct.slip_data, %struct.slip_data* %30, i32 0, i32 3
  store %struct.net_device* %29, %struct.net_device** %31, align 8
  %32 = load %struct.slip_data*, %struct.slip_data** %6, align 8
  %33 = getelementptr inbounds %struct.slip_data, %struct.slip_data* %32, i32 0, i32 2
  %34 = call i32 @slip_proto_init(i32* %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @ARPHRD_SLIP, align 4
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  store i32 256, i32* %45, align 8
  %46 = load i32, i32* @IFF_NOARP, align 4
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.slip_data*, %struct.slip_data** %6, align 8
  %50 = getelementptr inbounds %struct.slip_data, %struct.slip_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %51)
  ret void
}

declare dso_local %struct.uml_net_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @slip_proto_init(i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

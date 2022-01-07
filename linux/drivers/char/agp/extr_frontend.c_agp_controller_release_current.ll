; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_controller_release_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_controller_release_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.agp_controller = type { %struct.agp_client* }
%struct.agp_client = type { %struct.agp_client*, i32 }
%struct.agp_file_private = type { i32 }

@AGP_FF_IS_VALID = common dso_local global i32 0, align 4
@agp_fe = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@agp_bridge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_controller*, %struct.agp_file_private*)* @agp_controller_release_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_controller_release_current(%struct.agp_controller* %0, %struct.agp_file_private* %1) #0 {
  %3 = alloca %struct.agp_controller*, align 8
  %4 = alloca %struct.agp_file_private*, align 8
  %5 = alloca %struct.agp_client*, align 8
  %6 = alloca %struct.agp_file_private*, align 8
  store %struct.agp_controller* %0, %struct.agp_controller** %3, align 8
  store %struct.agp_file_private* %1, %struct.agp_file_private** %4, align 8
  %7 = load i32, i32* @AGP_FF_IS_VALID, align 4
  %8 = load %struct.agp_file_private*, %struct.agp_file_private** %4, align 8
  %9 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %8, i32 0, i32 0
  %10 = call i32 @clear_bit(i32 %7, i32* %9)
  %11 = load %struct.agp_controller*, %struct.agp_controller** %3, align 8
  %12 = getelementptr inbounds %struct.agp_controller, %struct.agp_controller* %11, i32 0, i32 0
  %13 = load %struct.agp_client*, %struct.agp_client** %12, align 8
  store %struct.agp_client* %13, %struct.agp_client** %5, align 8
  br label %14

14:                                               ; preds = %29, %2
  %15 = load %struct.agp_client*, %struct.agp_client** %5, align 8
  %16 = icmp ne %struct.agp_client* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.agp_client*, %struct.agp_client** %5, align 8
  %19 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.agp_file_private* @agp_find_private(i32 %20)
  store %struct.agp_file_private* %21, %struct.agp_file_private** %6, align 8
  %22 = load %struct.agp_file_private*, %struct.agp_file_private** %6, align 8
  %23 = icmp ne %struct.agp_file_private* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32, i32* @AGP_FF_IS_VALID, align 4
  %26 = load %struct.agp_file_private*, %struct.agp_file_private** %6, align 8
  %27 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %26, i32 0, i32 0
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.agp_client*, %struct.agp_client** %5, align 8
  %31 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %30, i32 0, i32 0
  %32 = load %struct.agp_client*, %struct.agp_client** %31, align 8
  store %struct.agp_client* %32, %struct.agp_client** %5, align 8
  br label %14

33:                                               ; preds = %14
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 0), align 8
  %34 = load i32, i32* @agp_bridge, align 4
  %35 = call i32 @agp_backend_release(i32 %34)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.agp_file_private* @agp_find_private(i32) #1

declare dso_local i32 @agp_backend_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

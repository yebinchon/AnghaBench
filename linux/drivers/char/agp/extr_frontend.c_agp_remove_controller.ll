; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_remove_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_remove_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.agp_controller*, %struct.agp_controller* }
%struct.agp_controller = type { %struct.agp_controller*, %struct.agp_controller* }

@agp_fe = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@agp_bridge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_controller*)* @agp_remove_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_remove_controller(%struct.agp_controller* %0) #0 {
  %2 = alloca %struct.agp_controller*, align 8
  %3 = alloca %struct.agp_controller*, align 8
  %4 = alloca %struct.agp_controller*, align 8
  store %struct.agp_controller* %0, %struct.agp_controller** %2, align 8
  %5 = load %struct.agp_controller*, %struct.agp_controller** %2, align 8
  %6 = getelementptr inbounds %struct.agp_controller, %struct.agp_controller* %5, i32 0, i32 0
  %7 = load %struct.agp_controller*, %struct.agp_controller** %6, align 8
  store %struct.agp_controller* %7, %struct.agp_controller** %3, align 8
  %8 = load %struct.agp_controller*, %struct.agp_controller** %2, align 8
  %9 = getelementptr inbounds %struct.agp_controller, %struct.agp_controller* %8, i32 0, i32 1
  %10 = load %struct.agp_controller*, %struct.agp_controller** %9, align 8
  store %struct.agp_controller* %10, %struct.agp_controller** %4, align 8
  %11 = load %struct.agp_controller*, %struct.agp_controller** %3, align 8
  %12 = icmp ne %struct.agp_controller* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %15 = load %struct.agp_controller*, %struct.agp_controller** %3, align 8
  %16 = getelementptr inbounds %struct.agp_controller, %struct.agp_controller* %15, i32 0, i32 1
  store %struct.agp_controller* %14, %struct.agp_controller** %16, align 8
  %17 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %18 = icmp ne %struct.agp_controller* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.agp_controller*, %struct.agp_controller** %3, align 8
  %21 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %22 = getelementptr inbounds %struct.agp_controller, %struct.agp_controller* %21, i32 0, i32 0
  store %struct.agp_controller* %20, %struct.agp_controller** %22, align 8
  br label %23

23:                                               ; preds = %19, %13
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %26 = icmp ne %struct.agp_controller* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %29 = getelementptr inbounds %struct.agp_controller, %struct.agp_controller* %28, i32 0, i32 0
  store %struct.agp_controller* null, %struct.agp_controller** %29, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  store %struct.agp_controller* %31, %struct.agp_controller** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 2), align 8
  br label %32

32:                                               ; preds = %30, %23
  %33 = load %struct.agp_controller*, %struct.agp_controller** %2, align 8
  %34 = call i32 @agp_remove_all_memory(%struct.agp_controller* %33)
  %35 = load %struct.agp_controller*, %struct.agp_controller** %2, align 8
  %36 = call i32 @agp_remove_all_clients(%struct.agp_controller* %35)
  %37 = load %struct.agp_controller*, %struct.agp_controller** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 1), align 8
  %38 = load %struct.agp_controller*, %struct.agp_controller** %2, align 8
  %39 = icmp eq %struct.agp_controller* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  store %struct.agp_controller* null, %struct.agp_controller** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 0), align 8
  %41 = load i32, i32* @agp_bridge, align 4
  %42 = call i32 @agp_backend_release(i32 %41)
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.agp_controller*, %struct.agp_controller** %2, align 8
  %45 = call i32 @kfree(%struct.agp_controller* %44)
  ret i32 0
}

declare dso_local i32 @agp_remove_all_memory(%struct.agp_controller*) #1

declare dso_local i32 @agp_remove_all_clients(%struct.agp_controller*) #1

declare dso_local i32 @agp_backend_release(i32) #1

declare dso_local i32 @kfree(%struct.agp_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

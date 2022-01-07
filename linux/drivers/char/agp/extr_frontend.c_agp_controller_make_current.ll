; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_controller_make_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_controller_make_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.agp_controller* }
%struct.agp_controller = type { %struct.agp_client* }
%struct.agp_client = type { %struct.agp_client*, i32 }
%struct.agp_file_private = type { i32 }

@AGP_FF_IS_VALID = common dso_local global i32 0, align 4
@AGP_FF_IS_CLIENT = common dso_local global i32 0, align 4
@agp_fe = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_controller*)* @agp_controller_make_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_controller_make_current(%struct.agp_controller* %0) #0 {
  %2 = alloca %struct.agp_controller*, align 8
  %3 = alloca %struct.agp_client*, align 8
  %4 = alloca %struct.agp_file_private*, align 8
  store %struct.agp_controller* %0, %struct.agp_controller** %2, align 8
  %5 = load %struct.agp_controller*, %struct.agp_controller** %2, align 8
  %6 = getelementptr inbounds %struct.agp_controller, %struct.agp_controller* %5, i32 0, i32 0
  %7 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  store %struct.agp_client* %7, %struct.agp_client** %3, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = load %struct.agp_client*, %struct.agp_client** %3, align 8
  %10 = icmp ne %struct.agp_client* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load %struct.agp_client*, %struct.agp_client** %3, align 8
  %13 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.agp_file_private* @agp_find_private(i32 %14)
  store %struct.agp_file_private* %15, %struct.agp_file_private** %4, align 8
  %16 = load %struct.agp_file_private*, %struct.agp_file_private** %4, align 8
  %17 = icmp ne %struct.agp_file_private* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load i32, i32* @AGP_FF_IS_VALID, align 4
  %20 = load %struct.agp_file_private*, %struct.agp_file_private** %4, align 8
  %21 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %20, i32 0, i32 0
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load i32, i32* @AGP_FF_IS_CLIENT, align 4
  %24 = load %struct.agp_file_private*, %struct.agp_file_private** %4, align 8
  %25 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %18, %11
  %28 = load %struct.agp_client*, %struct.agp_client** %3, align 8
  %29 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %28, i32 0, i32 0
  %30 = load %struct.agp_client*, %struct.agp_client** %29, align 8
  store %struct.agp_client* %30, %struct.agp_client** %3, align 8
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.agp_controller*, %struct.agp_controller** %2, align 8
  store %struct.agp_controller* %32, %struct.agp_controller** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @agp_fe, i32 0, i32 0), align 8
  ret void
}

declare dso_local %struct.agp_file_private* @agp_find_private(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

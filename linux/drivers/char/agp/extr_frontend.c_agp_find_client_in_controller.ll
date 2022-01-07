; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_find_client_in_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_find_client_in_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_client = type { i64, %struct.agp_client* }
%struct.agp_controller = type { %struct.agp_client* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.agp_client* (%struct.agp_controller*, i64)* @agp_find_client_in_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.agp_client* @agp_find_client_in_controller(%struct.agp_controller* %0, i64 %1) #0 {
  %3 = alloca %struct.agp_client*, align 8
  %4 = alloca %struct.agp_controller*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.agp_client*, align 8
  store %struct.agp_controller* %0, %struct.agp_controller** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %8 = icmp eq %struct.agp_controller* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.agp_client* null, %struct.agp_client** %3, align 8
  br label %30

10:                                               ; preds = %2
  %11 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %12 = getelementptr inbounds %struct.agp_controller, %struct.agp_controller* %11, i32 0, i32 0
  %13 = load %struct.agp_client*, %struct.agp_client** %12, align 8
  store %struct.agp_client* %13, %struct.agp_client** %6, align 8
  br label %14

14:                                               ; preds = %25, %10
  %15 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  %16 = icmp ne %struct.agp_client* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  %19 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  store %struct.agp_client* %24, %struct.agp_client** %3, align 8
  br label %30

25:                                               ; preds = %17
  %26 = load %struct.agp_client*, %struct.agp_client** %6, align 8
  %27 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %26, i32 0, i32 1
  %28 = load %struct.agp_client*, %struct.agp_client** %27, align 8
  store %struct.agp_client* %28, %struct.agp_client** %6, align 8
  br label %14

29:                                               ; preds = %14
  store %struct.agp_client* null, %struct.agp_client** %3, align 8
  br label %30

30:                                               ; preds = %29, %23, %9
  %31 = load %struct.agp_client*, %struct.agp_client** %3, align 8
  ret %struct.agp_client* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

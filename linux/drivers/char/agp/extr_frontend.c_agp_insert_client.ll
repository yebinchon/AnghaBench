; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_insert_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_insert_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.agp_client* }
%struct.agp_client = type { %struct.agp_client*, %struct.agp_client* }

@agp_fe = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_client*)* @agp_insert_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_insert_client(%struct.agp_client* %0) #0 {
  %2 = alloca %struct.agp_client*, align 8
  %3 = alloca %struct.agp_client*, align 8
  store %struct.agp_client* %0, %struct.agp_client** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0), align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load %struct.agp_client*, %struct.agp_client** %5, align 8
  store %struct.agp_client* %6, %struct.agp_client** %3, align 8
  %7 = load %struct.agp_client*, %struct.agp_client** %3, align 8
  %8 = load %struct.agp_client*, %struct.agp_client** %2, align 8
  %9 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %8, i32 0, i32 1
  store %struct.agp_client* %7, %struct.agp_client** %9, align 8
  %10 = load %struct.agp_client*, %struct.agp_client** %3, align 8
  %11 = icmp ne %struct.agp_client* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.agp_client*, %struct.agp_client** %2, align 8
  %14 = load %struct.agp_client*, %struct.agp_client** %3, align 8
  %15 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %14, i32 0, i32 0
  store %struct.agp_client* %13, %struct.agp_client** %15, align 8
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.agp_client*, %struct.agp_client** %2, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store %struct.agp_client* %17, %struct.agp_client** %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

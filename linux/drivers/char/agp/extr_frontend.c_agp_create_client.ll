; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_create_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_create_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_client = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.agp_client* @agp_create_client(i32 %0) #0 {
  %2 = alloca %struct.agp_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_client*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.agp_client* @kzalloc(i32 4, i32 %5)
  store %struct.agp_client* %6, %struct.agp_client** %4, align 8
  %7 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %8 = icmp eq %struct.agp_client* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.agp_client* null, %struct.agp_client** %2, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %13 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %15 = call i32 @agp_insert_client(%struct.agp_client* %14)
  %16 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  store %struct.agp_client* %16, %struct.agp_client** %2, align 8
  br label %17

17:                                               ; preds = %10, %9
  %18 = load %struct.agp_client*, %struct.agp_client** %2, align 8
  ret %struct.agp_client* %18
}

declare dso_local %struct.agp_client* @kzalloc(i32, i32) #1

declare dso_local i32 @agp_insert_client(%struct.agp_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

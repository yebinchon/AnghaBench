; ModuleID = '/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_id = type { i32, i32 }
%struct.amba_device = type { i32, i64 }

@CORESIGHT_CID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amba_id* (%struct.amba_id*, %struct.amba_device*)* @amba_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amba_id* @amba_lookup(%struct.amba_id* %0, %struct.amba_device* %1) #0 {
  %3 = alloca %struct.amba_id*, align 8
  %4 = alloca %struct.amba_id*, align 8
  %5 = alloca %struct.amba_device*, align 8
  store %struct.amba_id* %0, %struct.amba_id** %4, align 8
  store %struct.amba_device* %1, %struct.amba_device** %5, align 8
  br label %6

6:                                                ; preds = %36, %2
  %7 = load %struct.amba_id*, %struct.amba_id** %4, align 8
  %8 = getelementptr inbounds %struct.amba_id, %struct.amba_id* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %6
  %12 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %13 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.amba_id*, %struct.amba_id** %4, align 8
  %16 = getelementptr inbounds %struct.amba_id, %struct.amba_id* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  %19 = load %struct.amba_id*, %struct.amba_id** %4, align 8
  %20 = getelementptr inbounds %struct.amba_id, %struct.amba_id* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %11
  %24 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %25 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CORESIGHT_CID, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.amba_id*, %struct.amba_id** %4, align 8
  %31 = load %struct.amba_device*, %struct.amba_device** %5, align 8
  %32 = call i64 @amba_cs_uci_id_match(%struct.amba_id* %30, %struct.amba_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %23
  %35 = load %struct.amba_id*, %struct.amba_id** %4, align 8
  store %struct.amba_id* %35, %struct.amba_id** %3, align 8
  br label %40

36:                                               ; preds = %29, %11
  %37 = load %struct.amba_id*, %struct.amba_id** %4, align 8
  %38 = getelementptr inbounds %struct.amba_id, %struct.amba_id* %37, i32 1
  store %struct.amba_id* %38, %struct.amba_id** %4, align 8
  br label %6

39:                                               ; preds = %6
  store %struct.amba_id* null, %struct.amba_id** %3, align 8
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.amba_id*, %struct.amba_id** %3, align 8
  ret %struct.amba_id* %41
}

declare dso_local i64 @amba_cs_uci_id_match(%struct.amba_id*, %struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_parisc-agp.c_parisc_agp_create_gatt_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_parisc-agp.c_parisc_agp_create_gatt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._parisc_agp_info = type { i32, i64* }
%struct.TYPE_2__ = type { i64 }
%struct.agp_bridge_data = type { i32 }

@parisc_agp_info = common dso_local global %struct._parisc_agp_info zeroinitializer, align 8
@agp_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_bridge_data*)* @parisc_agp_create_gatt_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parisc_agp_create_gatt_table(%struct.agp_bridge_data* %0) #0 {
  %2 = alloca %struct.agp_bridge_data*, align 8
  %3 = alloca %struct._parisc_agp_info*, align 8
  %4 = alloca i32, align 4
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %2, align 8
  store %struct._parisc_agp_info* @parisc_agp_info, %struct._parisc_agp_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %3, align 8
  %8 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @agp_bridge, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %3, align 8
  %16 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64 %14, i64* %20, align 8
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %5

24:                                               ; preds = %5
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

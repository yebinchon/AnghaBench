; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_mips_cdmm.c_mips_cdmm_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_mips_cdmm.c_mips_cdmm_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_cdmm_device_id = type { i64 }
%struct.mips_cdmm_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mips_cdmm_device_id* (%struct.mips_cdmm_device_id*, %struct.mips_cdmm_device*)* @mips_cdmm_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mips_cdmm_device_id* @mips_cdmm_lookup(%struct.mips_cdmm_device_id* %0, %struct.mips_cdmm_device* %1) #0 {
  %3 = alloca %struct.mips_cdmm_device_id*, align 8
  %4 = alloca %struct.mips_cdmm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.mips_cdmm_device_id* %0, %struct.mips_cdmm_device_id** %3, align 8
  store %struct.mips_cdmm_device* %1, %struct.mips_cdmm_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %24, %2
  %7 = load %struct.mips_cdmm_device_id*, %struct.mips_cdmm_device_id** %3, align 8
  %8 = getelementptr inbounds %struct.mips_cdmm_device_id, %struct.mips_cdmm_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load %struct.mips_cdmm_device*, %struct.mips_cdmm_device** %4, align 8
  %13 = getelementptr inbounds %struct.mips_cdmm_device, %struct.mips_cdmm_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.mips_cdmm_device_id*, %struct.mips_cdmm_device_id** %3, align 8
  %16 = getelementptr inbounds %struct.mips_cdmm_device_id, %struct.mips_cdmm_device_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %27

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.mips_cdmm_device_id*, %struct.mips_cdmm_device_id** %3, align 8
  %26 = getelementptr inbounds %struct.mips_cdmm_device_id, %struct.mips_cdmm_device_id* %25, i32 1
  store %struct.mips_cdmm_device_id* %26, %struct.mips_cdmm_device_id** %3, align 8
  br label %6

27:                                               ; preds = %22, %6
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load %struct.mips_cdmm_device_id*, %struct.mips_cdmm_device_id** %3, align 8
  br label %33

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi %struct.mips_cdmm_device_id* [ %31, %30 ], [ null, %32 ]
  ret %struct.mips_cdmm_device_id* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

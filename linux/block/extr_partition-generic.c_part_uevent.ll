; ModuleID = '/home/carl/AnghaBench/linux/block/extr_partition-generic.c_part_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_partition-generic.c_part_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.hd_struct = type { %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i64* }

@.str = private unnamed_addr constant [9 x i8] c"PARTN=%u\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"PARTNAME=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @part_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @part_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.kobj_uevent_env*, align 8
  %5 = alloca %struct.hd_struct*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.hd_struct* @dev_to_part(%struct.device* %6)
  store %struct.hd_struct* %7, %struct.hd_struct** %5, align 8
  %8 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %9 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %10 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64* %11)
  %13 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %14 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %19 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %4, align 8
  %28 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %29 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64* %32)
  br label %34

34:                                               ; preds = %26, %17, %2
  ret i32 0
}

declare dso_local %struct.hd_struct* @dev_to_part(%struct.device*) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

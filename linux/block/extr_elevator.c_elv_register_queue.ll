; ModuleID = '/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_register_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_elevator.c_elv_register_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.elevator_queue* }
%struct.elevator_queue = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.elv_fs_entry* }
%struct.elv_fs_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"iosched\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elv_register_queue(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.elevator_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.elv_fs_entry*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %9 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %8, i32 0, i32 1
  %10 = load %struct.elevator_queue*, %struct.elevator_queue** %9, align 8
  store %struct.elevator_queue* %10, %struct.elevator_queue** %5, align 8
  %11 = load %struct.elevator_queue*, %struct.elevator_queue** %5, align 8
  %12 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %11, i32 0, i32 1
  %13 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %14 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %13, i32 0, i32 0
  %15 = call i32 @kobject_add(i32* %12, i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %56, label %18

18:                                               ; preds = %2
  %19 = load %struct.elevator_queue*, %struct.elevator_queue** %5, align 8
  %20 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.elv_fs_entry*, %struct.elv_fs_entry** %22, align 8
  store %struct.elv_fs_entry* %23, %struct.elv_fs_entry** %7, align 8
  %24 = load %struct.elv_fs_entry*, %struct.elv_fs_entry** %7, align 8
  %25 = icmp ne %struct.elv_fs_entry* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %41, %26
  %28 = load %struct.elv_fs_entry*, %struct.elv_fs_entry** %7, align 8
  %29 = getelementptr inbounds %struct.elv_fs_entry, %struct.elv_fs_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.elevator_queue*, %struct.elevator_queue** %5, align 8
  %35 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %34, i32 0, i32 1
  %36 = load %struct.elv_fs_entry*, %struct.elv_fs_entry** %7, align 8
  %37 = getelementptr inbounds %struct.elv_fs_entry, %struct.elv_fs_entry* %36, i32 0, i32 0
  %38 = call i64 @sysfs_create_file(i32* %35, %struct.TYPE_4__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %44

41:                                               ; preds = %33
  %42 = load %struct.elv_fs_entry*, %struct.elv_fs_entry** %7, align 8
  %43 = getelementptr inbounds %struct.elv_fs_entry, %struct.elv_fs_entry* %42, i32 1
  store %struct.elv_fs_entry* %43, %struct.elv_fs_entry** %7, align 8
  br label %27

44:                                               ; preds = %40, %27
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.elevator_queue*, %struct.elevator_queue** %5, align 8
  %50 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %49, i32 0, i32 1
  %51 = load i32, i32* @KOBJ_ADD, align 4
  %52 = call i32 @kobject_uevent(i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.elevator_queue*, %struct.elevator_queue** %5, align 8
  %55 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %2
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @kobject_add(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @sysfs_create_file(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c___bm_print_lock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c___bm_print_lock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.drbd_device = type { %struct.drbd_bitmap* }
%struct.drbd_bitmap = type { %struct.TYPE_3__*, i64 }

@drbd_ratelimit_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"FIXME %s[%d] in %s, bitmap locked for '%s' by %s[%d]\0A\00", align 1
@current = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_device*, i8*)* @__bm_print_lock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bm_print_lock_info(%struct.drbd_device* %0, i8* %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drbd_bitmap*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %7 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %6, i32 0, i32 0
  %8 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %7, align 8
  store %struct.drbd_bitmap* %8, %struct.drbd_bitmap** %5, align 8
  %9 = call i32 @__ratelimit(i32* @drbd_ratelimit_state)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %18 = call i32 @task_pid_nr(%struct.TYPE_3__* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %5, align 8
  %21 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = inttoptr i64 %22 to i8*
  br label %27

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %26 ]
  %29 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %5, align 8
  %30 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %5, align 8
  %35 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = call i32 @task_pid_nr(%struct.TYPE_3__* %36)
  %38 = call i32 @drbd_err(%struct.drbd_device* %13, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18, i8* %19, i8* %28, i32 %33, i32 %37)
  br label %39

39:                                               ; preds = %27, %11
  ret void
}

declare dso_local i32 @__ratelimit(i32*) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

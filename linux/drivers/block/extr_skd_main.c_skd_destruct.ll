; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"disk\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"sksb\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"skmsg\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"skcomp\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"skdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*)* @skd_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_destruct(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  %3 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %4 = icmp eq %struct.skd_device* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %57

6:                                                ; preds = %1
  %7 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %8 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %7, i32 0, i32 4
  %9 = call i32 @cancel_work_sync(i32* %8)
  %10 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %11 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_dbg(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %16 = call i32 @skd_free_disk(%struct.skd_device* %15)
  %17 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %18 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %23 = call i32 @skd_free_sksb(%struct.skd_device* %22)
  %24 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %25 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %30 = call i32 @skd_free_skmsg(%struct.skd_device* %29)
  %31 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %32 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %37 = call i32 @skd_free_skcomp(%struct.skd_device* %36)
  %38 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %39 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @kmem_cache_destroy(i32 %40)
  %42 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %43 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kmem_cache_destroy(i32 %44)
  %46 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %47 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @kmem_cache_destroy(i32 %48)
  %50 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %51 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @dev_dbg(i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %55 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %56 = call i32 @kfree(%struct.skd_device* %55)
  br label %57

57:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @skd_free_disk(%struct.skd_device*) #1

declare dso_local i32 @skd_free_sksb(%struct.skd_device*) #1

declare dso_local i32 @skd_free_skmsg(%struct.skd_device*) #1

declare dso_local i32 @skd_free_skcomp(%struct.skd_device*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @kfree(%struct.skd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

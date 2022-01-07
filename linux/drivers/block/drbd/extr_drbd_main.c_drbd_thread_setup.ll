; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_thread_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_thread_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.drbd_thread = type { i32*, i32 (%struct.drbd_thread*)*, i64, %struct.TYPE_3__*, i32, i32, i32*, %struct.drbd_resource* }
%struct.TYPE_3__ = type { i32 }
%struct.drbd_resource = type { i8*, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"drbd_%c_%s\00", align 1
@DRBD_SIGKILL = common dso_local global i32 0, align 4
@SIGXCPU = common dso_local global i32 0, align 4
@RESTARTING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Restarting %s thread\0A\00", align 1
@RUNNING = common dso_local global i64 0, align 8
@NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Terminating %s\0A\00", align 1
@drbd_destroy_connection = common dso_local global i32 0, align 4
@drbd_destroy_resource = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @drbd_thread_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_thread_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drbd_thread*, align 8
  %4 = alloca %struct.drbd_resource*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.drbd_thread*
  store %struct.drbd_thread* %8, %struct.drbd_thread** %3, align 8
  %9 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %10 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %9, i32 0, i32 7
  %11 = load %struct.drbd_resource*, %struct.drbd_resource** %10, align 8
  store %struct.drbd_resource* %11, %struct.drbd_resource** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %16 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %21 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @snprintf(i32* %14, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %22)
  %24 = load i32, i32* @DRBD_SIGKILL, align 4
  %25 = call i32 @allow_kernel_signal(i32 %24)
  %26 = load i32, i32* @SIGXCPU, align 4
  %27 = call i32 @allow_kernel_signal(i32 %26)
  br label %28

28:                                               ; preds = %43, %1
  %29 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %30 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %29, i32 0, i32 1
  %31 = load i32 (%struct.drbd_thread*)*, i32 (%struct.drbd_thread*)** %30, align 8
  %32 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %33 = call i32 %31(%struct.drbd_thread* %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %35 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %34, i32 0, i32 4
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %39 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RESTARTING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %28
  %44 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %45 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %46 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @drbd_info(%struct.drbd_resource* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %47)
  %49 = load i64, i64* @RUNNING, align 8
  %50 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %51 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %53 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %52, i32 0, i32 4
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %28

56:                                               ; preds = %28
  %57 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %58 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %57, i32 0, i32 6
  store i32* null, i32** %58, align 8
  %59 = load i64, i64* @NONE, align 8
  %60 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %61 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = call i32 (...) @smp_mb()
  %63 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %64 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %63, i32 0, i32 5
  %65 = call i32 @complete_all(i32* %64)
  %66 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %67 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %66, i32 0, i32 4
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @drbd_info(%struct.drbd_resource* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %73)
  %75 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %76 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = icmp ne %struct.TYPE_3__* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %56
  %80 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %81 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* @drbd_destroy_connection, align 4
  %85 = call i32 @kref_put(i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %56
  %87 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %88 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %87, i32 0, i32 1
  %89 = load i32, i32* @drbd_destroy_resource, align 4
  %90 = call i32 @kref_put(i32* %88, i32 %89)
  %91 = load i32, i32* @THIS_MODULE, align 4
  %92 = call i32 @module_put(i32 %91)
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, i8*) #1

declare dso_local i32 @allow_kernel_signal(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @drbd_info(%struct.drbd_resource*, i8*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

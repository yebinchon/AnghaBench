; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_thread_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_drbd_thread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.drbd_thread = type { i32, i32, i32, i32*, %struct.task_struct*, %struct.TYPE_4__*, %struct.drbd_resource*, i32 }
%struct.task_struct = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drbd_resource = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Starting %s thread (from %s [%d])\0A\00", align 1
@current = common dso_local global %struct.TYPE_5__* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed to get module reference in drbd_thread_start\0A\00", align 1
@drbd_thread_setup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"drbd_%c_%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Couldn't start thread\0A\00", align 1
@drbd_destroy_connection = common dso_local global i32 0, align 4
@drbd_destroy_resource = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Restarting %s thread (from %s [%d])\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_thread_start(%struct.drbd_thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_thread*, align 8
  %4 = alloca %struct.drbd_resource*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  store %struct.drbd_thread* %0, %struct.drbd_thread** %3, align 8
  %7 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %8 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %7, i32 0, i32 6
  %9 = load %struct.drbd_resource*, %struct.drbd_resource** %8, align 8
  store %struct.drbd_resource* %9, %struct.drbd_resource** %4, align 8
  %10 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %11 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %10, i32 0, i32 2
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %15 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %136 [
    i32 130, label %17
    i32 131, label %121
    i32 128, label %135
    i32 129, label %135
  ]

17:                                               ; preds = %1
  %18 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %19 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %20 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @drbd_info(%struct.drbd_resource* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32* %21, i32 %24, i32 %27)
  %29 = load i32, i32* @THIS_MODULE, align 4
  %30 = call i32 @try_module_get(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %17
  %33 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %34 = call i32 @drbd_err(%struct.drbd_resource* %33, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %36 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %35, i32 0, i32 2
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  store i32 0, i32* %2, align 4
  br label %142

39:                                               ; preds = %17
  %40 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %41 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %40, i32 0, i32 0
  %42 = call i32 @kref_get(i32* %41)
  %43 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %44 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %43, i32 0, i32 5
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %49 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %48, i32 0, i32 5
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @kref_get(i32* %51)
  br label %53

53:                                               ; preds = %47, %39
  %54 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %55 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %54, i32 0, i32 7
  %56 = call i32 @init_completion(i32* %55)
  %57 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %58 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %60 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %59, i32 0, i32 0
  store i32 128, i32* %60, align 8
  %61 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %62 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %61, i32 0, i32 2
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %66 = call i32 @flush_signals(%struct.TYPE_5__* %65)
  %67 = load i32, i32* @drbd_thread_setup, align 4
  %68 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %69 = bitcast %struct.drbd_thread* %68 to i8*
  %70 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %71 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %76 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %75, i32 0, i32 6
  %77 = load %struct.drbd_resource*, %struct.drbd_resource** %76, align 8
  %78 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.task_struct* @kthread_create(i32 %67, i8* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %79)
  store %struct.task_struct* %80, %struct.task_struct** %5, align 8
  %81 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %82 = call i32 @IS_ERR(%struct.task_struct* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %53
  %85 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %86 = call i32 @drbd_err(%struct.drbd_resource* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %88 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %87, i32 0, i32 5
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = icmp ne %struct.TYPE_4__* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %93 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %92, i32 0, i32 5
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* @drbd_destroy_connection, align 4
  %97 = call i32 @kref_put(i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %84
  %99 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %100 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %99, i32 0, i32 0
  %101 = load i32, i32* @drbd_destroy_resource, align 4
  %102 = call i32 @kref_put(i32* %100, i32 %101)
  %103 = load i32, i32* @THIS_MODULE, align 4
  %104 = call i32 @module_put(i32 %103)
  store i32 0, i32* %2, align 4
  br label %142

105:                                              ; preds = %53
  %106 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %107 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %106, i32 0, i32 2
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @spin_lock_irqsave(i32* %107, i64 %108)
  %110 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %111 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %112 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %111, i32 0, i32 4
  store %struct.task_struct* %110, %struct.task_struct** %112, align 8
  %113 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %114 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %113, i32 0, i32 0
  store i32 128, i32* %114, align 8
  %115 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %116 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %115, i32 0, i32 2
  %117 = load i64, i64* %6, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %120 = call i32 @wake_up_process(%struct.task_struct* %119)
  br label %141

121:                                              ; preds = %1
  %122 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %123 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %122, i32 0, i32 0
  store i32 129, i32* %123, align 8
  %124 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %125 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %126 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @drbd_info(%struct.drbd_resource* %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32* %127, i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %1, %1, %121
  br label %136

136:                                              ; preds = %1, %135
  %137 = load %struct.drbd_thread*, %struct.drbd_thread** %3, align 8
  %138 = getelementptr inbounds %struct.drbd_thread, %struct.drbd_thread* %137, i32 0, i32 2
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @spin_unlock_irqrestore(i32* %138, i64 %139)
  br label %141

141:                                              ; preds = %136, %105
  store i32 1, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %98, %32
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @drbd_info(%struct.drbd_resource*, i8*, i32*, i32, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @drbd_err(%struct.drbd_resource*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @flush_signals(%struct.TYPE_5__*) #1

declare dso_local %struct.task_struct* @kthread_create(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

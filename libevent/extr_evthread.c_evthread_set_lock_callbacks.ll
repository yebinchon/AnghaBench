; ModuleID = '/home/carl/AnghaBench/libevent/extr_evthread.c_evthread_set_lock_callbacks.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evthread.c_evthread_set_lock_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evthread_lock_callbacks = type { i64, i64, i64, i64, i64, i64 }

@event_debug_mode_on_ = common dso_local global i64 0, align 8
@event_debug_created_threadable_ctx_ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"evthread initialization must be called BEFORE anything else!\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"Trying to disable lock functions after they have been set up will probaby not work.\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Can't change lock callbacks once they have been initialized.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evthread_set_lock_callbacks(%struct.evthread_lock_callbacks* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.evthread_lock_callbacks*, align 8
  %4 = alloca %struct.evthread_lock_callbacks*, align 8
  store %struct.evthread_lock_callbacks* %0, %struct.evthread_lock_callbacks** %3, align 8
  %5 = call %struct.evthread_lock_callbacks* (...) @evthread_get_lock_callbacks()
  store %struct.evthread_lock_callbacks* %5, %struct.evthread_lock_callbacks** %4, align 8
  %6 = load i64, i64* @event_debug_mode_on_, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i64, i64* @event_debug_created_threadable_ctx_, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @event_errx(i32 1, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %16 = icmp ne %struct.evthread_lock_callbacks* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %19 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @event_warnx(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %26 = call i32 @memset(%struct.evthread_lock_callbacks* %25, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %109

27:                                               ; preds = %14
  %28 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %29 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %27
  %33 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %34 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %37 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %81

40:                                               ; preds = %32
  %41 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %42 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %45 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %40
  %49 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %50 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %53 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %48
  %57 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %58 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %61 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %56
  %65 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %66 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %69 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %74 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %77 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %109

81:                                               ; preds = %72, %64, %56, %48, %40, %32
  %82 = call i32 @event_warnx(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %109

83:                                               ; preds = %27
  %84 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %85 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %83
  %89 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %90 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %95 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %100 = getelementptr inbounds %struct.evthread_lock_callbacks, %struct.evthread_lock_callbacks* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %4, align 8
  %105 = load %struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks** %3, align 8
  %106 = call i32 @memcpy(%struct.evthread_lock_callbacks* %104, %struct.evthread_lock_callbacks* %105, i32 4)
  %107 = call i32 @event_global_setup_locks_(i32 1)
  store i32 %107, i32* %2, align 4
  br label %109

108:                                              ; preds = %98, %93, %88, %83
  store i32 -1, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %103, %81, %80, %24
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.evthread_lock_callbacks* @evthread_get_lock_callbacks(...) #1

declare dso_local i32 @event_errx(i32, i8*) #1

declare dso_local i32 @event_warnx(i8*) #1

declare dso_local i32 @memset(%struct.evthread_lock_callbacks*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.evthread_lock_callbacks*, %struct.evthread_lock_callbacks*, i32) #1

declare dso_local i32 @event_global_setup_locks_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

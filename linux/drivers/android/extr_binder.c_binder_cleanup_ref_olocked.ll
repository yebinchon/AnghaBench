; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_cleanup_ref_olocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_binder_cleanup_ref_olocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_ref = type { %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_7__, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }

@BINDER_DEBUG_INTERNAL_REFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%d delete ref %d desc %d for node %d\0A\00", align 1
@BINDER_DEBUG_DEAD_BINDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%d delete ref %d desc %d has death notification\0A\00", align 1
@BINDER_STAT_DEATH = common dso_local global i32 0, align 4
@BINDER_STAT_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_ref*)* @binder_cleanup_ref_olocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_cleanup_ref_olocked(%struct.binder_ref* %0) #0 {
  %2 = alloca %struct.binder_ref*, align 8
  %3 = alloca i32, align 4
  store %struct.binder_ref* %0, %struct.binder_ref** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @BINDER_DEBUG_INTERNAL_REFS, align 4
  %5 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %6 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %5, i32 0, i32 1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %11 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %15 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %19 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %18, i32 0, i32 3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, i32, i32, i32, ...) @binder_debug(i32 %4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13, i32 %17, i32 %22)
  %24 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %25 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %24, i32 0, i32 6
  %26 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %27 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = call i32 @rb_erase(i32* %25, i32* %29)
  %31 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %32 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %31, i32 0, i32 5
  %33 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %34 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = call i32 @rb_erase(i32* %32, i32* %36)
  %38 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %39 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %38, i32 0, i32 3
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = call i32 @binder_node_inner_lock(%struct.TYPE_9__* %40)
  %42 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %43 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %1
  %48 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %49 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %48, i32 0, i32 3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = call i32 @binder_dec_node_nilocked(%struct.TYPE_9__* %50, i32 1, i32 1)
  br label %52

52:                                               ; preds = %47, %1
  %53 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %54 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %53, i32 0, i32 4
  %55 = call i32 @hlist_del(i32* %54)
  %56 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %57 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %56, i32 0, i32 3
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = call i32 @binder_dec_node_nilocked(%struct.TYPE_9__* %58, i32 0, i32 1)
  store i32 %59, i32* %3, align 4
  %60 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %61 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %60, i32 0, i32 3
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = call i32 @binder_node_inner_unlock(%struct.TYPE_9__* %62)
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %52
  %67 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %68 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %67, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %68, align 8
  br label %69

69:                                               ; preds = %66, %52
  %70 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %71 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = icmp ne %struct.TYPE_8__* %72, null
  br i1 %73, label %74, label %100

74:                                               ; preds = %69
  %75 = load i32, i32* @BINDER_DEBUG_DEAD_BINDER, align 4
  %76 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %77 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %82 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %86 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, i32, i32, i32, ...) @binder_debug(i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %84, i32 %88)
  %90 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %91 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %94 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = call i32 @binder_dequeue_work(%struct.TYPE_10__* %92, i32* %96)
  %98 = load i32, i32* @BINDER_STAT_DEATH, align 4
  %99 = call i32 @binder_stats_deleted(i32 %98)
  br label %100

100:                                              ; preds = %74, %69
  %101 = load i32, i32* @BINDER_STAT_REF, align 4
  %102 = call i32 @binder_stats_deleted(i32 %101)
  ret void
}

declare dso_local i32 @binder_debug(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @binder_node_inner_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @binder_dec_node_nilocked(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @binder_node_inner_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @binder_dequeue_work(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @binder_stats_deleted(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

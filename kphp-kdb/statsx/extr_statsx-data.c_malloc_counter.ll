; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_malloc_counter.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_malloc_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i64, i32, i32, i32, i32, i32, i32, %struct.counter*, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Allocating new counter\0A\00", align 1
@tot_counters_allocated = common dso_local global i32 0, align 4
@default_timezone = common dso_local global i32 0, align 4
@create_day_start = common dso_local global i64 0, align 8
@now = common dso_local global i32 0, align 4
@auto_create_new_versions = common dso_local global i64 0, align 8
@custom_version_names = common dso_local global i64 0, align 8
@incr_version = common dso_local global i32 0, align 4
@FORCE_COUNTER_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"New counter allocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.counter* (%struct.counter*, i64)* @malloc_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.counter* @malloc_counter(%struct.counter* %0, i64 %1) #0 {
  %3 = alloca %struct.counter*, align 8
  %4 = alloca %struct.counter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.counter*, align 8
  store %struct.counter* %0, %struct.counter** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @verbosity, align 4
  %8 = icmp sge i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = call %struct.counter* @zzmalloc0(i32 48)
  store %struct.counter* %13, %struct.counter** %6, align 8
  %14 = load %struct.counter*, %struct.counter** %6, align 8
  %15 = icmp ne %struct.counter* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load %struct.counter*, %struct.counter** %6, align 8
  store %struct.counter* %17, %struct.counter** %3, align 8
  br label %108

18:                                               ; preds = %12
  %19 = load i32, i32* @tot_counters_allocated, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @tot_counters_allocated, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.counter*, %struct.counter** %6, align 8
  %23 = getelementptr inbounds %struct.counter, %struct.counter* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.counter*, %struct.counter** %6, align 8
  %25 = getelementptr inbounds %struct.counter, %struct.counter* %24, i32 0, i32 7
  store %struct.counter* null, %struct.counter** %25, align 8
  %26 = load i32, i32* @default_timezone, align 4
  %27 = load %struct.counter*, %struct.counter** %6, align 8
  %28 = getelementptr inbounds %struct.counter, %struct.counter* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 8
  %29 = load %struct.counter*, %struct.counter** %4, align 8
  %30 = icmp ne %struct.counter* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct.counter*, %struct.counter** %6, align 8
  %33 = load %struct.counter*, %struct.counter** %4, align 8
  %34 = call i32 @copy_ancestor(%struct.counter* %32, %struct.counter* %33)
  br label %35

35:                                               ; preds = %31, %18
  %36 = load i64, i64* @create_day_start, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, i32* @now, align 4
  %40 = load i32, i32* @now, align 4
  %41 = load %struct.counter*, %struct.counter** %6, align 8
  %42 = getelementptr inbounds %struct.counter, %struct.counter* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @tz_offset(i32 %43)
  %45 = add nsw i32 %40, %44
  %46 = srem i32 %45, 86400
  %47 = sub nsw i32 %39, %46
  %48 = load %struct.counter*, %struct.counter** %6, align 8
  %49 = getelementptr inbounds %struct.counter, %struct.counter* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %54

50:                                               ; preds = %35
  %51 = load i32, i32* @now, align 4
  %52 = load %struct.counter*, %struct.counter** %6, align 8
  %53 = getelementptr inbounds %struct.counter, %struct.counter* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %38
  %55 = load %struct.counter*, %struct.counter** %6, align 8
  %56 = getelementptr inbounds %struct.counter, %struct.counter* %55, i32 0, i32 2
  store i32 -1, i32* %56, align 4
  %57 = load %struct.counter*, %struct.counter** %6, align 8
  %58 = getelementptr inbounds %struct.counter, %struct.counter* %57, i32 0, i32 3
  store i32 -1, i32* %58, align 8
  %59 = load %struct.counter*, %struct.counter** %6, align 8
  %60 = getelementptr inbounds %struct.counter, %struct.counter* %59, i32 0, i32 4
  store i32 -1, i32* %60, align 4
  %61 = load i64, i64* @auto_create_new_versions, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %54
  %64 = load i32, i32* @now, align 4
  %65 = load i32, i32* @now, align 4
  %66 = load %struct.counter*, %struct.counter** %6, align 8
  %67 = getelementptr inbounds %struct.counter, %struct.counter* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @tz_offset(i32 %68)
  %70 = add nsw i32 %65, %69
  %71 = srem i32 %70, 86400
  %72 = sub nsw i32 %64, %71
  %73 = add nsw i32 %72, 86400
  %74 = load %struct.counter*, %struct.counter** %6, align 8
  %75 = getelementptr inbounds %struct.counter, %struct.counter* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  br label %79

76:                                               ; preds = %54
  %77 = load %struct.counter*, %struct.counter** %6, align 8
  %78 = getelementptr inbounds %struct.counter, %struct.counter* %77, i32 0, i32 5
  store i32 2147483647, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %63
  %80 = load i64, i64* @custom_version_names, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* @incr_version, align 4
  %84 = load %struct.counter*, %struct.counter** %6, align 8
  %85 = getelementptr inbounds %struct.counter, %struct.counter* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = load %struct.counter*, %struct.counter** %4, align 8
  %88 = load %struct.counter*, %struct.counter** %6, align 8
  %89 = getelementptr inbounds %struct.counter, %struct.counter* %88, i32 0, i32 7
  store %struct.counter* %87, %struct.counter** %89, align 8
  %90 = load %struct.counter*, %struct.counter** %4, align 8
  %91 = icmp ne %struct.counter* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i64, i64* @FORCE_COUNTER_TYPE, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92, %86
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @get_cnt_type(i64 %96)
  %98 = load %struct.counter*, %struct.counter** %6, align 8
  %99 = getelementptr inbounds %struct.counter, %struct.counter* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %95, %92
  %101 = load i32, i32* @verbosity, align 4
  %102 = icmp sge i32 %101, 4
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @stderr, align 4
  %105 = call i32 @fprintf(i32 %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.counter*, %struct.counter** %6, align 8
  store %struct.counter* %107, %struct.counter** %3, align 8
  br label %108

108:                                              ; preds = %106, %16
  %109 = load %struct.counter*, %struct.counter** %3, align 8
  ret %struct.counter* %109
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.counter* @zzmalloc0(i32) #1

declare dso_local i32 @copy_ancestor(%struct.counter*, %struct.counter*) #1

declare dso_local i32 @tz_offset(i32) #1

declare dso_local i32 @get_cnt_type(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

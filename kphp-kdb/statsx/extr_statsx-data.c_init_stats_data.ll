; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_init_stats_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_init_stats_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { %struct.counter*, %struct.counter* }

@init_stats_data.initialized = internal global i32 0, align 4
@reverse_index_mode = common dso_local global i32 0, align 4
@stats_replay_logevent = common dso_local global i32 0, align 4
@replay_logevent = common dso_local global i32 0, align 4
@stats_replay_logevent_reverse = common dso_local global i32 0, align 4
@counters_commit_head = common dso_local global i64 0, align 8
@max_counters = common dso_local global double 0.000000e+00, align 8
@counters_prime = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"max_counters: %d, counters_prime: %d\0A\00", align 1
@Counters = common dso_local global %struct.counter** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_stats_data(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.counter*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @init_stats_data.initialized, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

8:                                                ; preds = %1
  store i32 1, i32* @init_stats_data.initialized, align 4
  %9 = load i32, i32* @reverse_index_mode, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @stats_replay_logevent, align 4
  store i32 %12, i32* @replay_logevent, align 4
  br label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @stats_replay_logevent_reverse, align 4
  store i32 %14, i32* @replay_logevent, align 4
  br label %15

15:                                               ; preds = %13, %11
  store i64 0, i64* @counters_commit_head, align 8
  %16 = load double, double* @max_counters, align 8
  %17 = fmul double %16, 1.500000e+00
  %18 = call i32 @am_choose_hash_prime(double %17)
  store i32 %18, i32* @counters_prime, align 4
  %19 = load double, double* @max_counters, align 8
  %20 = load i32, i32* @counters_prime, align 4
  %21 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), double %19, i32 %20)
  %22 = load i32, i32* @counters_prime, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = call i8* @zzmalloc0(i32 %26)
  %28 = bitcast i8* %27 to %struct.counter**
  store %struct.counter** %28, %struct.counter*** @Counters, align 8
  %29 = call i8* @zzmalloc0(i32 16)
  %30 = bitcast i8* %29 to %struct.counter*
  store %struct.counter* %30, %struct.counter** %4, align 8
  %31 = load %struct.counter**, %struct.counter*** @Counters, align 8
  %32 = load i32, i32* @counters_prime, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.counter*, %struct.counter** %31, i64 %33
  store %struct.counter* %30, %struct.counter** %34, align 8
  %35 = load %struct.counter*, %struct.counter** %4, align 8
  %36 = icmp ne %struct.counter* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.counter*, %struct.counter** %4, align 8
  %40 = load %struct.counter*, %struct.counter** %4, align 8
  %41 = getelementptr inbounds %struct.counter, %struct.counter* %40, i32 0, i32 1
  store %struct.counter* %39, %struct.counter** %41, align 8
  %42 = load %struct.counter*, %struct.counter** %4, align 8
  %43 = load %struct.counter*, %struct.counter** %4, align 8
  %44 = getelementptr inbounds %struct.counter, %struct.counter* %43, i32 0, i32 0
  store %struct.counter* %42, %struct.counter** %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %15, %7
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @am_choose_hash_prime(double) #1

declare dso_local i32 @vkprintf(i32, i8*, double, i32) #1

declare dso_local i8* @zzmalloc0(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

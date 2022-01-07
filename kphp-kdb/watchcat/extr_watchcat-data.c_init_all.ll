; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_init_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.TYPE_3__* }

@h_watchcat = common dso_local global i32 0, align 4
@h_watchcat_q = common dso_local global i32 0, align 4
@TIME_TABLE_SIZE = common dso_local global i32 0, align 4
@time_st = common dso_local global %struct.TYPE_3__** null, align 8
@keys_cnt = common dso_local global i64 0, align 8
@keys_memory = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@last_del_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_all() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @hset_llp_init(i32* @h_watchcat)
  %3 = call i32 @hset_llp_init(i32* @h_watchcat_q)
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %31, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @TIME_TABLE_SIZE, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %34

8:                                                ; preds = %4
  %9 = call %struct.TYPE_3__* (...) @alloc_wkey()
  %10 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @time_st, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %10, i64 %12
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %13, align 8
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @time_st, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @time_st, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %24, align 8
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @time_st, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %25, i64 %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %30, align 8
  br label %31

31:                                               ; preds = %8
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %4

34:                                               ; preds = %4
  store i64 0, i64* @keys_cnt, align 8
  store i64 0, i64* @keys_memory, align 8
  %35 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %36 = call i32 @get_utime(i32 %35)
  %37 = call i32 @GET_TIME_ID(i32 %36)
  store i32 %37, i32* @last_del_time, align 4
  ret void
}

declare dso_local i32 @hset_llp_init(i32*) #1

declare dso_local %struct.TYPE_3__* @alloc_wkey(...) #1

declare dso_local i32 @GET_TIME_ID(i32) #1

declare dso_local i32 @get_utime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

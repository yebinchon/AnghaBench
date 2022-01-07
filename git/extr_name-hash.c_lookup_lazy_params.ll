; ModuleID = '/home/carl/AnghaBench/git/extr_name-hash.c_lookup_lazy_params.c'
source_filename = "/home/carl/AnghaBench/git/extr_name-hash.c_lookup_lazy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }

@lazy_nr_dir_threads = common dso_local global i32 0, align 4
@lazy_try_threaded = common dso_local global i32 0, align 4
@ignore_case = common dso_local global i32 0, align 4
@LAZY_THREAD_COST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*)* @lookup_lazy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_lazy_params(%struct.index_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.index_state*, align 8
  %4 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %3, align 8
  store i32 0, i32* @lazy_nr_dir_threads, align 4
  %5 = load i32, i32* @lazy_try_threaded, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

8:                                                ; preds = %1
  %9 = load i32, i32* @ignore_case, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %42

12:                                               ; preds = %8
  %13 = call i32 (...) @online_cpus()
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %42

17:                                               ; preds = %12
  %18 = load %struct.index_state*, %struct.index_state** %3, align 8
  %19 = getelementptr inbounds %struct.index_state, %struct.index_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LAZY_THREAD_COST, align 4
  %22 = mul nsw i32 2, %21
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %42

25:                                               ; preds = %17
  %26 = load %struct.index_state*, %struct.index_state** %3, align 8
  %27 = getelementptr inbounds %struct.index_state, %struct.index_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @LAZY_THREAD_COST, align 4
  %31 = mul nsw i32 %29, %30
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.index_state*, %struct.index_state** %3, align 8
  %35 = getelementptr inbounds %struct.index_state, %struct.index_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @LAZY_THREAD_COST, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %25
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* @lazy_nr_dir_threads, align 4
  %41 = load i32, i32* @lazy_nr_dir_threads, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %24, %16, %11, %7
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

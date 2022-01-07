; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_forth_request_run_output_gc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_forth_request_run_output_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_request = type { i64, %struct.forth_request* }

@with_output_free_list = common dso_local global %struct.forth_request zeroinitializer, align 8
@now = common dso_local global i64 0, align 8
@all_results_memory = common dso_local global i64 0, align 8
@max_all_results = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @forth_request_run_output_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @forth_request_run_output_gc() #0 {
  %1 = alloca %struct.forth_request*, align 8
  %2 = alloca %struct.forth_request*, align 8
  %3 = load %struct.forth_request*, %struct.forth_request** getelementptr inbounds (%struct.forth_request, %struct.forth_request* @with_output_free_list, i32 0, i32 1), align 8
  store %struct.forth_request* %3, %struct.forth_request** %1, align 8
  br label %4

4:                                                ; preds = %20, %0
  %5 = load %struct.forth_request*, %struct.forth_request** %1, align 8
  %6 = icmp ne %struct.forth_request* %5, @with_output_free_list
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load i64, i64* @now, align 8
  %9 = load %struct.forth_request*, %struct.forth_request** %1, align 8
  %10 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %22

14:                                               ; preds = %7
  %15 = load %struct.forth_request*, %struct.forth_request** %1, align 8
  %16 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %15, i32 0, i32 1
  %17 = load %struct.forth_request*, %struct.forth_request** %16, align 8
  store %struct.forth_request* %17, %struct.forth_request** %2, align 8
  %18 = load %struct.forth_request*, %struct.forth_request** %1, align 8
  %19 = call i32 @forth_request_unload_prog(%struct.forth_request* %18)
  br label %20

20:                                               ; preds = %14
  %21 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  store %struct.forth_request* %21, %struct.forth_request** %1, align 8
  br label %4

22:                                               ; preds = %13, %4
  %23 = load %struct.forth_request*, %struct.forth_request** getelementptr inbounds (%struct.forth_request, %struct.forth_request* @with_output_free_list, i32 0, i32 1), align 8
  store %struct.forth_request* %23, %struct.forth_request** %1, align 8
  br label %24

24:                                               ; preds = %39, %22
  %25 = load i64, i64* @all_results_memory, align 8
  %26 = load i64, i64* @max_all_results, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.forth_request*, %struct.forth_request** %1, align 8
  %30 = icmp ne %struct.forth_request* %29, @with_output_free_list
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi i1 [ false, %24 ], [ %30, %28 ]
  br i1 %32, label %33, label %41

33:                                               ; preds = %31
  %34 = load %struct.forth_request*, %struct.forth_request** %1, align 8
  %35 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %34, i32 0, i32 1
  %36 = load %struct.forth_request*, %struct.forth_request** %35, align 8
  store %struct.forth_request* %36, %struct.forth_request** %2, align 8
  %37 = load %struct.forth_request*, %struct.forth_request** %1, align 8
  %38 = call i32 @forth_request_unload_prog(%struct.forth_request* %37)
  br label %39

39:                                               ; preds = %33
  %40 = load %struct.forth_request*, %struct.forth_request** %2, align 8
  store %struct.forth_request* %40, %struct.forth_request** %1, align 8
  br label %24

41:                                               ; preds = %31
  ret void
}

declare dso_local i32 @forth_request_unload_prog(%struct.forth_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

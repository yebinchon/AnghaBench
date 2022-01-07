; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_add_fetch_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_add_fetch_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transfer_request = type { %struct.transfer_request*, i32, i32*, i32*, i32*, %struct.object* }
%struct.object = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@remote_dir_exists = common dso_local global i32* null, align 8
@LOCAL = common dso_local global i32 0, align 4
@FETCHING = common dso_local global i32 0, align 4
@NEED_FETCH = common dso_local global i32 0, align 4
@request_queue_head = common dso_local global %struct.transfer_request* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*)* @add_fetch_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_fetch_request(%struct.object* %0) #0 {
  %2 = alloca %struct.object*, align 8
  %3 = alloca %struct.transfer_request*, align 8
  store %struct.object* %0, %struct.object** %2, align 8
  %4 = call i32 (...) @check_locks()
  %5 = load i32*, i32** @remote_dir_exists, align 8
  %6 = load %struct.object*, %struct.object** %2, align 8
  %7 = getelementptr inbounds %struct.object, %struct.object* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %5, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.object*, %struct.object** %2, align 8
  %17 = getelementptr inbounds %struct.object, %struct.object* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @get_remote_object_list(i64 %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.object*, %struct.object** %2, align 8
  %25 = getelementptr inbounds %struct.object, %struct.object* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @LOCAL, align 4
  %28 = load i32, i32* @FETCHING, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %56

33:                                               ; preds = %23
  %34 = load i32, i32* @FETCHING, align 4
  %35 = load %struct.object*, %struct.object** %2, align 8
  %36 = getelementptr inbounds %struct.object, %struct.object* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = call %struct.transfer_request* @xmalloc(i32 48)
  store %struct.transfer_request* %39, %struct.transfer_request** %3, align 8
  %40 = load %struct.object*, %struct.object** %2, align 8
  %41 = load %struct.transfer_request*, %struct.transfer_request** %3, align 8
  %42 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %41, i32 0, i32 5
  store %struct.object* %40, %struct.object** %42, align 8
  %43 = load %struct.transfer_request*, %struct.transfer_request** %3, align 8
  %44 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %43, i32 0, i32 4
  store i32* null, i32** %44, align 8
  %45 = load %struct.transfer_request*, %struct.transfer_request** %3, align 8
  %46 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  %47 = load %struct.transfer_request*, %struct.transfer_request** %3, align 8
  %48 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %47, i32 0, i32 2
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* @NEED_FETCH, align 4
  %50 = load %struct.transfer_request*, %struct.transfer_request** %3, align 8
  %51 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.transfer_request*, %struct.transfer_request** @request_queue_head, align 8
  %53 = load %struct.transfer_request*, %struct.transfer_request** %3, align 8
  %54 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %53, i32 0, i32 0
  store %struct.transfer_request* %52, %struct.transfer_request** %54, align 8
  %55 = load %struct.transfer_request*, %struct.transfer_request** %3, align 8
  store %struct.transfer_request* %55, %struct.transfer_request** @request_queue_head, align 8
  br label %56

56:                                               ; preds = %33, %32
  ret void
}

declare dso_local i32 @check_locks(...) #1

declare dso_local i32 @get_remote_object_list(i64) #1

declare dso_local %struct.transfer_request* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

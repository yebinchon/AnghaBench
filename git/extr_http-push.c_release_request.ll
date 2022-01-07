; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_release_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_release_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transfer_request = type { %struct.transfer_request*, %struct.transfer_request* }

@request_queue_head = common dso_local global %struct.transfer_request* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transfer_request*)* @release_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_request(%struct.transfer_request* %0) #0 {
  %2 = alloca %struct.transfer_request*, align 8
  %3 = alloca %struct.transfer_request*, align 8
  store %struct.transfer_request* %0, %struct.transfer_request** %2, align 8
  %4 = load %struct.transfer_request*, %struct.transfer_request** @request_queue_head, align 8
  store %struct.transfer_request* %4, %struct.transfer_request** %3, align 8
  %5 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %6 = load %struct.transfer_request*, %struct.transfer_request** @request_queue_head, align 8
  %7 = icmp eq %struct.transfer_request* %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %10 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %9, i32 0, i32 1
  %11 = load %struct.transfer_request*, %struct.transfer_request** %10, align 8
  store %struct.transfer_request* %11, %struct.transfer_request** @request_queue_head, align 8
  br label %38

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %24, %12
  %14 = load %struct.transfer_request*, %struct.transfer_request** %3, align 8
  %15 = icmp ne %struct.transfer_request* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.transfer_request*, %struct.transfer_request** %3, align 8
  %18 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %17, i32 0, i32 1
  %19 = load %struct.transfer_request*, %struct.transfer_request** %18, align 8
  %20 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %21 = icmp ne %struct.transfer_request* %19, %20
  br label %22

22:                                               ; preds = %16, %13
  %23 = phi i1 [ false, %13 ], [ %21, %16 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = load %struct.transfer_request*, %struct.transfer_request** %3, align 8
  %26 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %25, i32 0, i32 1
  %27 = load %struct.transfer_request*, %struct.transfer_request** %26, align 8
  store %struct.transfer_request* %27, %struct.transfer_request** %3, align 8
  br label %13

28:                                               ; preds = %22
  %29 = load %struct.transfer_request*, %struct.transfer_request** %3, align 8
  %30 = icmp ne %struct.transfer_request* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %33 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %32, i32 0, i32 1
  %34 = load %struct.transfer_request*, %struct.transfer_request** %33, align 8
  %35 = load %struct.transfer_request*, %struct.transfer_request** %3, align 8
  %36 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %35, i32 0, i32 1
  store %struct.transfer_request* %34, %struct.transfer_request** %36, align 8
  br label %37

37:                                               ; preds = %31, %28
  br label %38

38:                                               ; preds = %37, %8
  %39 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %40 = getelementptr inbounds %struct.transfer_request, %struct.transfer_request* %39, i32 0, i32 0
  %41 = load %struct.transfer_request*, %struct.transfer_request** %40, align 8
  %42 = call i32 @free(%struct.transfer_request* %41)
  %43 = load %struct.transfer_request*, %struct.transfer_request** %2, align 8
  %44 = call i32 @free(%struct.transfer_request* %43)
  ret void
}

declare dso_local i32 @free(%struct.transfer_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

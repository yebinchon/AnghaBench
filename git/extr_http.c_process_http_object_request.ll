; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_process_http_object_request.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_process_http_object_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_object_request = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_http_object_request(%struct.http_object_request* %0) #0 {
  %2 = alloca %struct.http_object_request*, align 8
  store %struct.http_object_request* %0, %struct.http_object_request** %2, align 8
  %3 = load %struct.http_object_request*, %struct.http_object_request** %2, align 8
  %4 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp eq %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.http_object_request*, %struct.http_object_request** %2, align 8
  %10 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.http_object_request*, %struct.http_object_request** %2, align 8
  %15 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.http_object_request*, %struct.http_object_request** %2, align 8
  %17 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.http_object_request*, %struct.http_object_request** %2, align 8
  %22 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.http_object_request*, %struct.http_object_request** %2, align 8
  %24 = getelementptr inbounds %struct.http_object_request, %struct.http_object_request* %23, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %24, align 8
  br label %25

25:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

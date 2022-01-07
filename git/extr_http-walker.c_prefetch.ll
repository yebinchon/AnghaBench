; ModuleID = '/home/carl/AnghaBench/git/extr_http-walker.c_prefetch.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-walker.c_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walker = type { i32, %struct.walker_data* }
%struct.walker_data = type { i32 }
%struct.object_request = type { i32, i32*, i32, i32, %struct.TYPE_2__, %struct.walker* }
%struct.TYPE_2__ = type { i32 }

@WAITING = common dso_local global i32 0, align 4
@http_is_verbose = common dso_local global i32 0, align 4
@object_queue_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.walker*, i8*)* @prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prefetch(%struct.walker* %0, i8* %1) #0 {
  %3 = alloca %struct.walker*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_request*, align 8
  %6 = alloca %struct.walker_data*, align 8
  store %struct.walker* %0, %struct.walker** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.walker*, %struct.walker** %3, align 8
  %8 = getelementptr inbounds %struct.walker, %struct.walker* %7, i32 0, i32 1
  %9 = load %struct.walker_data*, %struct.walker_data** %8, align 8
  store %struct.walker_data* %9, %struct.walker_data** %6, align 8
  %10 = call %struct.object_request* @xmalloc(i32 40)
  store %struct.object_request* %10, %struct.object_request** %5, align 8
  %11 = load %struct.walker*, %struct.walker** %3, align 8
  %12 = load %struct.object_request*, %struct.object_request** %5, align 8
  %13 = getelementptr inbounds %struct.object_request, %struct.object_request* %12, i32 0, i32 5
  store %struct.walker* %11, %struct.walker** %13, align 8
  %14 = load %struct.object_request*, %struct.object_request** %5, align 8
  %15 = getelementptr inbounds %struct.object_request, %struct.object_request* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @hashcpy(i32 %17, i8* %18)
  %20 = load %struct.walker_data*, %struct.walker_data** %6, align 8
  %21 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.object_request*, %struct.object_request** %5, align 8
  %24 = getelementptr inbounds %struct.object_request, %struct.object_request* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @WAITING, align 4
  %26 = load %struct.object_request*, %struct.object_request** %5, align 8
  %27 = getelementptr inbounds %struct.object_request, %struct.object_request* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.object_request*, %struct.object_request** %5, align 8
  %29 = getelementptr inbounds %struct.object_request, %struct.object_request* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.walker*, %struct.walker** %3, align 8
  %31 = getelementptr inbounds %struct.walker, %struct.walker* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* @http_is_verbose, align 4
  %33 = load %struct.object_request*, %struct.object_request** %5, align 8
  %34 = getelementptr inbounds %struct.object_request, %struct.object_request* %33, i32 0, i32 0
  %35 = call i32 @list_add_tail(i32* %34, i32* @object_queue_head)
  ret void
}

declare dso_local %struct.object_request* @xmalloc(i32) #1

declare dso_local i32 @hashcpy(i32, i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

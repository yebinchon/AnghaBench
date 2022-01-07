; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_attempt_back_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_attempt_back_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.request* @attempt_back_merge(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %8 = load %struct.request*, %struct.request** %5, align 8
  %9 = call %struct.request* @elv_latter_request(%struct.request_queue* %7, %struct.request* %8)
  store %struct.request* %9, %struct.request** %6, align 8
  %10 = load %struct.request*, %struct.request** %6, align 8
  %11 = icmp ne %struct.request* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %14 = load %struct.request*, %struct.request** %5, align 8
  %15 = load %struct.request*, %struct.request** %6, align 8
  %16 = call %struct.request* @attempt_merge(%struct.request_queue* %13, %struct.request* %14, %struct.request* %15)
  store %struct.request* %16, %struct.request** %3, align 8
  br label %18

17:                                               ; preds = %2
  store %struct.request* null, %struct.request** %3, align 8
  br label %18

18:                                               ; preds = %17, %12
  %19 = load %struct.request*, %struct.request** %3, align 8
  ret %struct.request* %19
}

declare dso_local %struct.request* @elv_latter_request(%struct.request_queue*, %struct.request*) #1

declare dso_local %struct.request* @attempt_merge(%struct.request_queue*, %struct.request*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blk_req_needs_zone_write_lock.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blk_req_needs_zone_write_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_req_needs_zone_write_lock(%struct.request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  %4 = load %struct.request*, %struct.request** %3, align 8
  %5 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.request*, %struct.request** %3, align 8
  %13 = call i64 @blk_rq_is_passthrough(%struct.request* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %23

16:                                               ; preds = %11
  %17 = load %struct.request*, %struct.request** %3, align 8
  %18 = call i32 @req_op(%struct.request* %17)
  switch i32 %18, label %22 [
    i32 128, label %19
    i32 129, label %19
    i32 130, label %19
  ]

19:                                               ; preds = %16, %16, %16
  %20 = load %struct.request*, %struct.request** %3, align 8
  %21 = call i32 @blk_rq_zone_is_seq(%struct.request* %20)
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %19, %15, %10
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local i32 @req_op(%struct.request*) #1

declare dso_local i32 @blk_rq_zone_is_seq(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

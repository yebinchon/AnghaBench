; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_class_idx.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_class_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_entity = type { i32 }
%struct.bfq_queue = type { i32 }

@BFQ_DEFAULT_GRP_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfq_entity*)* @bfq_class_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfq_class_idx(%struct.bfq_entity* %0) #0 {
  %2 = alloca %struct.bfq_entity*, align 8
  %3 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_entity* %0, %struct.bfq_entity** %2, align 8
  %4 = load %struct.bfq_entity*, %struct.bfq_entity** %2, align 8
  %5 = call %struct.bfq_queue* @bfq_entity_to_bfqq(%struct.bfq_entity* %4)
  store %struct.bfq_queue* %5, %struct.bfq_queue** %3, align 8
  %6 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %7 = icmp ne %struct.bfq_queue* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.bfq_queue*, %struct.bfq_queue** %3, align 8
  %10 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %11, 1
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @BFQ_DEFAULT_GRP_CLASS, align 4
  %15 = sub nsw i32 %14, 1
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi i32 [ %12, %8 ], [ %15, %13 ]
  ret i32 %17
}

declare dso_local %struct.bfq_queue* @bfq_entity_to_bfqq(%struct.bfq_entity*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

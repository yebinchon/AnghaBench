; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_forget_entity.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_forget_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_service_tree = type { i32 }
%struct.bfq_entity = type { i32, i64 }
%struct.bfq_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_service_tree*, %struct.bfq_entity*, i32)* @bfq_forget_entity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_forget_entity(%struct.bfq_service_tree* %0, %struct.bfq_entity* %1, i32 %2) #0 {
  %4 = alloca %struct.bfq_service_tree*, align 8
  %5 = alloca %struct.bfq_entity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_service_tree* %0, %struct.bfq_service_tree** %4, align 8
  store %struct.bfq_entity* %1, %struct.bfq_entity** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bfq_entity*, %struct.bfq_entity** %5, align 8
  %9 = call %struct.bfq_queue* @bfq_entity_to_bfqq(%struct.bfq_entity* %8)
  store %struct.bfq_queue* %9, %struct.bfq_queue** %7, align 8
  %10 = load %struct.bfq_entity*, %struct.bfq_entity** %5, align 8
  %11 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.bfq_entity*, %struct.bfq_entity** %5, align 8
  %13 = getelementptr inbounds %struct.bfq_entity, %struct.bfq_entity* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bfq_service_tree*, %struct.bfq_service_tree** %4, align 8
  %16 = getelementptr inbounds %struct.bfq_service_tree, %struct.bfq_service_tree* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = sub nsw i64 %18, %14
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %22 = icmp ne %struct.bfq_queue* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load %struct.bfq_queue*, %struct.bfq_queue** %7, align 8
  %28 = call i32 @bfq_put_queue(%struct.bfq_queue* %27)
  br label %29

29:                                               ; preds = %26, %23, %3
  ret void
}

declare dso_local %struct.bfq_queue* @bfq_entity_to_bfqq(%struct.bfq_entity*) #1

declare dso_local i32 @bfq_put_queue(%struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_del_bfqq_busy.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_del_bfqq_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32, i32* }
%struct.bfq_queue = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"del from busy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfq_del_bfqq_busy(%struct.bfq_data* %0, %struct.bfq_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.bfq_data*, align 8
  %5 = alloca %struct.bfq_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.bfq_data* %0, %struct.bfq_data** %4, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %8 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %9 = call i32 @bfq_log_bfqq(%struct.bfq_data* %7, %struct.bfq_queue* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %11 = call i32 @bfq_clear_bfqq_busy(%struct.bfq_queue* %10)
  %12 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %13 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %16 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %14, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %24 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %29 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %27, %3
  %33 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %34 = call i32 @bfqq_group(%struct.bfq_queue* %33)
  %35 = call i32 @bfqg_stats_update_dequeue(i32 %34)
  %36 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %37 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @bfq_deactivate_bfqq(%struct.bfq_data* %36, %struct.bfq_queue* %37, i32 1, i32 %38)
  %40 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %41 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %32
  %45 = load %struct.bfq_data*, %struct.bfq_data** %4, align 8
  %46 = load %struct.bfq_queue*, %struct.bfq_queue** %5, align 8
  %47 = call i32 @bfq_weights_tree_remove(%struct.bfq_data* %45, %struct.bfq_queue* %46)
  br label %48

48:                                               ; preds = %44, %32
  ret void
}

declare dso_local i32 @bfq_log_bfqq(%struct.bfq_data*, %struct.bfq_queue*, i8*) #1

declare dso_local i32 @bfq_clear_bfqq_busy(%struct.bfq_queue*) #1

declare dso_local i32 @bfqg_stats_update_dequeue(i32) #1

declare dso_local i32 @bfqq_group(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_deactivate_bfqq(%struct.bfq_data*, %struct.bfq_queue*, i32, i32) #1

declare dso_local i32 @bfq_weights_tree_remove(%struct.bfq_data*, %struct.bfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

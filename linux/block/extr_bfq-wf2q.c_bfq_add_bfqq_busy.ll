; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_add_bfqq_busy.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_add_bfqq_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32, i32, i32* }
%struct.bfq_queue = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"add to busy\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfq_add_bfqq_busy(%struct.bfq_data* %0, %struct.bfq_queue* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.bfq_queue*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.bfq_queue* %1, %struct.bfq_queue** %4, align 8
  %5 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %6 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %7 = call i32 @bfq_log_bfqq(%struct.bfq_data* %5, %struct.bfq_queue* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %9 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %10 = call i32 @bfq_activate_bfqq(%struct.bfq_data* %8, %struct.bfq_queue* %9)
  %11 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %12 = call i32 @bfq_mark_bfqq_busy(%struct.bfq_queue* %11)
  %13 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %14 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %17 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %25 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %2
  %29 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %30 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %35 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %36 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %37 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %36, i32 0, i32 1
  %38 = call i32 @bfq_weights_tree_add(%struct.bfq_data* %34, %struct.bfq_queue* %35, i32* %37)
  br label %39

39:                                               ; preds = %33, %28
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.bfq_queue*, %struct.bfq_queue** %4, align 8
  %42 = getelementptr inbounds %struct.bfq_queue, %struct.bfq_queue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %47 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @bfq_log_bfqq(%struct.bfq_data*, %struct.bfq_queue*, i8*) #1

declare dso_local i32 @bfq_activate_bfqq(%struct.bfq_data*, %struct.bfq_queue*) #1

declare dso_local i32 @bfq_mark_bfqq_busy(%struct.bfq_queue*) #1

declare dso_local i32 @bfq_weights_tree_add(%struct.bfq_data*, %struct.bfq_queue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

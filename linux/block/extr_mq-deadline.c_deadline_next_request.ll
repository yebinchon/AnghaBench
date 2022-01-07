; ModuleID = '/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_deadline_next_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_deadline_next_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.deadline_data = type { i32, %struct.request** }

@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.deadline_data*, i32)* @deadline_next_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @deadline_next_request(%struct.deadline_data* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.deadline_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.request*, align 8
  %7 = alloca i64, align 8
  store %struct.deadline_data* %0, %struct.deadline_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @READ, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @WRITE, align 4
  %14 = icmp ne i32 %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ false, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON_ONCE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store %struct.request* null, %struct.request** %3, align 8
  br label %66

21:                                               ; preds = %15
  %22 = load %struct.deadline_data*, %struct.deadline_data** %4, align 8
  %23 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %22, i32 0, i32 1
  %24 = load %struct.request**, %struct.request*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.request*, %struct.request** %24, i64 %26
  %28 = load %struct.request*, %struct.request** %27, align 8
  store %struct.request* %28, %struct.request** %6, align 8
  %29 = load %struct.request*, %struct.request** %6, align 8
  %30 = icmp ne %struct.request* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  store %struct.request* null, %struct.request** %3, align 8
  br label %66

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @READ, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load %struct.request*, %struct.request** %6, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @blk_queue_is_zoned(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %36, %32
  %43 = load %struct.request*, %struct.request** %6, align 8
  store %struct.request* %43, %struct.request** %3, align 8
  br label %66

44:                                               ; preds = %36
  %45 = load %struct.deadline_data*, %struct.deadline_data** %4, align 8
  %46 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %45, i32 0, i32 0
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %57, %44
  %50 = load %struct.request*, %struct.request** %6, align 8
  %51 = icmp ne %struct.request* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.request*, %struct.request** %6, align 8
  %54 = call i64 @blk_req_can_dispatch_to_zone(%struct.request* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %60

57:                                               ; preds = %52
  %58 = load %struct.request*, %struct.request** %6, align 8
  %59 = call %struct.request* @deadline_latter_request(%struct.request* %58)
  store %struct.request* %59, %struct.request** %6, align 8
  br label %49

60:                                               ; preds = %56, %49
  %61 = load %struct.deadline_data*, %struct.deadline_data** %4, align 8
  %62 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %61, i32 0, i32 0
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load %struct.request*, %struct.request** %6, align 8
  store %struct.request* %65, %struct.request** %3, align 8
  br label %66

66:                                               ; preds = %60, %42, %31, %20
  %67 = load %struct.request*, %struct.request** %3, align 8
  ret %struct.request* %67
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @blk_queue_is_zoned(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @blk_req_can_dispatch_to_zone(%struct.request*) #1

declare dso_local %struct.request* @deadline_latter_request(%struct.request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_allow_bio_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_allow_bio_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bfq_data* }
%struct.bfq_data = type { %struct.bfq_queue*, i32 }
%struct.bfq_queue = type { i32 }
%struct.request = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*, %struct.bio*)* @bfq_allow_bio_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfq_allow_bio_merge(%struct.request_queue* %0, %struct.request* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.bfq_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bfq_queue*, align 8
  %11 = alloca %struct.bfq_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %12 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.bfq_data*, %struct.bfq_data** %15, align 8
  store %struct.bfq_data* %16, %struct.bfq_data** %8, align 8
  %17 = load %struct.bio*, %struct.bio** %7, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @op_is_sync(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %22 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %21, i32 0, i32 0
  %23 = load %struct.bfq_queue*, %struct.bfq_queue** %22, align 8
  store %struct.bfq_queue* %23, %struct.bfq_queue** %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.request*, %struct.request** %6, align 8
  %28 = call i32 @rq_is_sync(%struct.request* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %60

31:                                               ; preds = %26, %3
  %32 = load %struct.bfq_queue*, %struct.bfq_queue** %10, align 8
  %33 = icmp ne %struct.bfq_queue* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %60

35:                                               ; preds = %31
  %36 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %37 = load %struct.bfq_queue*, %struct.bfq_queue** %10, align 8
  %38 = load %struct.bio*, %struct.bio** %7, align 8
  %39 = call %struct.bfq_queue* @bfq_setup_cooperator(%struct.bfq_data* %36, %struct.bfq_queue* %37, %struct.bio* %38, i32 0)
  store %struct.bfq_queue* %39, %struct.bfq_queue** %11, align 8
  %40 = load %struct.bfq_queue*, %struct.bfq_queue** %11, align 8
  %41 = icmp ne %struct.bfq_queue* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %35
  %43 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %44 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %45 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.bfq_queue*, %struct.bfq_queue** %10, align 8
  %48 = load %struct.bfq_queue*, %struct.bfq_queue** %11, align 8
  %49 = call i32 @bfq_merge_bfqqs(%struct.bfq_data* %43, i32 %46, %struct.bfq_queue* %47, %struct.bfq_queue* %48)
  %50 = load %struct.bfq_queue*, %struct.bfq_queue** %11, align 8
  store %struct.bfq_queue* %50, %struct.bfq_queue** %10, align 8
  %51 = load %struct.bfq_queue*, %struct.bfq_queue** %10, align 8
  %52 = load %struct.bfq_data*, %struct.bfq_data** %8, align 8
  %53 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %52, i32 0, i32 0
  store %struct.bfq_queue* %51, %struct.bfq_queue** %53, align 8
  br label %54

54:                                               ; preds = %42, %35
  %55 = load %struct.bfq_queue*, %struct.bfq_queue** %10, align 8
  %56 = load %struct.request*, %struct.request** %6, align 8
  %57 = call %struct.bfq_queue* @RQ_BFQQ(%struct.request* %56)
  %58 = icmp eq %struct.bfq_queue* %55, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %54, %34, %30
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @op_is_sync(i32) #1

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local %struct.bfq_queue* @bfq_setup_cooperator(%struct.bfq_data*, %struct.bfq_queue*, %struct.bio*, i32) #1

declare dso_local i32 @bfq_merge_bfqqs(%struct.bfq_data*, i32, %struct.bfq_queue*, %struct.bfq_queue*) #1

declare dso_local %struct.bfq_queue* @RQ_BFQQ(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_bio_to_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_bio_to_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32 }
%struct.bio = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REQ_RAHEAD = common dso_local global i32 0, align 4
@REQ_FAILFAST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, %struct.bio*, i32)* @blk_mq_bio_to_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_bio_to_request(%struct.request* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bio*, %struct.bio** %5, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @REQ_RAHEAD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @REQ_FAILFAST_MASK, align 4
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.request*, %struct.request** %4, align 8
  %25 = getelementptr inbounds %struct.request, %struct.request* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.request*, %struct.request** %4, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.request*, %struct.request** %4, align 8
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @blk_rq_bio_prep(%struct.request* %31, %struct.bio* %32, i32 %33)
  %35 = load %struct.request*, %struct.request** %4, align 8
  %36 = call i32 @blk_account_io_start(%struct.request* %35, i32 1)
  ret void
}

declare dso_local i32 @blk_rq_bio_prep(%struct.request*, %struct.bio*, i32) #1

declare dso_local i32 @blk_account_io_start(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

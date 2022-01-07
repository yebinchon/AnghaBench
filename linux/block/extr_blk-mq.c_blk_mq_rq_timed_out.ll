; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_rq_timed_out.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_rq_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.request*, i32)* }

@RQF_TIMED_OUT = common dso_local global i32 0, align 4
@BLK_EH_DONE = common dso_local global i32 0, align 4
@BLK_EH_RESET_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @blk_mq_rq_timed_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_rq_timed_out(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @RQF_TIMED_OUT, align 4
  %7 = load %struct.request*, %struct.request** %3, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 8
  %11 = load %struct.request*, %struct.request** %3, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.request*, i32)*, i32 (%struct.request*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.request*, i32)* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  %20 = load %struct.request*, %struct.request** %3, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.request*, i32)*, i32 (%struct.request*, i32)** %25, align 8
  %27 = load %struct.request*, %struct.request** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 %26(%struct.request* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @BLK_EH_DONE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  br label %43

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  %37 = icmp ne i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON_ONCE(i32 %38)
  br label %40

40:                                               ; preds = %34, %2
  %41 = load %struct.request*, %struct.request** %3, align 8
  %42 = call i32 @blk_add_timer(%struct.request* %41)
  br label %43

43:                                               ; preds = %40, %33
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @blk_add_timer(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

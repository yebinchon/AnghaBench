; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c___spu_add_to_rq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c___spu_add_to_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.spu_context = type { i64, i32 }

@spu_prio = common dso_local global %struct.TYPE_2__* null, align 8
@spusched_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SPUSCHED_TICK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_context*)* @__spu_add_to_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__spu_add_to_rq(%struct.spu_context* %0) #0 {
  %2 = alloca %struct.spu_context*, align 8
  store %struct.spu_context* %0, %struct.spu_context** %2, align 8
  %3 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %4 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %3, i32 0, i32 1
  %5 = call i64 @list_empty(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %9 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_prio, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %14 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = call i32 @list_add_tail(i32* %9, i32* %16)
  %18 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %19 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_prio, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @set_bit(i64 %20, i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_prio, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %7
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* @SPUSCHED_TICK, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @mod_timer(i32* @spusched_timer, i64 %33)
  br label %35

35:                                               ; preds = %30, %7
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

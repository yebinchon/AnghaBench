; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c___spu_del_from_rq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_sched.c___spu_del_from_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.spu_context = type { i32, i32 }

@spu_prio = common dso_local global %struct.TYPE_2__* null, align 8
@spusched_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_context*)* @__spu_del_from_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__spu_del_from_rq(%struct.spu_context* %0) #0 {
  %2 = alloca %struct.spu_context*, align 8
  %3 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %2, align 8
  %4 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %5 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %8 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %7, i32 0, i32 1
  %9 = call i64 @list_empty(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_prio, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = call i32 @del_timer(i32* @spusched_timer)
  br label %19

19:                                               ; preds = %17, %11
  %20 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %21 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %20, i32 0, i32 1
  %22 = call i32 @list_del_init(i32* %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_prio, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i64 @list_empty(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spu_prio, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clear_bit(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %19
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

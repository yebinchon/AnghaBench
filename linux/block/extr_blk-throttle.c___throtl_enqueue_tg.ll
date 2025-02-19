; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c___throtl_enqueue_tg.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c___throtl_enqueue_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@THROTL_TG_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_grp*)* @__throtl_enqueue_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__throtl_enqueue_tg(%struct.throtl_grp* %0) #0 {
  %2 = alloca %struct.throtl_grp*, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %2, align 8
  %3 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %4 = call i32 @tg_service_queue_add(%struct.throtl_grp* %3)
  %5 = load i32, i32* @THROTL_TG_PENDING, align 4
  %6 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %7 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %11 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  ret void
}

declare dso_local i32 @tg_service_queue_add(%struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

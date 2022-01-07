; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_base_free_queues_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_base_free_queues_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32, i32, i32* }
%struct.event_callback = type { i32 }

@evcb_active_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*, i32)* @event_base_free_queues_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_base_free_queues_(%struct.event_base* %0, i32 %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.event_callback*, align 8
  %8 = alloca %struct.event_callback*, align 8
  %9 = alloca %struct.event_callback*, align 8
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %41, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.event_base*, %struct.event_base** %3, align 8
  %13 = getelementptr inbounds %struct.event_base, %struct.event_base* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %10
  %17 = load %struct.event_base*, %struct.event_base** %3, align 8
  %18 = getelementptr inbounds %struct.event_base, %struct.event_base* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call %struct.event_callback* @TAILQ_FIRST(i32* %22)
  store %struct.event_callback* %23, %struct.event_callback** %7, align 8
  br label %24

24:                                               ; preds = %27, %16
  %25 = load %struct.event_callback*, %struct.event_callback** %7, align 8
  %26 = icmp ne %struct.event_callback* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load %struct.event_callback*, %struct.event_callback** %7, align 8
  %29 = load i32, i32* @evcb_active_next, align 4
  %30 = call %struct.event_callback* @TAILQ_NEXT(%struct.event_callback* %28, i32 %29)
  store %struct.event_callback* %30, %struct.event_callback** %8, align 8
  %31 = load %struct.event_base*, %struct.event_base** %3, align 8
  %32 = load %struct.event_callback*, %struct.event_callback** %7, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @event_base_cancel_single_callback_(%struct.event_base* %31, %struct.event_callback* %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load %struct.event_callback*, %struct.event_callback** %8, align 8
  store %struct.event_callback* %39, %struct.event_callback** %7, align 8
  br label %24

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %10

44:                                               ; preds = %10
  br label %45

45:                                               ; preds = %50, %44
  %46 = load %struct.event_base*, %struct.event_base** %3, align 8
  %47 = getelementptr inbounds %struct.event_base, %struct.event_base* %46, i32 0, i32 1
  %48 = call %struct.event_callback* @TAILQ_FIRST(i32* %47)
  store %struct.event_callback* %48, %struct.event_callback** %9, align 8
  %49 = icmp ne %struct.event_callback* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.event_base*, %struct.event_base** %3, align 8
  %52 = load %struct.event_callback*, %struct.event_callback** %9, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @event_base_cancel_single_callback_(%struct.event_base* %51, %struct.event_callback* %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %45

59:                                               ; preds = %45
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.event_callback* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.event_callback* @TAILQ_NEXT(%struct.event_callback*, i32) #1

declare dso_local i64 @event_base_cancel_single_callback_(%struct.event_base*, %struct.event_callback*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

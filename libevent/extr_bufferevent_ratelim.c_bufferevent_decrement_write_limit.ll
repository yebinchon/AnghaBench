; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bufferevent_decrement_write_limit.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bufferevent_decrement_write_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_private = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@BEV_SUSPEND_BW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_decrement_write_limit(%struct.bufferevent* %0, i64 %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bufferevent_private*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %10 = call i32 @BEV_LOCK(%struct.bufferevent* %9)
  %11 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %12 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %11)
  store %struct.bufferevent_private* %12, %struct.bufferevent_private** %8, align 8
  %13 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %14 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %19 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br label %24

24:                                               ; preds = %17, %2
  %25 = phi i1 [ false, %2 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @EVUTIL_ASSERT(i32 %26)
  %28 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %29 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %36 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, %34
  store i64 %41, i64* %39, align 8
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %24
  %45 = load i64, i64* %7, align 8
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %49 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %50 = call i32 @bufferevent_suspend_write_(%struct.bufferevent* %48, i32 %49)
  %51 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %52 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %56 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = call i64 @event_add(i32* %54, i32* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  store i32 -1, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %47
  br label %89

65:                                               ; preds = %44, %24
  %66 = load i64, i64* %6, align 8
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load i64, i64* %7, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %73 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %71
  %79 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %80 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = call i32 @event_del(i32* %82)
  br label %84

84:                                               ; preds = %78, %71
  %85 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %86 = load i32, i32* @BEV_SUSPEND_BW, align 4
  %87 = call i32 @bufferevent_unsuspend_write_(%struct.bufferevent* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %68, %65
  br label %89

89:                                               ; preds = %88, %64
  %90 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %91 = call i32 @BEV_UNLOCK(%struct.bufferevent* %90)
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @bufferevent_suspend_write_(%struct.bufferevent*, i32) #1

declare dso_local i64 @event_add(i32*, i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @bufferevent_unsuspend_write_(%struct.bufferevent*, i32) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

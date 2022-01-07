; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bufferevent_remove_from_rate_limit_group_internal_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bufferevent_remove_from_rate_limit_group_internal_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bufferevent = type { i32 }
%struct.bufferevent_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bufferevent_rate_limit_group* }
%struct.bufferevent_rate_limit_group = type { i32 }

@rate_limiting = common dso_local global %struct.TYPE_4__* null, align 8
@BEV_SUSPEND_BW_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_remove_from_rate_limit_group_internal_(%struct.bufferevent* %0, i32 %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent_private*, align 8
  %6 = alloca %struct.bufferevent_rate_limit_group*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %8 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %7)
  store %struct.bufferevent_private* %8, %struct.bufferevent_private** %5, align 8
  %9 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %10 = call i32 @BEV_LOCK(%struct.bufferevent* %9)
  %11 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %12 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %17 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %19, align 8
  %21 = icmp ne %struct.bufferevent_rate_limit_group* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %15
  %23 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %24 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %26, align 8
  store %struct.bufferevent_rate_limit_group* %27, %struct.bufferevent_rate_limit_group** %6, align 8
  %28 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %29 = call i32 @LOCK_GROUP(%struct.bufferevent_rate_limit_group* %28)
  %30 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %31 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.bufferevent_rate_limit_group* null, %struct.bufferevent_rate_limit_group** %33, align 8
  %34 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %35 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rate_limiting, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @LIST_REMOVE(%struct.bufferevent_private* %38, i32 %41)
  %43 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %6, align 8
  %44 = call i32 @UNLOCK_GROUP(%struct.bufferevent_rate_limit_group* %43)
  br label %45

45:                                               ; preds = %22, %15, %2
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %50 = load i32, i32* @BEV_SUSPEND_BW_GROUP, align 4
  %51 = call i32 @bufferevent_unsuspend_read_(%struct.bufferevent* %49, i32 %50)
  %52 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %53 = load i32, i32* @BEV_SUSPEND_BW_GROUP, align 4
  %54 = call i32 @bufferevent_unsuspend_write_(%struct.bufferevent* %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %45
  %56 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %57 = call i32 @BEV_UNLOCK(%struct.bufferevent* %56)
  ret i32 0
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @LOCK_GROUP(%struct.bufferevent_rate_limit_group*) #1

declare dso_local i32 @LIST_REMOVE(%struct.bufferevent_private*, i32) #1

declare dso_local i32 @UNLOCK_GROUP(%struct.bufferevent_rate_limit_group*) #1

declare dso_local i32 @bufferevent_unsuspend_read_(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_unsuspend_write_(%struct.bufferevent*, i32) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

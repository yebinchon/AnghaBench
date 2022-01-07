; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bufferevent_add_to_rate_limit_group.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_ratelim.c_bufferevent_add_to_rate_limit_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bufferevent = type { i32 }
%struct.bufferevent_rate_limit_group = type { i32, i32, i32, i32 }
%struct.bufferevent_private = type { %struct.bufferevent_rate_limit* }
%struct.bufferevent_rate_limit = type { %struct.bufferevent_rate_limit_group*, i32 }

@EV_FINALIZE = common dso_local global i32 0, align 4
@bev_refill_callback_ = common dso_local global i32 0, align 4
@rate_limiting = common dso_local global %struct.TYPE_2__* null, align 8
@BEV_SUSPEND_BW_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_add_to_rate_limit_group(%struct.bufferevent* %0, %struct.bufferevent_rate_limit_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca %struct.bufferevent_rate_limit_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bufferevent_private*, align 8
  %9 = alloca %struct.bufferevent_rate_limit*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store %struct.bufferevent_rate_limit_group* %1, %struct.bufferevent_rate_limit_group** %5, align 8
  %10 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %11 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %10)
  store %struct.bufferevent_private* %11, %struct.bufferevent_private** %8, align 8
  %12 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %13 = call i32 @BEV_LOCK(%struct.bufferevent* %12)
  %14 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %15 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %14, i32 0, i32 0
  %16 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %15, align 8
  %17 = icmp ne %struct.bufferevent_rate_limit* %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %2
  %19 = call %struct.bufferevent_rate_limit* @mm_calloc(i32 1, i32 16)
  store %struct.bufferevent_rate_limit* %19, %struct.bufferevent_rate_limit** %9, align 8
  %20 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %9, align 8
  %21 = icmp ne %struct.bufferevent_rate_limit* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %24 = call i32 @BEV_UNLOCK(%struct.bufferevent* %23)
  store i32 -1, i32* %3, align 4
  br label %102

25:                                               ; preds = %18
  %26 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %9, align 8
  %27 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %26, i32 0, i32 1
  %28 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %29 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EV_FINALIZE, align 4
  %32 = load i32, i32* @bev_refill_callback_, align 4
  %33 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %34 = call i32 @event_assign(i32* %27, i32 %30, i32 -1, i32 %31, i32 %32, %struct.bufferevent_private* %33)
  %35 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %9, align 8
  %36 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %37 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %36, i32 0, i32 0
  store %struct.bufferevent_rate_limit* %35, %struct.bufferevent_rate_limit** %37, align 8
  br label %38

38:                                               ; preds = %25, %2
  %39 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %40 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %39, i32 0, i32 0
  %41 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %40, align 8
  %42 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %41, i32 0, i32 0
  %43 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %42, align 8
  %44 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %5, align 8
  %45 = icmp eq %struct.bufferevent_rate_limit_group* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %48 = call i32 @BEV_UNLOCK(%struct.bufferevent* %47)
  store i32 0, i32* %3, align 4
  br label %102

49:                                               ; preds = %38
  %50 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %51 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %50, i32 0, i32 0
  %52 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %51, align 8
  %53 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %52, i32 0, i32 0
  %54 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %53, align 8
  %55 = icmp ne %struct.bufferevent_rate_limit_group* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %58 = call i32 @bufferevent_remove_from_rate_limit_group(%struct.bufferevent* %57)
  br label %59

59:                                               ; preds = %56, %49
  %60 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %5, align 8
  %61 = call i32 @LOCK_GROUP(%struct.bufferevent_rate_limit_group* %60)
  %62 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %5, align 8
  %63 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %64 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %63, i32 0, i32 0
  %65 = load %struct.bufferevent_rate_limit*, %struct.bufferevent_rate_limit** %64, align 8
  %66 = getelementptr inbounds %struct.bufferevent_rate_limit, %struct.bufferevent_rate_limit* %65, i32 0, i32 0
  store %struct.bufferevent_rate_limit_group* %62, %struct.bufferevent_rate_limit_group** %66, align 8
  %67 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %5, align 8
  %68 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %5, align 8
  %72 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %71, i32 0, i32 2
  %73 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rate_limiting, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @LIST_INSERT_HEAD(i32* %72, %struct.bufferevent_private* %73, i32 %76)
  %78 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %5, align 8
  %79 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  %81 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %5, align 8
  %82 = getelementptr inbounds %struct.bufferevent_rate_limit_group, %struct.bufferevent_rate_limit_group* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %6, align 4
  %84 = load %struct.bufferevent_rate_limit_group*, %struct.bufferevent_rate_limit_group** %5, align 8
  %85 = call i32 @UNLOCK_GROUP(%struct.bufferevent_rate_limit_group* %84)
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %59
  %89 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %90 = load i32, i32* @BEV_SUSPEND_BW_GROUP, align 4
  %91 = call i32 @bufferevent_suspend_read_(%struct.bufferevent* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %59
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %97 = load i32, i32* @BEV_SUSPEND_BW_GROUP, align 4
  %98 = call i32 @bufferevent_suspend_write_(%struct.bufferevent* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %101 = call i32 @BEV_UNLOCK(%struct.bufferevent* %100)
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %46, %22
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent_rate_limit* @mm_calloc(i32, i32) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

declare dso_local i32 @event_assign(i32*, i32, i32, i32, i32, %struct.bufferevent_private*) #1

declare dso_local i32 @bufferevent_remove_from_rate_limit_group(%struct.bufferevent*) #1

declare dso_local i32 @LOCK_GROUP(%struct.bufferevent_rate_limit_group*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.bufferevent_private*, i32) #1

declare dso_local i32 @UNLOCK_GROUP(%struct.bufferevent_rate_limit_group*) #1

declare dso_local i32 @bufferevent_suspend_read_(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_suspend_write_(%struct.bufferevent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

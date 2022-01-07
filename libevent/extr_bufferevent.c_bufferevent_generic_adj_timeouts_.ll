; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_generic_adj_timeouts_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_generic_adj_timeouts_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i16, i32, i32, i32, i32, i32 }
%struct.bufferevent_private = type { i32, i32 }

@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_generic_adj_timeouts_(%struct.bufferevent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.bufferevent_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  %8 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %9 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %8, i32 0, i32 0
  %10 = load i16, i16* %9, align 4
  store i16 %10, i16* %4, align 2
  %11 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %12 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %11)
  store %struct.bufferevent_private* %12, %struct.bufferevent_private** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i16, i16* %4, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16, i16* @EV_READ, align 2
  %16 = sext i16 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %1
  %20 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %21 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %26 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %25, i32 0, i32 5
  %27 = call i64 @evutil_timerisset(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %31 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %30, i32 0, i32 4
  %32 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %33 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %32, i32 0, i32 5
  %34 = call i32 @event_add(i32* %31, i32* %33)
  store i32 %34, i32* %6, align 4
  br label %39

35:                                               ; preds = %24, %19, %1
  %36 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %37 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %36, i32 0, i32 4
  %38 = call i32 @event_del(i32* %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i16, i16* %4, align 2
  %41 = sext i16 %40 to i32
  %42 = load i16, i16* @EV_WRITE, align 2
  %43 = sext i16 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %39
  %47 = load %struct.bufferevent_private*, %struct.bufferevent_private** %5, align 8
  %48 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %46
  %52 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %53 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %52, i32 0, i32 2
  %54 = call i64 @evutil_timerisset(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %58 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @evbuffer_get_length(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %64 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %63, i32 0, i32 1
  %65 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %66 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %65, i32 0, i32 2
  %67 = call i32 @event_add(i32* %64, i32* %66)
  store i32 %67, i32* %7, align 4
  br label %72

68:                                               ; preds = %56, %51, %46, %39
  %69 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %70 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %69, i32 0, i32 1
  %71 = call i32 @event_del(i32* %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %62
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75, %72
  store i32 -1, i32* %2, align 4
  br label %80

79:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %78
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i64 @evutil_timerisset(i32*) #1

declare dso_local i32 @event_add(i32*, i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

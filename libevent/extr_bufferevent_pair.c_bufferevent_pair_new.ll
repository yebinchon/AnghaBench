; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_pair.c_bufferevent_pair_new.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_pair.c_bufferevent_pair_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.bufferevent = type { i32, i32 }
%struct.bufferevent_pair = type { %struct.bufferevent_pair*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@BEV_OPT_THREADSAFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_pair_new(%struct.event_base* %0, i32 %1, %struct.bufferevent** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bufferevent**, align 8
  %8 = alloca %struct.bufferevent_pair*, align 8
  %9 = alloca %struct.bufferevent_pair*, align 8
  %10 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bufferevent** %2, %struct.bufferevent*** %7, align 8
  store %struct.bufferevent_pair* null, %struct.bufferevent_pair** %8, align 8
  store %struct.bufferevent_pair* null, %struct.bufferevent_pair** %9, align 8
  %11 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @BEV_OPT_THREADSAFE, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.event_base*, %struct.event_base** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.bufferevent_pair* @bufferevent_pair_elt_new(%struct.event_base* %18, i32 %19)
  store %struct.bufferevent_pair* %20, %struct.bufferevent_pair** %8, align 8
  %21 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %22 = icmp ne %struct.bufferevent_pair* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %82

24:                                               ; preds = %3
  %25 = load %struct.event_base*, %struct.event_base** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.bufferevent_pair* @bufferevent_pair_elt_new(%struct.event_base* %25, i32 %26)
  store %struct.bufferevent_pair* %27, %struct.bufferevent_pair** %9, align 8
  %28 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %9, align 8
  %29 = icmp ne %struct.bufferevent_pair* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %32 = call %struct.bufferevent* @downcast(%struct.bufferevent_pair* %31)
  %33 = call i32 @bufferevent_free(%struct.bufferevent* %32)
  store i32 -1, i32* %4, align 4
  br label %82

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @BEV_OPT_THREADSAFE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %9, align 8
  %41 = call %struct.bufferevent* @downcast(%struct.bufferevent_pair* %40)
  %42 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %43 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bufferevent_enable_locking_(%struct.bufferevent* %41, i32 %45)
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %9, align 8
  %49 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %50 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %49, i32 0, i32 0
  store %struct.bufferevent_pair* %48, %struct.bufferevent_pair** %50, align 8
  %51 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %52 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %9, align 8
  %53 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %52, i32 0, i32 0
  store %struct.bufferevent_pair* %51, %struct.bufferevent_pair** %53, align 8
  %54 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %55 = call %struct.bufferevent* @downcast(%struct.bufferevent_pair* %54)
  %56 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @evbuffer_freeze(i32 %57, i32 0)
  %59 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %60 = call %struct.bufferevent* @downcast(%struct.bufferevent_pair* %59)
  %61 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @evbuffer_freeze(i32 %62, i32 1)
  %64 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %9, align 8
  %65 = call %struct.bufferevent* @downcast(%struct.bufferevent_pair* %64)
  %66 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @evbuffer_freeze(i32 %67, i32 0)
  %69 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %9, align 8
  %70 = call %struct.bufferevent* @downcast(%struct.bufferevent_pair* %69)
  %71 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @evbuffer_freeze(i32 %72, i32 1)
  %74 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %75 = call %struct.bufferevent* @downcast(%struct.bufferevent_pair* %74)
  %76 = load %struct.bufferevent**, %struct.bufferevent*** %7, align 8
  %77 = getelementptr inbounds %struct.bufferevent*, %struct.bufferevent** %76, i64 0
  store %struct.bufferevent* %75, %struct.bufferevent** %77, align 8
  %78 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %9, align 8
  %79 = call %struct.bufferevent* @downcast(%struct.bufferevent_pair* %78)
  %80 = load %struct.bufferevent**, %struct.bufferevent*** %7, align 8
  %81 = getelementptr inbounds %struct.bufferevent*, %struct.bufferevent** %80, i64 1
  store %struct.bufferevent* %79, %struct.bufferevent** %81, align 8
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %47, %30, %23
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.bufferevent_pair* @bufferevent_pair_elt_new(%struct.event_base*, i32) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent* @downcast(%struct.bufferevent_pair*) #1

declare dso_local i32 @bufferevent_enable_locking_(%struct.bufferevent*, i32) #1

declare dso_local i32 @evbuffer_freeze(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

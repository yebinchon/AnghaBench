; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_pair.c_be_pair_unlink.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_pair.c_be_pair_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_pair = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*)* @be_pair_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_pair_unlink(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca %struct.bufferevent_pair*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  %4 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %5 = call %struct.bufferevent_pair* @upcast(%struct.bufferevent* %4)
  store %struct.bufferevent_pair* %5, %struct.bufferevent_pair** %3, align 8
  %6 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %3, align 8
  %7 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %3, align 8
  %12 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %3, align 8
  %15 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %14, i32 0, i32 1
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %15, align 8
  %16 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %3, align 8
  %17 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %3, align 8
  %21 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %20, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %21, align 8
  br label %22

22:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.bufferevent_pair* @upcast(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

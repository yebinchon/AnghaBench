; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_disable_hard_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent.c_bufferevent_disable_hard_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i16, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.bufferevent*, i16)* }
%struct.bufferevent_private = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_disable_hard_(%struct.bufferevent* %0, i16 signext %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufferevent_private*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i16 %1, i16* %4, align 2
  store i32 0, i32* %5, align 4
  %7 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %8 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %7)
  store %struct.bufferevent_private* %8, %struct.bufferevent_private** %6, align 8
  %9 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %10 = call i32 @BEV_LOCK(%struct.bufferevent* %9)
  %11 = load i16, i16* %4, align 2
  %12 = sext i16 %11 to i32
  %13 = xor i32 %12, -1
  %14 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %15 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %14, i32 0, i32 0
  %16 = load i16, i16* %15, align 8
  %17 = sext i16 %16 to i32
  %18 = and i32 %17, %13
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %15, align 8
  %20 = load %struct.bufferevent_private*, %struct.bufferevent_private** %6, align 8
  %21 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %23 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64 (%struct.bufferevent*, i16)*, i64 (%struct.bufferevent*, i16)** %25, align 8
  %27 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %28 = load i16, i16* %4, align 2
  %29 = call i64 %26(%struct.bufferevent* %27, i16 signext %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %34 = call i32 @BEV_UNLOCK(%struct.bufferevent* %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

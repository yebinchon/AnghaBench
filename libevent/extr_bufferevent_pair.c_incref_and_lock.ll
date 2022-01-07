; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_pair.c_incref_and_lock.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_pair.c_incref_and_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_pair = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*)* @incref_and_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @incref_and_lock(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca %struct.bufferevent_pair*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  %4 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %5 = call i32 @bufferevent_incref_and_lock_(%struct.bufferevent* %4)
  %6 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %7 = call %struct.bufferevent_pair* @upcast(%struct.bufferevent* %6)
  store %struct.bufferevent_pair* %7, %struct.bufferevent_pair** %3, align 8
  %8 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %3, align 8
  %9 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %3, align 8
  %14 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.bufferevent* @downcast(i64 %15)
  %17 = call i32 @bufferevent_incref_and_lock_(%struct.bufferevent* %16)
  br label %18

18:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @bufferevent_incref_and_lock_(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent_pair* @upcast(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent* @downcast(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

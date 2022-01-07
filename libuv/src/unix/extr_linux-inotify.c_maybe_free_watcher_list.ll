; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_linux-inotify.c_maybe_free_watcher_list.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_linux-inotify.c_maybe_free_watcher_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watcher_list = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@watcher_root = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.watcher_list*, %struct.TYPE_3__*)* @maybe_free_watcher_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_free_watcher_list(%struct.watcher_list* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.watcher_list*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.watcher_list* %0, %struct.watcher_list** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.watcher_list*, %struct.watcher_list** %3, align 8
  %6 = getelementptr inbounds %struct.watcher_list, %struct.watcher_list* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %2
  %10 = load %struct.watcher_list*, %struct.watcher_list** %3, align 8
  %11 = getelementptr inbounds %struct.watcher_list, %struct.watcher_list* %10, i32 0, i32 1
  %12 = call i64 @QUEUE_EMPTY(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = load i32, i32* @watcher_root, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = call i32 @CAST(i32* %17)
  %19 = load %struct.watcher_list*, %struct.watcher_list** %3, align 8
  %20 = call i32 @RB_REMOVE(i32 %15, i32 %18, %struct.watcher_list* %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.watcher_list*, %struct.watcher_list** %3, align 8
  %25 = getelementptr inbounds %struct.watcher_list, %struct.watcher_list* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @uv__inotify_rm_watch(i32 %23, i32 %26)
  %28 = load %struct.watcher_list*, %struct.watcher_list** %3, align 8
  %29 = call i32 @uv__free(%struct.watcher_list* %28)
  br label %30

30:                                               ; preds = %14, %9, %2
  ret void
}

declare dso_local i64 @QUEUE_EMPTY(i32*) #1

declare dso_local i32 @RB_REMOVE(i32, i32, %struct.watcher_list*) #1

declare dso_local i32 @CAST(i32*) #1

declare dso_local i32 @uv__inotify_rm_watch(i32, i32) #1

declare dso_local i32 @uv__free(%struct.watcher_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sockrestart.c_sockrestart_begin_listen.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sockrestart.c_sockrestart_begin_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@socket_fdops = common dso_local global i32 0, align 4
@sockrestart_lock = common dso_local global i32 0, align 4
@listen_fds = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sockrestart_begin_listen(%struct.fd* %0) #0 {
  %2 = alloca %struct.fd*, align 8
  store %struct.fd* %0, %struct.fd** %2, align 8
  %3 = load %struct.fd*, %struct.fd** %2, align 8
  %4 = getelementptr inbounds %struct.fd, %struct.fd* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, @socket_fdops
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %15

8:                                                ; preds = %1
  %9 = call i32 @lock(i32* @sockrestart_lock)
  %10 = load %struct.fd*, %struct.fd** %2, align 8
  %11 = getelementptr inbounds %struct.fd, %struct.fd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @list_add(i32* @listen_fds, i32* %12)
  %14 = call i32 @unlock(i32* @sockrestart_lock)
  br label %15

15:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

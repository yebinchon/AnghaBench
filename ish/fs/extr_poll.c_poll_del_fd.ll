; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_poll.c_poll_del_fd.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_poll.c_poll_del_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poll = type { i32 }
%struct.fd = type { i32 }
%struct.poll_fd = type { i32, i32 }

@_ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @poll_del_fd(%struct.poll* %0, %struct.fd* %1) #0 {
  %3 = alloca %struct.poll*, align 8
  %4 = alloca %struct.fd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.poll_fd*, align 8
  store %struct.poll* %0, %struct.poll** %3, align 8
  store %struct.fd* %1, %struct.fd** %4, align 8
  %7 = load %struct.fd*, %struct.fd** %4, align 8
  %8 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  %9 = call i32 @lock(i32* %8)
  %10 = load %struct.poll*, %struct.poll** %3, align 8
  %11 = getelementptr inbounds %struct.poll, %struct.poll* %10, i32 0, i32 0
  %12 = call i32 @lock(i32* %11)
  %13 = load %struct.poll*, %struct.poll** %3, align 8
  %14 = load %struct.fd*, %struct.fd** %4, align 8
  %15 = call %struct.poll_fd* @poll_find_fd(%struct.poll* %13, %struct.fd* %14)
  store %struct.poll_fd* %15, %struct.poll_fd** %6, align 8
  %16 = load %struct.poll_fd*, %struct.poll_fd** %6, align 8
  %17 = icmp eq %struct.poll_fd* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @_ENOENT, align 4
  store i32 %19, i32* %5, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.poll_fd*, %struct.poll_fd** %6, align 8
  %22 = getelementptr inbounds %struct.poll_fd, %struct.poll_fd* %21, i32 0, i32 1
  %23 = call i32 @list_remove(i32* %22)
  %24 = load %struct.poll_fd*, %struct.poll_fd** %6, align 8
  %25 = getelementptr inbounds %struct.poll_fd, %struct.poll_fd* %24, i32 0, i32 0
  %26 = call i32 @list_remove(i32* %25)
  %27 = load %struct.poll_fd*, %struct.poll_fd** %6, align 8
  %28 = call i32 @free(%struct.poll_fd* %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %20, %18
  %30 = load %struct.poll*, %struct.poll** %3, align 8
  %31 = getelementptr inbounds %struct.poll, %struct.poll* %30, i32 0, i32 0
  %32 = call i32 @unlock(i32* %31)
  %33 = load %struct.fd*, %struct.fd** %4, align 8
  %34 = getelementptr inbounds %struct.fd, %struct.fd* %33, i32 0, i32 0
  %35 = call i32 @unlock(i32* %34)
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @lock(i32*) #1

declare dso_local %struct.poll_fd* @poll_find_fd(%struct.poll*, %struct.fd*) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @free(%struct.poll_fd*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

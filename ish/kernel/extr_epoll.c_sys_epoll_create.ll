; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_epoll.c_sys_epoll_create.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_epoll.c_sys_epoll_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"epoll_create(%#x)\00", align 1
@O_CLOEXEC_ = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@epoll_ops = common dso_local global i32 0, align 4
@_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_epoll_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @STRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @O_CLOEXEC_, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @_EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = call %struct.fd* @adhoc_fd_create(i32* @epoll_ops)
  store %struct.fd* %15, %struct.fd** %4, align 8
  %16 = load %struct.fd*, %struct.fd** %4, align 8
  %17 = icmp eq %struct.fd* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @_ENOMEM, align 4
  store i32 %19, i32* %2, align 4
  br label %28

20:                                               ; preds = %14
  %21 = call i32 (...) @poll_create()
  %22 = load %struct.fd*, %struct.fd** %4, align 8
  %23 = getelementptr inbounds %struct.fd, %struct.fd* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.fd*, %struct.fd** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @f_install(%struct.fd* %25, i32 %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %20, %18, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @STRACE(i8*, i32) #1

declare dso_local %struct.fd* @adhoc_fd_create(i32*) #1

declare dso_local i32 @poll_create(...) #1

declare dso_local i32 @f_install(%struct.fd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

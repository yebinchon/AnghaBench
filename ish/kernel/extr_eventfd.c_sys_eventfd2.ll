; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_eventfd.c_sys_eventfd2.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_eventfd.c_sys_eventfd2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"eventfd(%d, %#x)\00", align 1
@O_CLOEXEC_ = common dso_local global i32 0, align 4
@O_NONBLOCK_ = common dso_local global i32 0, align 4
@_EINVAL = common dso_local global i32 0, align 4
@eventfd_ops = common dso_local global i32 0, align 4
@_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_eventfd2(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @STRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @O_CLOEXEC_, align 4
  %12 = load i32, i32* @O_NONBLOCK_, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @_EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = call %struct.fd* @adhoc_fd_create(i32* @eventfd_ops)
  store %struct.fd* %20, %struct.fd** %6, align 8
  %21 = load %struct.fd*, %struct.fd** %6, align 8
  %22 = icmp eq %struct.fd* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @_ENOMEM, align 4
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.fd*, %struct.fd** %6, align 8
  %28 = getelementptr inbounds %struct.fd, %struct.fd* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.fd*, %struct.fd** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @f_install(%struct.fd* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %25, %23, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @STRACE(i8*, i32, i32) #1

declare dso_local %struct.fd* @adhoc_fd_create(i32*) #1

declare dso_local i32 @f_install(%struct.fd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

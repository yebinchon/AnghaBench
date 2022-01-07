; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_listen.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_sys_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"listen(%d, %d)\00", align 1
@_EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_listen(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @STRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.fd* @sock_getfd(i32 %11)
  store %struct.fd* %12, %struct.fd** %6, align 8
  %13 = load %struct.fd*, %struct.fd** %6, align 8
  %14 = icmp eq %struct.fd* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @_EBADF, align 4
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.fd*, %struct.fd** %6, align 8
  %19 = getelementptr inbounds %struct.fd, %struct.fd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @listen(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 (...) @errno_map()
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %17
  %28 = load %struct.fd*, %struct.fd** %6, align 8
  %29 = call i32 @sockrestart_begin_listen(%struct.fd* %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %25, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @STRACE(i8*, i32, i32) #1

declare dso_local %struct.fd* @sock_getfd(i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i32 @sockrestart_begin_listen(%struct.fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

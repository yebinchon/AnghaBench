; ModuleID = '/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_ioctl.c'
source_filename = "/home/carl/AnghaBench/ish/kernel/extr_fs.c_sys_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ioctl(%d, 0x%x, 0x%x)\00", align 1
@_EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_ioctl(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fd*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @STRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.fd* @f_get(i32 %13)
  store %struct.fd* %14, %struct.fd** %8, align 8
  %15 = load %struct.fd*, %struct.fd** %8, align 8
  %16 = icmp eq %struct.fd* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @_EBADF, align 4
  store i32 %18, i32* %4, align 4
  br label %30

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %25 [
    i32 128, label %21
  ]

21:                                               ; preds = %19
  %22 = load %struct.fd*, %struct.fd** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @set_nonblock(%struct.fd* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %19
  %26 = load %struct.fd*, %struct.fd** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @fd_ioctl(%struct.fd* %26, i32 %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %21, %17
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @STRACE(i8*, i32, i32, i32) #1

declare dso_local %struct.fd* @f_get(i32) #1

declare dso_local i32 @set_nonblock(%struct.fd*, i32) #1

declare dso_local i32 @fd_ioctl(%struct.fd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

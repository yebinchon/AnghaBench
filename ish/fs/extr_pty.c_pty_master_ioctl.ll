; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_pty.c_pty_master_ioctl.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_pty.c_pty_master_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.tty* }

@_ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32, i8*)* @pty_master_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pty_master_ioctl(%struct.tty* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.tty*, %struct.tty** %5, align 8
  %10 = getelementptr inbounds %struct.tty, %struct.tty* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load %struct.tty*, %struct.tty** %11, align 8
  store %struct.tty* %12, %struct.tty** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %49 [
    i32 128, label %14
    i32 130, label %25
    i32 129, label %31
    i32 131, label %42
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load %struct.tty*, %struct.tty** %8, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  br label %51

25:                                               ; preds = %3
  %26 = load %struct.tty*, %struct.tty** %8, align 8
  %27 = getelementptr inbounds %struct.tty, %struct.tty* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %51

31:                                               ; preds = %3
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.tty*, %struct.tty** %5, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  br label %51

42:                                               ; preds = %3
  %43 = load %struct.tty*, %struct.tty** %5, align 8
  %44 = getelementptr inbounds %struct.tty, %struct.tty* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to i32*
  store i32 %46, i32* %48, align 4
  br label %51

49:                                               ; preds = %3
  %50 = load i32, i32* @_ENOTTY, align 4
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %42, %31, %25, %14
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %49
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

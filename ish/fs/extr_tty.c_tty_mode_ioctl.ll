; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_mode_ioctl.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_mode_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32*, %struct.winsize_, %struct.termios_, i32, i32, %struct.TYPE_2__ }
%struct.winsize_ = type { i32 }
%struct.termios_ = type { i32 }
%struct.TYPE_2__ = type { %struct.tty* }

@pty_master = common dso_local global i32 0, align 4
@_ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32, i8*)* @tty_mode_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_mode_ioctl(%struct.tty* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.tty*, %struct.tty** %4, align 8
  store %struct.tty* %9, %struct.tty** %8, align 8
  %10 = load %struct.tty*, %struct.tty** %4, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, @pty_master
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.tty*, %struct.tty** %4, align 8
  %16 = getelementptr inbounds %struct.tty, %struct.tty* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.tty*, %struct.tty** %17, align 8
  store %struct.tty* %18, %struct.tty** %8, align 8
  %19 = load %struct.tty*, %struct.tty** %8, align 8
  %20 = getelementptr inbounds %struct.tty, %struct.tty* %19, i32 0, i32 0
  %21 = call i32 @lock(i32* %20)
  br label %22

22:                                               ; preds = %14, %3
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %58 [
    i32 133, label %24
    i32 132, label %31
    i32 131, label %37
    i32 130, label %37
    i32 129, label %44
    i32 128, label %51
  ]

24:                                               ; preds = %22
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to %struct.termios_*
  %27 = load %struct.tty*, %struct.tty** %8, align 8
  %28 = getelementptr inbounds %struct.tty, %struct.tty* %27, i32 0, i32 3
  %29 = bitcast %struct.termios_* %26 to i8*
  %30 = bitcast %struct.termios_* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  br label %60

31:                                               ; preds = %22
  %32 = load %struct.tty*, %struct.tty** %8, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 5
  store i32 0, i32* %33, align 4
  %34 = load %struct.tty*, %struct.tty** %8, align 8
  %35 = getelementptr inbounds %struct.tty, %struct.tty* %34, i32 0, i32 4
  %36 = call i32 @notify(i32* %35)
  br label %37

37:                                               ; preds = %22, %22, %31
  %38 = load %struct.tty*, %struct.tty** %8, align 8
  %39 = getelementptr inbounds %struct.tty, %struct.tty* %38, i32 0, i32 3
  %40 = load i8*, i8** %6, align 8
  %41 = bitcast i8* %40 to %struct.termios_*
  %42 = bitcast %struct.termios_* %39 to i8*
  %43 = bitcast %struct.termios_* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %60

44:                                               ; preds = %22
  %45 = load i8*, i8** %6, align 8
  %46 = bitcast i8* %45 to %struct.winsize_*
  %47 = load %struct.tty*, %struct.tty** %8, align 8
  %48 = getelementptr inbounds %struct.tty, %struct.tty* %47, i32 0, i32 2
  %49 = bitcast %struct.winsize_* %46 to i8*
  %50 = bitcast %struct.winsize_* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 8 %50, i64 4, i1 false)
  br label %60

51:                                               ; preds = %22
  %52 = load %struct.tty*, %struct.tty** %8, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = bitcast i8* %53 to %struct.winsize_*
  %55 = getelementptr inbounds %struct.winsize_, %struct.winsize_* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @tty_set_winsize(%struct.tty* %52, i32 %56)
  br label %60

58:                                               ; preds = %22
  %59 = load i32, i32* @_ENOTTY, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %51, %44, %37, %24
  %61 = load %struct.tty*, %struct.tty** %4, align 8
  %62 = getelementptr inbounds %struct.tty, %struct.tty* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, @pty_master
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.tty*, %struct.tty** %8, align 8
  %67 = getelementptr inbounds %struct.tty, %struct.tty* %66, i32 0, i32 0
  %68 = call i32 @unlock(i32* %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @notify(i32*) #1

declare dso_local i32 @tty_set_winsize(%struct.tty*, i32) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

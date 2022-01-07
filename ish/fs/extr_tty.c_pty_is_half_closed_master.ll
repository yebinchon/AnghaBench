; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty.c_pty_is_half_closed_master.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty.c_pty_is_half_closed_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i64, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.tty* }

@pty_master = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*)* @pty_is_half_closed_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pty_is_half_closed_master(%struct.tty* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  %6 = load %struct.tty*, %struct.tty** %3, align 8
  %7 = getelementptr inbounds %struct.tty, %struct.tty* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, @pty_master
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.tty*, %struct.tty** %3, align 8
  %13 = getelementptr inbounds %struct.tty, %struct.tty* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.tty*, %struct.tty** %14, align 8
  store %struct.tty* %15, %struct.tty** %4, align 8
  %16 = load %struct.tty*, %struct.tty** %4, align 8
  %17 = getelementptr inbounds %struct.tty, %struct.tty* %16, i32 0, i32 1
  %18 = call i32 @lock(i32* %17)
  %19 = load %struct.tty*, %struct.tty** %4, align 8
  %20 = getelementptr inbounds %struct.tty, %struct.tty* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %11
  %24 = load %struct.tty*, %struct.tty** %4, align 8
  %25 = getelementptr inbounds %struct.tty, %struct.tty* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br label %28

28:                                               ; preds = %23, %11
  %29 = phi i1 [ false, %11 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load %struct.tty*, %struct.tty** %4, align 8
  %32 = getelementptr inbounds %struct.tty, %struct.tty* %31, i32 0, i32 1
  %33 = call i32 @unlock(i32* %32)
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

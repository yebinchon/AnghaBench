; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_pty.c_pty_master_init.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_pty.c_pty_master_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.tty** }
%struct.tty = type { i64, i32, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, %struct.tty* }
%struct.TYPE_6__ = type { i64, i64, i64 }

@pty_slave = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TTY_PSEUDO_SLAVE_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*)* @pty_master_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pty_master_init(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.tty*, %struct.tty** %2, align 8
  %5 = getelementptr inbounds %struct.tty, %struct.tty* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.tty*, %struct.tty** %2, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.tty*, %struct.tty** %2, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @TTY_PSEUDO_SLAVE_MAJOR, align 4
  %14 = load %struct.tty*, %struct.tty** %2, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call %struct.tty* @tty_alloc(%struct.TYPE_7__* @pty_slave, i32 %13, i64 %16)
  store %struct.tty* %17, %struct.tty** %3, align 8
  %18 = load %struct.tty*, %struct.tty** %3, align 8
  %19 = getelementptr inbounds %struct.tty, %struct.tty* %18, i32 0, i32 1
  store i32 1, i32* %19, align 8
  %20 = load %struct.tty*, %struct.tty** %3, align 8
  %21 = load %struct.tty**, %struct.tty*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pty_slave, i32 0, i32 0), align 8
  %22 = load %struct.tty*, %struct.tty** %2, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.tty*, %struct.tty** %21, i64 %24
  store %struct.tty* %20, %struct.tty** %25, align 8
  %26 = load %struct.tty*, %struct.tty** %3, align 8
  %27 = load %struct.tty*, %struct.tty** %2, align 8
  %28 = getelementptr inbounds %struct.tty, %struct.tty* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store %struct.tty* %26, %struct.tty** %29, align 8
  %30 = load %struct.tty*, %struct.tty** %2, align 8
  %31 = load %struct.tty*, %struct.tty** %3, align 8
  %32 = getelementptr inbounds %struct.tty, %struct.tty* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store %struct.tty* %30, %struct.tty** %33, align 8
  %34 = load %struct.tty*, %struct.tty** %3, align 8
  %35 = getelementptr inbounds %struct.tty, %struct.tty* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.tty*, %struct.tty** %3, align 8
  %38 = call i32 @pty_slave_init_inode(%struct.tty* %37)
  ret i32 0
}

declare dso_local %struct.tty* @tty_alloc(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @pty_slave_init_inode(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

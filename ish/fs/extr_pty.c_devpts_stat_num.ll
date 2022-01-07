; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_pty.c_devpts_stat_num.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_pty.c_devpts_stat_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.tty** }
%struct.tty = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.statbuf = type { i32, i32, i32, i32, i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@ttys_lock = common dso_local global i32 0, align 4
@pty_slave = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@S_IFCHR = common dso_local global i32 0, align 4
@TTY_PSEUDO_SLAVE_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.statbuf*)* @devpts_stat_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devpts_stat_num(i32 %0, %struct.statbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.statbuf*, align 8
  %5 = alloca %struct.tty*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.statbuf* %1, %struct.statbuf** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* @S_IFDIR, align 4
  %10 = or i32 %9, 493
  %11 = load %struct.statbuf*, %struct.statbuf** %4, align 8
  %12 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.statbuf*, %struct.statbuf** %4, align 8
  %14 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  br label %62

15:                                               ; preds = %2
  %16 = call i32 @lock(i32* @ttys_lock)
  %17 = load %struct.tty**, %struct.tty*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pty_slave, i32 0, i32 0), align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tty*, %struct.tty** %17, i64 %19
  %21 = load %struct.tty*, %struct.tty** %20, align 8
  store %struct.tty* %21, %struct.tty** %5, align 8
  %22 = load %struct.tty*, %struct.tty** %5, align 8
  %23 = icmp ne %struct.tty* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.tty*, %struct.tty** %5, align 8
  %27 = getelementptr inbounds %struct.tty, %struct.tty* %26, i32 0, i32 0
  %28 = call i32 @lock(i32* %27)
  %29 = load i32, i32* @S_IFCHR, align 4
  %30 = load %struct.tty*, %struct.tty** %5, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %29, %33
  %35 = load %struct.statbuf*, %struct.statbuf** %4, align 8
  %36 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tty*, %struct.tty** %5, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.statbuf*, %struct.statbuf** %4, align 8
  %42 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.tty*, %struct.tty** %5, align 8
  %44 = getelementptr inbounds %struct.tty, %struct.tty* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.statbuf*, %struct.statbuf** %4, align 8
  %48 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 3
  %51 = load %struct.statbuf*, %struct.statbuf** %4, align 8
  %52 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @TTY_PSEUDO_SLAVE_MAJOR, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @dev_make(i32 %53, i32 %54)
  %56 = load %struct.statbuf*, %struct.statbuf** %4, align 8
  %57 = getelementptr inbounds %struct.statbuf, %struct.statbuf* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.tty*, %struct.tty** %5, align 8
  %59 = getelementptr inbounds %struct.tty, %struct.tty* %58, i32 0, i32 0
  %60 = call i32 @unlock(i32* %59)
  %61 = call i32 @unlock(i32* @ttys_lock)
  br label %62

62:                                               ; preds = %15, %8
  ret void
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dev_make(i32, i32) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_pty.c_pty_open_fake.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_pty.c_pty_open_fake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.tty = type { i32 }
%struct.tty_driver = type { i32, i32 }

@MAX_PTYS = common dso_local global i32 0, align 4
@_ENOSPC = common dso_local global i32 0, align 4
@pty_slave = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TTY_PSEUDO_SLAVE_MAJOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tty* @pty_open_fake(%struct.tty_driver* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %3, align 8
  %6 = call i32 (...) @pty_reserve_next()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MAX_PTYS, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @_ENOSPC, align 4
  %12 = call %struct.tty* @ERR_PTR(i32 %11)
  store %struct.tty* %12, %struct.tty** %2, align 8
  br label %33

13:                                               ; preds = %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pty_slave, i32 0, i32 1), align 4
  %15 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %16 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pty_slave, i32 0, i32 0), align 4
  %18 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %19 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %21 = load i32, i32* @TTY_PSEUDO_SLAVE_MAJOR, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.tty* @tty_get(%struct.tty_driver* %20, i32 %21, i32 %22)
  store %struct.tty* %23, %struct.tty** %5, align 8
  %24 = load %struct.tty*, %struct.tty** %5, align 8
  %25 = call i64 @IS_ERR(%struct.tty* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load %struct.tty*, %struct.tty** %5, align 8
  store %struct.tty* %28, %struct.tty** %2, align 8
  br label %33

29:                                               ; preds = %13
  %30 = load %struct.tty*, %struct.tty** %5, align 8
  %31 = call i32 @pty_slave_init_inode(%struct.tty* %30)
  %32 = load %struct.tty*, %struct.tty** %5, align 8
  store %struct.tty* %32, %struct.tty** %2, align 8
  br label %33

33:                                               ; preds = %29, %27, %10
  %34 = load %struct.tty*, %struct.tty** %2, align 8
  ret %struct.tty* %34
}

declare dso_local i32 @pty_reserve_next(...) #1

declare dso_local %struct.tty* @ERR_PTR(i32) #1

declare dso_local %struct.tty* @tty_get(%struct.tty_driver*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tty*) #1

declare dso_local i32 @pty_slave_init_inode(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

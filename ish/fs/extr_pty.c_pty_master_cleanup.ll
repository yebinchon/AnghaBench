; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_pty.c_pty_master_cleanup.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_pty.c_pty_master_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tty* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @pty_master_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pty_master_cleanup(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.tty*, %struct.tty** %2, align 8
  %5 = getelementptr inbounds %struct.tty, %struct.tty* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.tty*, %struct.tty** %6, align 8
  store %struct.tty* %7, %struct.tty** %3, align 8
  %8 = load %struct.tty*, %struct.tty** %3, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.tty* null, %struct.tty** %10, align 8
  %11 = load %struct.tty*, %struct.tty** %3, align 8
  %12 = getelementptr inbounds %struct.tty, %struct.tty* %11, i32 0, i32 0
  %13 = call i32 @lock(i32* %12)
  %14 = load %struct.tty*, %struct.tty** %3, align 8
  %15 = call i32 @tty_hangup(%struct.tty* %14)
  %16 = load %struct.tty*, %struct.tty** %3, align 8
  %17 = getelementptr inbounds %struct.tty, %struct.tty* %16, i32 0, i32 0
  %18 = call i32 @unlock(i32* %17)
  %19 = load %struct.tty*, %struct.tty** %3, align 8
  %20 = call i32 @tty_release(%struct.tty* %19)
  ret void
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @tty_hangup(%struct.tty*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @tty_release(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

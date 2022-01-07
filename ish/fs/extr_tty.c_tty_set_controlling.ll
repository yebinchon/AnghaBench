; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_set_controlling.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_set_controlling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgroup = type { i32, i32, i32, %struct.tty* }
%struct.tty = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tgroup*, %struct.tty*)* @tty_set_controlling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_set_controlling(%struct.tgroup* %0, %struct.tty* %1) #0 {
  %3 = alloca %struct.tgroup*, align 8
  %4 = alloca %struct.tty*, align 8
  store %struct.tgroup* %0, %struct.tgroup** %3, align 8
  store %struct.tty* %1, %struct.tty** %4, align 8
  %5 = load %struct.tgroup*, %struct.tgroup** %3, align 8
  %6 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %5, i32 0, i32 0
  %7 = call i32 @lock(i32* %6)
  %8 = load %struct.tgroup*, %struct.tgroup** %3, align 8
  %9 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %8, i32 0, i32 3
  %10 = load %struct.tty*, %struct.tty** %9, align 8
  %11 = icmp eq %struct.tty* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.tty*, %struct.tty** %4, align 8
  %14 = getelementptr inbounds %struct.tty, %struct.tty* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.tty*, %struct.tty** %4, align 8
  %18 = load %struct.tgroup*, %struct.tgroup** %3, align 8
  %19 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %18, i32 0, i32 3
  store %struct.tty* %17, %struct.tty** %19, align 8
  %20 = load %struct.tgroup*, %struct.tgroup** %3, align 8
  %21 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tty*, %struct.tty** %4, align 8
  %24 = getelementptr inbounds %struct.tty, %struct.tty* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tgroup*, %struct.tgroup** %3, align 8
  %26 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tty*, %struct.tty** %4, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %12, %2
  %31 = load %struct.tgroup*, %struct.tgroup** %3, align 8
  %32 = getelementptr inbounds %struct.tgroup, %struct.tgroup* %31, i32 0, i32 0
  %33 = call i32 @unlock(i32* %32)
  ret void
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

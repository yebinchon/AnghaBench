; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_open.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.tty = type { i64, i32, i32, i32 }
%struct.fd = type { i32, i32, %struct.tty* }

@O_NOCTTY_ = common dso_local global i32 0, align 4
@pids_lock = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_open(%struct.tty* %0, %struct.fd* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.fd*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.fd* %1, %struct.fd** %4, align 8
  %5 = load %struct.tty*, %struct.tty** %3, align 8
  %6 = load %struct.fd*, %struct.fd** %4, align 8
  %7 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 2
  store %struct.tty* %5, %struct.tty** %7, align 8
  %8 = load %struct.tty*, %struct.tty** %3, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 2
  %10 = call i32 @lock(i32* %9)
  %11 = load %struct.tty*, %struct.tty** %3, align 8
  %12 = getelementptr inbounds %struct.tty, %struct.tty* %11, i32 0, i32 3
  %13 = load %struct.fd*, %struct.fd** %4, align 8
  %14 = getelementptr inbounds %struct.fd, %struct.fd* %13, i32 0, i32 1
  %15 = call i32 @list_add(i32* %12, i32* %14)
  %16 = load %struct.tty*, %struct.tty** %3, align 8
  %17 = getelementptr inbounds %struct.tty, %struct.tty* %16, i32 0, i32 2
  %18 = call i32 @unlock(i32* %17)
  %19 = load %struct.fd*, %struct.fd** %4, align 8
  %20 = getelementptr inbounds %struct.fd, %struct.fd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @O_NOCTTY_, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %55, label %25

25:                                               ; preds = %2
  %26 = call i32 @lock(i32* @pids_lock)
  %27 = load %struct.tty*, %struct.tty** %3, align 8
  %28 = getelementptr inbounds %struct.tty, %struct.tty* %27, i32 0, i32 1
  %29 = call i32 @lock(i32* %28)
  %30 = load %struct.tty*, %struct.tty** %3, align 8
  %31 = getelementptr inbounds %struct.tty, %struct.tty* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %25
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load %struct.tty*, %struct.tty** %3, align 8
  %49 = call i32 @tty_set_controlling(%struct.TYPE_3__* %47, %struct.tty* %48)
  br label %50

50:                                               ; preds = %44, %34, %25
  %51 = load %struct.tty*, %struct.tty** %3, align 8
  %52 = getelementptr inbounds %struct.tty, %struct.tty* %51, i32 0, i32 1
  %53 = call i32 @unlock(i32* %52)
  %54 = call i32 @unlock(i32* @pids_lock)
  br label %55

55:                                               ; preds = %50, %2
  ret i32 0
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @tty_set_controlling(%struct.TYPE_3__*, %struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

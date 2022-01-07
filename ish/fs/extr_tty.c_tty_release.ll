; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_release.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.tty*)* }
%struct.tty = type { i64, i64, i32, %struct.TYPE_4__, %struct.tty_driver*, i32 }
%struct.TYPE_4__ = type { %struct.tty* }

@pty_slave = common dso_local global %struct.tty_driver zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_release(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %5 = load %struct.tty*, %struct.tty** %2, align 8
  %6 = getelementptr inbounds %struct.tty, %struct.tty* %5, i32 0, i32 2
  %7 = call i32 @lock(i32* %6)
  %8 = load %struct.tty*, %struct.tty** %2, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %1
  %14 = load %struct.tty*, %struct.tty** %2, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 4
  %16 = load %struct.tty_driver*, %struct.tty_driver** %15, align 8
  store %struct.tty_driver* %16, %struct.tty_driver** %3, align 8
  %17 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %18 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.tty*)*, i32 (%struct.tty*)** %20, align 8
  %22 = icmp ne i32 (%struct.tty*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %13
  %24 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %25 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.tty*)*, i32 (%struct.tty*)** %27, align 8
  %29 = load %struct.tty*, %struct.tty** %2, align 8
  %30 = call i32 %28(%struct.tty* %29)
  br label %31

31:                                               ; preds = %23, %13
  %32 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %33 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load %struct.tty*, %struct.tty** %2, align 8
  %36 = getelementptr inbounds %struct.tty, %struct.tty* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32*, i32** %34, i64 %37
  store i32* null, i32** %38, align 8
  %39 = load %struct.tty*, %struct.tty** %2, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 2
  %41 = call i32 @unlock(i32* %40)
  %42 = load %struct.tty*, %struct.tty** %2, align 8
  %43 = getelementptr inbounds %struct.tty, %struct.tty* %42, i32 0, i32 5
  %44 = call i32 @cond_destroy(i32* %43)
  %45 = load %struct.tty*, %struct.tty** %2, align 8
  %46 = call i32 @free(%struct.tty* %45)
  br label %78

47:                                               ; preds = %1
  store %struct.tty* null, %struct.tty** %4, align 8
  %48 = load %struct.tty*, %struct.tty** %2, align 8
  %49 = getelementptr inbounds %struct.tty, %struct.tty* %48, i32 0, i32 4
  %50 = load %struct.tty_driver*, %struct.tty_driver** %49, align 8
  %51 = icmp eq %struct.tty_driver* %50, @pty_slave
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.tty*, %struct.tty** %2, align 8
  %54 = getelementptr inbounds %struct.tty, %struct.tty* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.tty*, %struct.tty** %2, align 8
  %59 = getelementptr inbounds %struct.tty, %struct.tty* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.tty*, %struct.tty** %60, align 8
  store %struct.tty* %61, %struct.tty** %4, align 8
  br label %62

62:                                               ; preds = %57, %52, %47
  %63 = load %struct.tty*, %struct.tty** %2, align 8
  %64 = getelementptr inbounds %struct.tty, %struct.tty* %63, i32 0, i32 2
  %65 = call i32 @unlock(i32* %64)
  %66 = load %struct.tty*, %struct.tty** %4, align 8
  %67 = icmp ne %struct.tty* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.tty*, %struct.tty** %4, align 8
  %70 = getelementptr inbounds %struct.tty, %struct.tty* %69, i32 0, i32 2
  %71 = call i32 @lock(i32* %70)
  %72 = load %struct.tty*, %struct.tty** %4, align 8
  %73 = call i32 @tty_poll_wakeup(%struct.tty* %72)
  %74 = load %struct.tty*, %struct.tty** %4, align 8
  %75 = getelementptr inbounds %struct.tty, %struct.tty* %74, i32 0, i32 2
  %76 = call i32 @unlock(i32* %75)
  br label %77

77:                                               ; preds = %68, %62
  br label %78

78:                                               ; preds = %77, %31
  ret void
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @unlock(i32*) #1

declare dso_local i32 @cond_destroy(i32*) #1

declare dso_local i32 @free(%struct.tty*) #1

declare dso_local i32 @tty_poll_wakeup(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

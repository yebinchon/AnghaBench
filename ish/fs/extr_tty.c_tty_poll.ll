; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_poll.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_tty.c_tty_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.tty* }
%struct.tty = type { i64, i64, i32, i32*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@POLL_WRITE = common dso_local global i32 0, align 4
@POLL_READ = common dso_local global i32 0, align 4
@POLL_ERR = common dso_local global i32 0, align 4
@POLL_HUP = common dso_local global i32 0, align 4
@ICANON_ = common dso_local global i32 0, align 4
@pty_master = common dso_local global i32 0, align 4
@POLL_PRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*)* @tty_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_poll(%struct.fd* %0) #0 {
  %2 = alloca %struct.fd*, align 8
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %2, align 8
  %5 = load %struct.fd*, %struct.fd** %2, align 8
  %6 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %7 = load %struct.tty*, %struct.tty** %6, align 8
  store %struct.tty* %7, %struct.tty** %3, align 8
  %8 = load %struct.tty*, %struct.tty** %3, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 2
  %10 = call i32 @lock(i32* %9)
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @POLL_WRITE, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load %struct.tty*, %struct.tty** %3, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load i32, i32* @POLL_READ, align 4
  %20 = load i32, i32* @POLL_WRITE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @POLL_ERR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @POLL_HUP, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %67

28:                                               ; preds = %1
  %29 = load %struct.tty*, %struct.tty** %3, align 8
  %30 = call i64 @pty_is_half_closed_master(%struct.tty* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @POLL_READ, align 4
  %34 = load i32, i32* @POLL_HUP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %66

38:                                               ; preds = %28
  %39 = load %struct.tty*, %struct.tty** %3, align 8
  %40 = getelementptr inbounds %struct.tty, %struct.tty* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ICANON_, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.tty*, %struct.tty** %3, align 8
  %48 = call i64 @tty_canon_size(%struct.tty* %47)
  %49 = icmp ne i64 %48, -1
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @POLL_READ, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %46
  br label %65

55:                                               ; preds = %38
  %56 = load %struct.tty*, %struct.tty** %3, align 8
  %57 = getelementptr inbounds %struct.tty, %struct.tty* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @POLL_READ, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %55
  br label %65

65:                                               ; preds = %64, %54
  br label %66

66:                                               ; preds = %65, %32
  br label %67

67:                                               ; preds = %66, %18
  %68 = load %struct.tty*, %struct.tty** %3, align 8
  %69 = getelementptr inbounds %struct.tty, %struct.tty* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, @pty_master
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.tty*, %struct.tty** %3, align 8
  %74 = getelementptr inbounds %struct.tty, %struct.tty* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @POLL_PRI, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %77, %72, %67
  %82 = load %struct.tty*, %struct.tty** %3, align 8
  %83 = getelementptr inbounds %struct.tty, %struct.tty* %82, i32 0, i32 2
  %84 = call i32 @unlock(i32* %83)
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i64 @pty_is_half_closed_master(%struct.tty*) #1

declare dso_local i64 @tty_canon_size(%struct.tty*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

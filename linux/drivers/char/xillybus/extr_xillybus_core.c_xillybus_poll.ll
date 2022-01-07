; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.xilly_channel* }
%struct.xilly_channel = type { %struct.TYPE_2__*, i32, i32, i32, i64, i32, i64, i64, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @xillybus_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xillybus_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.xilly_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.xilly_channel*, %struct.xilly_channel** %9, align 8
  store %struct.xilly_channel* %10, %struct.xilly_channel** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %13 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @poll_wait(%struct.file* %11, i32* %15, i32* %16)
  %18 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %19 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %73, label %22

22:                                               ; preds = %2
  %23 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %24 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %23, i32 0, i32 11
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %22
  %28 = load %struct.file*, %struct.file** %3, align 8
  %29 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %30 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %29, i32 0, i32 10
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @poll_wait(%struct.file* %28, i32* %30, i32* %31)
  %33 = load %struct.file*, %struct.file** %3, align 8
  %34 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %35 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %34, i32 0, i32 9
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @poll_wait(%struct.file* %33, i32* %35, i32* %36)
  %38 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %39 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %38, i32 0, i32 5
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %43 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %27
  %47 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %48 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46, %27
  %52 = load i32, i32* @EPOLLIN, align 4
  %53 = load i32, i32* @EPOLLRDNORM, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %59 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @EPOLLIN, align 4
  %64 = load i32, i32* @EPOLLRDNORM, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %70 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %69, i32 0, i32 5
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  br label %73

73:                                               ; preds = %68, %22, %2
  %74 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %75 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %73
  %79 = load %struct.file*, %struct.file** %3, align 8
  %80 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %81 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %80, i32 0, i32 3
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @poll_wait(%struct.file* %79, i32* %81, i32* %82)
  %84 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %85 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %84, i32 0, i32 1
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @spin_lock_irqsave(i32* %85, i64 %86)
  %88 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %89 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %78
  %93 = load i32, i32* @EPOLLOUT, align 4
  %94 = load i32, i32* @EPOLLWRNORM, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %92, %78
  %99 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %100 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %99, i32 0, i32 1
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  br label %103

103:                                              ; preds = %98, %73
  %104 = load %struct.xilly_channel*, %struct.xilly_channel** %5, align 8
  %105 = getelementptr inbounds %struct.xilly_channel, %struct.xilly_channel* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @EPOLLERR, align 4
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

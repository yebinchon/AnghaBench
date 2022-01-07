; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_backing_ops.c_spu_backing_mbox_stat_poll.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_backing_ops.c_spu_backing_mbox_stat_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@CLASS2_MAILBOX_INTR = common dso_local global i32 0, align 4
@CLASS2_ENABLE_MAILBOX_INTR = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@CLASS2_MAILBOX_THRESHOLD_INTR = common dso_local global i32 0, align 4
@CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_context*, i32)* @spu_backing_mbox_stat_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_backing_mbox_stat_poll(%struct.spu_context* %0, i32 %1) #0 {
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %8 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %12 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @EPOLLIN, align 4
  %18 = load i32, i32* @EPOLLRDNORM, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 16711680
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @EPOLLIN, align 4
  %28 = load i32, i32* @EPOLLRDNORM, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %48

32:                                               ; preds = %22
  %33 = load i32, i32* @CLASS2_MAILBOX_INTR, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %36 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %34
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @CLASS2_ENABLE_MAILBOX_INTR, align 4
  %42 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %43 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %41
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %32, %26
  br label %49

49:                                               ; preds = %48, %2
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @EPOLLOUT, align 4
  %52 = load i32, i32* @EPOLLWRNORM, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 65280
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @EPOLLOUT, align 4
  %62 = load i32, i32* @EPOLLWRNORM, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %5, align 4
  br label %80

64:                                               ; preds = %56
  %65 = load i32, i32* @CLASS2_MAILBOX_THRESHOLD_INTR, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %68 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %66
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @CLASS2_ENABLE_MAILBOX_THRESHOLD_INTR, align 4
  %74 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %75 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %73
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %64, %60
  br label %81

81:                                               ; preds = %80, %49
  %82 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %83 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock_irq(i32* %84)
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

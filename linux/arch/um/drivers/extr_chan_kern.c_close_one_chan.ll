; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_close_one_chan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_close_one_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan = type { i32, i64, i32, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, i64, i64, i32 }
%struct.TYPE_6__ = type { i32 (i32, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@irqs_to_free_lock = common dso_local global i32 0, align 4
@irqs_to_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chan*, i32)* @close_one_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_one_chan(%struct.chan* %0, i32 %1) #0 {
  %3 = alloca %struct.chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.chan* %0, %struct.chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.chan*, %struct.chan** %3, align 8
  %7 = getelementptr inbounds %struct.chan, %struct.chan* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %90

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @irqs_to_free_lock, i64 %15)
  %17 = load %struct.chan*, %struct.chan** %3, align 8
  %18 = getelementptr inbounds %struct.chan, %struct.chan* %17, i32 0, i32 8
  %19 = call i32 @list_add(i32* %18, i32* @irqs_to_free)
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @irqs_to_free_lock, i64 %20)
  br label %65

22:                                               ; preds = %11
  %23 = load %struct.chan*, %struct.chan** %3, align 8
  %24 = getelementptr inbounds %struct.chan, %struct.chan* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.chan*, %struct.chan** %3, align 8
  %29 = getelementptr inbounds %struct.chan, %struct.chan* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.chan*, %struct.chan** %3, align 8
  %34 = getelementptr inbounds %struct.chan, %struct.chan* %33, i32 0, i32 5
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.chan*, %struct.chan** %3, align 8
  %41 = call i32 @um_free_irq(i32 %39, %struct.chan* %40)
  br label %42

42:                                               ; preds = %32, %27, %22
  %43 = load %struct.chan*, %struct.chan** %3, align 8
  %44 = getelementptr inbounds %struct.chan, %struct.chan* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.chan*, %struct.chan** %3, align 8
  %49 = getelementptr inbounds %struct.chan, %struct.chan* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.chan*, %struct.chan** %3, align 8
  %54 = getelementptr inbounds %struct.chan, %struct.chan* %53, i32 0, i32 5
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.chan*, %struct.chan** %3, align 8
  %61 = call i32 @um_free_irq(i32 %59, %struct.chan* %60)
  br label %62

62:                                               ; preds = %52, %47, %42
  %63 = load %struct.chan*, %struct.chan** %3, align 8
  %64 = getelementptr inbounds %struct.chan, %struct.chan* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %14
  %66 = load %struct.chan*, %struct.chan** %3, align 8
  %67 = getelementptr inbounds %struct.chan, %struct.chan* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32 (i32, i32)*, i32 (i32, i32)** %69, align 8
  %71 = icmp ne i32 (i32, i32)* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %65
  %73 = load %struct.chan*, %struct.chan** %3, align 8
  %74 = getelementptr inbounds %struct.chan, %struct.chan* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (i32, i32)*, i32 (i32, i32)** %76, align 8
  %78 = load %struct.chan*, %struct.chan** %3, align 8
  %79 = getelementptr inbounds %struct.chan, %struct.chan* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.chan*, %struct.chan** %3, align 8
  %82 = getelementptr inbounds %struct.chan, %struct.chan* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %77(i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %72, %65
  %86 = load %struct.chan*, %struct.chan** %3, align 8
  %87 = getelementptr inbounds %struct.chan, %struct.chan* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load %struct.chan*, %struct.chan** %3, align 8
  %89 = getelementptr inbounds %struct.chan, %struct.chan* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 8
  br label %90

90:                                               ; preds = %85, %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @um_free_irq(i32, %struct.chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

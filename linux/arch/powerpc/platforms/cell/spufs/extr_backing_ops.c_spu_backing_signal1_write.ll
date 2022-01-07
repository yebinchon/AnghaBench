; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_backing_ops.c_spu_backing_signal1_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_backing_ops.c_spu_backing_signal1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MFC_SIGNAL_1_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_context*, i32)* @spu_backing_signal1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_backing_signal1_write(%struct.spu_context* %0, i32 %1) #0 {
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %6 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %10 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %19 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %17
  store i32 %24, i32* %22, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %28 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 %26, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %16
  %33 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %34 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 1, i32* %37, align 4
  %38 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %39 = load i32, i32* @MFC_SIGNAL_1_EVENT, align 4
  %40 = call i32 @gen_spu_event(%struct.spu_context* %38, i32 %39)
  %41 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %42 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock(i32* %43)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gen_spu_event(%struct.spu_context*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

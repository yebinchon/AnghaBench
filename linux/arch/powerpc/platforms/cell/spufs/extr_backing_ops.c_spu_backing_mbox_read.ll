; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_backing_ops.c_spu_backing_mbox_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_backing_ops.c_spu_backing_mbox_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@MFC_PU_MAILBOX_AVAILABLE_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_context*, i32*)* @spu_backing_mbox_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_backing_mbox_read(%struct.spu_context* %0, i32* %1) #0 {
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %8 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %12 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 255
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  %20 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %21 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %4, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %27 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, -256
  store i32 %31, i32* %29, align 4
  %32 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %33 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 28
  store i32 1, i32* %36, align 4
  %37 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %38 = load i32, i32* @MFC_PU_MAILBOX_AVAILABLE_EVENT, align 4
  %39 = call i32 @gen_spu_event(%struct.spu_context* %37, i32 %38)
  store i32 4, i32* %6, align 4
  br label %40

40:                                               ; preds = %19, %2
  %41 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %42 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load i32, i32* %6, align 4
  ret i32 %45
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

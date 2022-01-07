; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_hw_ops.c_spu_hw_runcntl_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_hw_ops.c_spu_hw_runcntl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SPU_RUNCNTL_ISOLATE = common dso_local global i32 0, align 4
@SPU_PRIVCNT_LOAD_REQUEST_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_context*, i32)* @spu_hw_runcntl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_hw_runcntl_write(%struct.spu_context* %0, i32 %1) #0 {
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %6 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SPU_RUNCNTL_ISOLATE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %16 = load i32, i32* @SPU_PRIVCNT_LOAD_REQUEST_ENABLE_MASK, align 4
  %17 = call i32 @spu_hw_privcntl_write(%struct.spu_context* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %20 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @out_be32(i32* %24, i32 %25)
  %27 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %28 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spu_hw_privcntl_write(%struct.spu_context*, i32) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

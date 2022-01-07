; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_sys_rawhide.c_rawhide_mask_and_ack_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_sys_rawhide.c_rawhide_mask_and_ack_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@hose_irq_masks = common dso_local global i32* null, align 8
@rawhide_irq_lock = common dso_local global i32 0, align 4
@cached_irq_masks = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @rawhide_mask_and_ack_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rawhide_mask_and_ack_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sub i32 %10, 16
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = udiv i32 %12, 24
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @hose_exists(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %55

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = mul i32 %19, 24
  %21 = load i32, i32* %6, align 4
  %22 = sub i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 1, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = xor i32 %25, -1
  %27 = load i32*, i32** @hose_irq_masks, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %26, %31
  store i32 %32, i32* %3, align 4
  %33 = call i32 @spin_lock(i32* @rawhide_irq_lock)
  %34 = load i32*, i32** @cached_irq_masks, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32*, i32** @cached_irq_masks, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @rawhide_update_irq_hw(i32 %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @MCPCIA_HOSE2MID(i32 %50)
  %52 = call i64 @MCPCIA_INT_REQ(i32 %51)
  %53 = inttoptr i64 %52 to i32*
  store i32 %49, i32* %53, align 4
  %54 = call i32 @spin_unlock(i32* @rawhide_irq_lock)
  br label %55

55:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @hose_exists(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rawhide_update_irq_hw(i32, i32) #1

declare dso_local i64 @MCPCIA_INT_REQ(i32) #1

declare dso_local i32 @MCPCIA_HOSE2MID(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

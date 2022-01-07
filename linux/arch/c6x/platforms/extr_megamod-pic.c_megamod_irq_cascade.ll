; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_megamod-pic.c_megamod_irq_cascade.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_megamod-pic.c_megamod_irq_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.megamod_cascade_data = type { i32, %struct.megamod_pic* }
%struct.megamod_pic = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @megamod_irq_cascade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megamod_irq_cascade(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.megamod_cascade_data*, align 8
  %4 = alloca %struct.megamod_pic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.megamod_cascade_data* @irq_desc_get_handler_data(%struct.irq_desc* %9)
  store %struct.megamod_cascade_data* %10, %struct.megamod_cascade_data** %3, align 8
  %11 = load %struct.megamod_cascade_data*, %struct.megamod_cascade_data** %3, align 8
  %12 = getelementptr inbounds %struct.megamod_cascade_data, %struct.megamod_cascade_data* %11, i32 0, i32 1
  %13 = load %struct.megamod_pic*, %struct.megamod_pic** %12, align 8
  store %struct.megamod_pic* %13, %struct.megamod_pic** %4, align 8
  %14 = load %struct.megamod_cascade_data*, %struct.megamod_cascade_data** %3, align 8
  %15 = getelementptr inbounds %struct.megamod_cascade_data, %struct.megamod_cascade_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %28, %1
  %18 = load %struct.megamod_pic*, %struct.megamod_pic** %4, align 8
  %19 = getelementptr inbounds %struct.megamod_pic, %struct.megamod_pic* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @soc_readl(i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @__ffs(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.megamod_pic*, %struct.megamod_pic** %4, align 8
  %32 = getelementptr inbounds %struct.megamod_pic, %struct.megamod_pic* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %34, 32
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @irq_linear_revmap(i32 %33, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 1, %39
  %41 = load %struct.megamod_pic*, %struct.megamod_pic** %4, align 8
  %42 = getelementptr inbounds %struct.megamod_pic, %struct.megamod_pic* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @soc_writel(i32 %40, i32* %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @generic_handle_irq(i32 %50)
  br label %17

52:                                               ; preds = %17
  ret void
}

declare dso_local %struct.megamod_cascade_data* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @soc_readl(i32*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @soc_writel(i32, i32*) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

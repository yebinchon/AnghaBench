; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_xive_irq_bitmap_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/xive/extr_spapr.c_xive_irq_bitmap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_irq_bitmap = type { i32, i32, i32, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xive_irq_bitmaps = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Using IRQ range [%x-%x]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @xive_irq_bitmap_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xive_irq_bitmap_add(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xive_irq_bitmap*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 32, i32 %7)
  %9 = bitcast i8* %8 to %struct.xive_irq_bitmap*
  store %struct.xive_irq_bitmap* %9, %struct.xive_irq_bitmap** %6, align 8
  %10 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %6, align 8
  %11 = icmp ne %struct.xive_irq_bitmap* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %6, align 8
  %17 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %16, i32 0, i32 4
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %6, align 8
  %21 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %6, align 8
  %24 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %6, align 8
  %26 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kzalloc(i32 %27, i32 %28)
  %30 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %6, align 8
  %31 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %6, align 8
  %33 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %15
  %37 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %6, align 8
  %38 = call i32 @kfree(%struct.xive_irq_bitmap* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %57

41:                                               ; preds = %15
  %42 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %6, align 8
  %43 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %42, i32 0, i32 2
  %44 = call i32 @list_add(i32* %43, i32* @xive_irq_bitmaps)
  %45 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %6, align 8
  %46 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %6, align 8
  %49 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.xive_irq_bitmap*, %struct.xive_irq_bitmap** %6, align 8
  %52 = getelementptr inbounds %struct.xive_irq_bitmap, %struct.xive_irq_bitmap* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %41, %36, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfree(%struct.xive_irq_bitmap*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

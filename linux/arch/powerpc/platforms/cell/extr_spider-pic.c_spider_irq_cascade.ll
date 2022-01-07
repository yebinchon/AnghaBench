; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spider-pic.c_spider_irq_cascade.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_spider-pic.c_spider_irq_cascade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_chip = type { i32 (i32*)* }
%struct.spider_pic = type { i32, i64 }

@TIR_CS = common dso_local global i64 0, align 8
@SPIDER_IRQ_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @spider_irq_cascade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_irq_cascade(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.spider_pic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %7)
  store %struct.irq_chip* %8, %struct.irq_chip** %3, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.spider_pic* @irq_desc_get_handler_data(%struct.irq_desc* %9)
  store %struct.spider_pic* %10, %struct.spider_pic** %4, align 8
  %11 = load %struct.spider_pic*, %struct.spider_pic** %4, align 8
  %12 = getelementptr inbounds %struct.spider_pic, %struct.spider_pic* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TIR_CS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @in_be32(i64 %15)
  %17 = ashr i32 %16, 24
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SPIDER_IRQ_INVALID, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.spider_pic*, %struct.spider_pic** %4, align 8
  %24 = getelementptr inbounds %struct.spider_pic, %struct.spider_pic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @irq_linear_revmap(i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %22, %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @generic_handle_irq(i32 %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %36 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %35, i32 0, i32 0
  %37 = load i32 (i32*)*, i32 (i32*)** %36, align 8
  %38 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %39 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %38, i32 0, i32 0
  %40 = call i32 %37(i32* %39)
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local %struct.spider_pic* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

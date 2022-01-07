; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_megamod-pic.c_megamod_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/platforms/extr_megamod-pic.c_megamod_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.megamod_pic* }
%struct.megamod_pic = type { i64* }

@NR_MUX_OUTPUTS = common dso_local global i32 0, align 4
@megamod_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @megamod_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megamod_map(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.megamod_pic*, align 8
  %9 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %11 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %10, i32 0, i32 0
  %12 = load %struct.megamod_pic*, %struct.megamod_pic** %11, align 8
  store %struct.megamod_pic* %12, %struct.megamod_pic** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %29, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @NR_MUX_OUTPUTS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load %struct.megamod_pic*, %struct.megamod_pic** %8, align 8
  %19 = getelementptr inbounds %struct.megamod_pic, %struct.megamod_pic* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %42

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %13

32:                                               ; preds = %13
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.megamod_pic*, %struct.megamod_pic** %8, align 8
  %35 = call i32 @irq_set_chip_data(i32 %33, %struct.megamod_pic* %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @handle_level_irq, align 4
  %38 = call i32 @irq_set_chip_and_handler(i32 %36, i32* @megamod_chip, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %41 = call i32 @irq_set_irq_type(i32 %39, i32 %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %32, %27
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @irq_set_chip_data(i32, %struct.megamod_pic*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_gpio_xlat.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_gpio_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Error: (%pOFn) Invalid irq trigger specification: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)* @octeon_irq_gpio_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_irq_gpio_xlat(%struct.irq_domain* %0, %struct.device_node* %1, i32* %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_domain*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %8, align 8
  store %struct.device_node* %1, %struct.device_node** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.irq_domain*, %struct.irq_domain** %8, align 8
  %18 = call %struct.device_node* @irq_domain_get_of_node(%struct.irq_domain* %17)
  %19 = load %struct.device_node*, %struct.device_node** %9, align 8
  %20 = icmp ne %struct.device_node* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %63

24:                                               ; preds = %6
  %25 = load i32, i32* %11, align 4
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %63

30:                                               ; preds = %24
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp uge i32 %34, 16
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %63

39:                                               ; preds = %30
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  switch i32 %43, label %52 [
    i32 1, label %44
    i32 2, label %46
    i32 4, label %48
    i32 8, label %50
  ]

44:                                               ; preds = %39
  %45 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  store i32 %45, i32* %14, align 4
  br label %57

46:                                               ; preds = %39
  %47 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  store i32 %47, i32* %14, align 4
  br label %57

48:                                               ; preds = %39
  %49 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  store i32 %49, i32* %14, align 4
  br label %57

50:                                               ; preds = %39
  %51 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  store i32 %51, i32* %14, align 4
  br label %57

52:                                               ; preds = %39
  %53 = load %struct.device_node*, %struct.device_node** %9, align 8
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.device_node* %53, i32 %54)
  %56 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %52, %50, %48, %46, %44
  %58 = load i32, i32* %14, align 4
  %59 = load i32*, i32** %13, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %15, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64*, i64** %12, align 8
  store i64 %61, i64* %62, align 8
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %57, %36, %27, %21
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.device_node* @irq_domain_get_of_node(%struct.irq_domain*) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

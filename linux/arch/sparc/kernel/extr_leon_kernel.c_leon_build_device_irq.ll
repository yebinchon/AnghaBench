; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_kernel.c_leon_build_device_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_kernel.c_leon_build_device_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i64 }

@LEON_DO_ACK_HW = common dso_local global i64 0, align 8
@handle_bad_irq = common dso_local global i64 0, align 8
@leon_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @leon_build_device_irq(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @leon_get_irqmask(i32 %12)
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %57

17:                                               ; preds = %4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @irq_alloc(i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %57

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* @LEON_DO_ACK_HW, align 8
  %29 = load i64, i64* %10, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.irq_desc* @irq_to_desc(i32 %32)
  store %struct.irq_desc* %33, %struct.irq_desc** %11, align 8
  %34 = load %struct.irq_desc*, %struct.irq_desc** %11, align 8
  %35 = icmp ne %struct.irq_desc* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.irq_desc*, %struct.irq_desc** %11, align 8
  %38 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.irq_desc*, %struct.irq_desc** %11, align 8
  %43 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @handle_bad_irq, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41, %36, %31
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @irq_set_chip_and_handler_name(i32 %48, i32* @leon_irq, i32 %49, i8* %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i64, i64* %10, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @irq_set_chip_data(i32 %52, i8* %54)
  br label %56

56:                                               ; preds = %47, %41
  br label %57

57:                                               ; preds = %56, %23, %16
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i64 @leon_get_irqmask(i32) #1

declare dso_local i32 @irq_alloc(i32, i32) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @irq_set_chip_and_handler_name(i32, i32*, i32, i8*) #1

declare dso_local i32 @irq_set_chip_data(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

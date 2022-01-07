; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/85xx/extr_socrates_fpga_pic.c_socrates_fpga_pic_host_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/85xx/extr_socrates_fpga_pic.c_socrates_fpga_pic_host_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socrates_fpga_irq_info = type { i32, i64 }
%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }

@fpga_irqs = common dso_local global %struct.socrates_fpga_irq_info* null, align 8
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i64 0, align 8
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"FPGA PIC: invalid irq type, setting default active low\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"FPGA PIC: invalid irq routing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.device_node*, i64*, i32, i64*, i32*)* @socrates_fpga_pic_host_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socrates_fpga_pic_host_xlate(%struct.irq_domain* %0, %struct.device_node* %1, i64* %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca %struct.irq_domain*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.socrates_fpga_irq_info*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.socrates_fpga_irq_info*, %struct.socrates_fpga_irq_info** @fpga_irqs, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.socrates_fpga_irq_info, %struct.socrates_fpga_irq_info* %14, i64 %17
  store %struct.socrates_fpga_irq_info* %18, %struct.socrates_fpga_irq_info** %13, align 8
  %19 = load i64*, i64** %9, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %11, align 8
  store i64 %21, i64* %22, align 8
  %23 = load %struct.socrates_fpga_irq_info*, %struct.socrates_fpga_irq_info** %13, align 8
  %24 = getelementptr inbounds %struct.socrates_fpga_irq_info, %struct.socrates_fpga_irq_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %6
  %29 = load i64*, i64** %9, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IRQ_TYPE_LEVEL_LOW, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load i64*, i64** %9, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IRQ_TYPE_LEVEL_HIGH, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %42 = load i64, i64* @IRQ_TYPE_LEVEL_LOW, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %12, align 8
  store i32 %43, i32* %44, align 4
  br label %51

45:                                               ; preds = %34, %28
  %46 = load i64*, i64** %9, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %12, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %40
  br label %57

52:                                               ; preds = %6
  %53 = load %struct.socrates_fpga_irq_info*, %struct.socrates_fpga_irq_info** %13, align 8
  %54 = getelementptr inbounds %struct.socrates_fpga_irq_info, %struct.socrates_fpga_irq_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %51
  %58 = load i64*, i64** %9, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ule i64 %60, 2
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i64*, i64** %9, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.socrates_fpga_irq_info*, %struct.socrates_fpga_irq_info** %13, align 8
  %67 = getelementptr inbounds %struct.socrates_fpga_irq_info, %struct.socrates_fpga_irq_info* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %70

68:                                               ; preds = %57
  %69 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %62
  ret i32 0
}

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

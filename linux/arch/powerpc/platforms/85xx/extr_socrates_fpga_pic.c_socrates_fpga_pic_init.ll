; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/85xx/extr_socrates_fpga_pic.c_socrates_fpga_pic_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/85xx/extr_socrates_fpga_pic.c_socrates_fpga_pic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@SOCRATES_FPGA_NUM_IRQS = common dso_local global i32 0, align 4
@socrates_fpga_pic_host_ops = common dso_local global i32 0, align 4
@socrates_fpga_pic_irq_host = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"FPGA PIC: Unable to allocate host\0A\00", align 1
@socrates_fpga_irqs = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"FPGA PIC: can't get irq%d\0A\00", align 1
@socrates_fpga_pic_cascade = common dso_local global i32 0, align 4
@socrates_fpga_pic_iobase = common dso_local global i32 0, align 4
@socrates_fpga_pic_lock = common dso_local global i32 0, align 4
@SOCRATES_FPGA_IRQ_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"FPGA PIC: Setting up Socrates FPGA PIC\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @socrates_fpga_pic_init(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %5 = load %struct.device_node*, %struct.device_node** %2, align 8
  %6 = load i32, i32* @SOCRATES_FPGA_NUM_IRQS, align 4
  %7 = call i32* @irq_domain_add_linear(%struct.device_node* %5, i32 %6, i32* @socrates_fpga_pic_host_ops, i32* null)
  store i32* %7, i32** @socrates_fpga_pic_irq_host, align 8
  %8 = load i32*, i32** @socrates_fpga_pic_irq_host, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %64

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %41, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load %struct.device_node*, %struct.device_node** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @irq_of_parse_and_map(%struct.device_node* %17, i32 %18)
  %20 = load i32*, i32** @socrates_fpga_irqs, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %19, i32* %23, align 4
  %24 = load i32*, i32** @socrates_fpga_irqs, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %41

33:                                               ; preds = %16
  %34 = load i32*, i32** @socrates_fpga_irqs, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @socrates_fpga_pic_cascade, align 4
  %40 = call i32 @irq_set_chained_handler(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %30
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %13

44:                                               ; preds = %13
  %45 = load %struct.device_node*, %struct.device_node** %2, align 8
  %46 = call i32 @of_iomap(%struct.device_node* %45, i32 0)
  store i32 %46, i32* @socrates_fpga_pic_iobase, align 4
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @raw_spin_lock_irqsave(i32* @socrates_fpga_pic_lock, i64 %47)
  %49 = call i32 @FPGA_PIC_IRQMASK(i32 0)
  %50 = load i32, i32* @SOCRATES_FPGA_IRQ_MASK, align 4
  %51 = shl i32 %50, 16
  %52 = call i32 @socrates_fpga_pic_write(i32 %49, i32 %51)
  %53 = call i32 @FPGA_PIC_IRQMASK(i32 1)
  %54 = load i32, i32* @SOCRATES_FPGA_IRQ_MASK, align 4
  %55 = shl i32 %54, 16
  %56 = call i32 @socrates_fpga_pic_write(i32 %53, i32 %55)
  %57 = call i32 @FPGA_PIC_IRQMASK(i32 2)
  %58 = load i32, i32* @SOCRATES_FPGA_IRQ_MASK, align 4
  %59 = shl i32 %58, 16
  %60 = call i32 @socrates_fpga_pic_write(i32 %57, i32 %59)
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @raw_spin_unlock_irqrestore(i32* @socrates_fpga_pic_lock, i64 %61)
  %63 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %44, %10
  ret void
}

declare dso_local i32* @irq_domain_add_linear(%struct.device_node*, i32, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @irq_set_chained_handler(i32, i32) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @socrates_fpga_pic_write(i32, i32) #1

declare dso_local i32 @FPGA_PIC_IRQMASK(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

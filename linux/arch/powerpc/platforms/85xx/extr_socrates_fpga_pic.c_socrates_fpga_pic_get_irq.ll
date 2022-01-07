; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/85xx/extr_socrates_fpga_pic.c_socrates_fpga_pic_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/85xx/extr_socrates_fpga_pic.c_socrates_fpga_pic_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@socrates_fpga_irqs = common dso_local global i32* null, align 8
@socrates_fpga_pic_lock = common dso_local global i32 0, align 4
@SOCRATES_FPGA_NUM_IRQS = common dso_local global i32 0, align 4
@socrates_fpga_pic_irq_host = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @socrates_fpga_pic_get_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socrates_fpga_pic_get_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = load i32*, i32** @socrates_fpga_irqs, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %23

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %7

23:                                               ; preds = %18, %7
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %55

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @raw_spin_lock_irqsave(i32* @socrates_fpga_pic_lock, i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @FPGA_PIC_IRQMASK(i32 %30)
  %32 = call i32 @socrates_fpga_pic_read(i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @raw_spin_unlock_irqrestore(i32* @socrates_fpga_pic_lock, i64 %33)
  %35 = load i32, i32* @SOCRATES_FPGA_NUM_IRQS, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %48, %27
  %38 = load i32, i32* %6, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 16
  %44 = ashr i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %51

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %6, align 4
  br label %37

51:                                               ; preds = %46, %37
  %52 = load i32, i32* @socrates_fpga_pic_irq_host, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @irq_linear_revmap(i32 %52, i32 %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %26
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @socrates_fpga_pic_read(i32) #1

declare dso_local i32 @FPGA_PIC_IRQMASK(i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

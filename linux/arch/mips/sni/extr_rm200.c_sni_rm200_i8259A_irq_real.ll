; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sni/extr_rm200.c_sni_rm200_i8259A_irq_real.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sni/extr_rm200.c_sni_rm200_i8259A_irq_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rm200_pic_master = common dso_local global i64 0, align 8
@PIC_CMD = common dso_local global i64 0, align 8
@rm200_pic_slave = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sni_rm200_i8259A_irq_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sni_rm200_i8259A_irq_real(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = shl i32 1, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load i64, i64* @rm200_pic_master, align 8
  %12 = load i64, i64* @PIC_CMD, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writeb(i32 11, i64 %13)
  %15 = load i64, i64* @rm200_pic_master, align 8
  %16 = load i64, i64* @PIC_CMD, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readb(i64 %17)
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load i64, i64* @rm200_pic_master, align 8
  %22 = load i64, i64* @PIC_CMD, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writeb(i32 10, i64 %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %1
  %27 = load i64, i64* @rm200_pic_slave, align 8
  %28 = load i64, i64* @PIC_CMD, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writeb(i32 11, i64 %29)
  %31 = load i64, i64* @rm200_pic_slave, align 8
  %32 = load i64, i64* @PIC_CMD, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readb(i64 %33)
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %34, %36
  store i32 %37, i32* %4, align 4
  %38 = load i64, i64* @rm200_pic_slave, align 8
  %39 = load i64, i64* @PIC_CMD, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writeb(i32 10, i64 %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %26, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

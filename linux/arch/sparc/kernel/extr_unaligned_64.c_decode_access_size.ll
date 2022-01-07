; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_unaligned_64.c_decode_access_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_unaligned_64.c_decode_access_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Impossible unaligned trap. insn=%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Byte sized unaligned access?!?!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @decode_access_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_access_size(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = lshr i32 %7, 19
  %9 = and i32 %8, 15
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 11
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 14
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 8, i32* %3, align 4
  br label %35

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 3
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 4, i32* %3, align 4
  br label %35

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 16, i32* %3, align 4
  br label %35

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 2, i32* %3, align 4
  br label %35

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %34 = call i32 @die_if_kernel(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.pt_regs* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %29, %25, %21, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @die_if_kernel(i8*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

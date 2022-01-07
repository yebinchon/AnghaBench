; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_sstep.c_write_mem.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_sstep.c_write_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, %struct.pt_regs*)* @write_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_mem(i64 %0, i64 %1, i32 %2, %struct.pt_regs* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.pt_regs* %3, %struct.pt_regs** %9, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @address_ok(%struct.pt_regs* %10, i64 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %37

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = and i64 %19, %22
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %30 = call i32 @write_mem_aligned(i64 %26, i64 %27, i32 %28, %struct.pt_regs* %29)
  store i32 %30, i32* %5, align 4
  br label %37

31:                                               ; preds = %18
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %36 = call i32 @write_mem_unaligned(i64 %32, i64 %33, i32 %34, %struct.pt_regs* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %25, %15
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @address_ok(%struct.pt_regs*, i64, i32) #1

declare dso_local i32 @write_mem_aligned(i64, i64, i32, %struct.pt_regs*) #1

declare dso_local i32 @write_mem_unaligned(i64, i64, i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

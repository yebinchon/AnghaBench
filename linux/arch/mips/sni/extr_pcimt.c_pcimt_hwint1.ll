; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sni/extr_pcimt.c_pcimt_hwint1.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sni/extr_pcimt.c_pcimt_hwint1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCIMT_CSITPEND = common dso_local global i64 0, align 8
@IT_EISA = common dso_local global i32 0, align 4
@IT_SCSI = common dso_local global i32 0, align 4
@ST0_IM = common dso_local global i32 0, align 4
@PCIMT_IRQ_SCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pcimt_hwint1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcimt_hwint1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @PCIMT_CSITPEND, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = load volatile i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @IT_EISA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %0
  %13 = call i32 (...) @i8259_irq()
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %36

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @do_IRQ(i32 %21)
  br label %23

23:                                               ; preds = %20, %0
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @IT_SCSI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = call i64 (...) @read_c0_status()
  store i64 %29, i64* %2, align 8
  %30 = load i32, i32* @ST0_IM, align 4
  %31 = call i32 @clear_c0_status(i32 %30)
  %32 = load i32, i32* @PCIMT_IRQ_SCSI, align 4
  %33 = call i32 @do_IRQ(i32 %32)
  %34 = load i64, i64* %2, align 8
  %35 = call i32 @write_c0_status(i64 %34)
  br label %36

36:                                               ; preds = %19, %28, %23
  ret void
}

declare dso_local i32 @i8259_irq(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @do_IRQ(i32) #1

declare dso_local i64 @read_c0_status(...) #1

declare dso_local i32 @clear_c0_status(i32) #1

declare dso_local i32 @write_c0_status(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

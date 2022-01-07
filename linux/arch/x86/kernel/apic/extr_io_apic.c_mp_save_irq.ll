; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_mp_save_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_mp_save_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_intsrc = type { i32, i32, i32, i32, i32, i32 }

@APIC_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Int: type %d, pol %d, trig %d, bus %02x, IRQ %02x, APIC ID %x, APIC INT %02x\0A\00", align 1
@mp_irq_entries = common dso_local global i32 0, align 4
@mp_irqs = common dso_local global i32* null, align 8
@MAX_IRQ_SOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Max # of irq sources exceeded!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_save_irq(%struct.mpc_intsrc* %0) #0 {
  %2 = alloca %struct.mpc_intsrc*, align 8
  %3 = alloca i32, align 4
  store %struct.mpc_intsrc* %0, %struct.mpc_intsrc** %2, align 8
  %4 = load i32, i32* @APIC_VERBOSE, align 4
  %5 = load %struct.mpc_intsrc*, %struct.mpc_intsrc** %2, align 8
  %6 = getelementptr inbounds %struct.mpc_intsrc, %struct.mpc_intsrc* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mpc_intsrc*, %struct.mpc_intsrc** %2, align 8
  %9 = getelementptr inbounds %struct.mpc_intsrc, %struct.mpc_intsrc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 3
  %12 = load %struct.mpc_intsrc*, %struct.mpc_intsrc** %2, align 8
  %13 = getelementptr inbounds %struct.mpc_intsrc, %struct.mpc_intsrc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 2
  %16 = and i32 %15, 3
  %17 = load %struct.mpc_intsrc*, %struct.mpc_intsrc** %2, align 8
  %18 = getelementptr inbounds %struct.mpc_intsrc, %struct.mpc_intsrc* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mpc_intsrc*, %struct.mpc_intsrc** %2, align 8
  %21 = getelementptr inbounds %struct.mpc_intsrc, %struct.mpc_intsrc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mpc_intsrc*, %struct.mpc_intsrc** %2, align 8
  %24 = getelementptr inbounds %struct.mpc_intsrc, %struct.mpc_intsrc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mpc_intsrc*, %struct.mpc_intsrc** %2, align 8
  %27 = getelementptr inbounds %struct.mpc_intsrc, %struct.mpc_intsrc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @apic_printk(i32 %4, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %11, i32 %16, i32 %19, i32 %22, i32 %25, i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %44, %1
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @mp_irq_entries, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load i32*, i32** @mp_irqs, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.mpc_intsrc*, %struct.mpc_intsrc** %2, align 8
  %40 = call i32 @memcmp(i32* %38, %struct.mpc_intsrc* %39, i32 24)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %60

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %30

47:                                               ; preds = %30
  %48 = load i32*, i32** @mp_irqs, align 8
  %49 = load i32, i32* @mp_irq_entries, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load %struct.mpc_intsrc*, %struct.mpc_intsrc** %2, align 8
  %53 = call i32 @memcpy(i32* %51, %struct.mpc_intsrc* %52, i32 24)
  %54 = load i32, i32* @mp_irq_entries, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @mp_irq_entries, align 4
  %56 = load i32, i32* @MAX_IRQ_SOURCES, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %42, %58, %47
  ret void
}

declare dso_local i32 @apic_printk(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcmp(i32*, %struct.mpc_intsrc*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mpc_intsrc*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

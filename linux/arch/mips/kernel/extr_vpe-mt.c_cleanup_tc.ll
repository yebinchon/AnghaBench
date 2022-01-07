; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vpe-mt.c_cleanup_tc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vpe-mt.c_cleanup_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc = type { i32 }

@MVPCONTROL_VPC = common dso_local global i32 0, align 4
@TCSTATUS_A = common dso_local global i32 0, align 4
@TCSTATUS_DA = common dso_local global i32 0, align 4
@TCSTATUS_IXMT = common dso_local global i32 0, align 4
@TCHALT_H = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup_tc(%struct.tc* %0) #0 {
  %2 = alloca %struct.tc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tc* %0, %struct.tc** %2, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = call i32 (...) @dmt()
  store i32 %9, i32* %4, align 4
  %10 = call i32 (...) @dvpe()
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @MVPCONTROL_VPC, align 4
  %12 = call i32 @set_c0_mvpcontrol(i32 %11)
  %13 = load %struct.tc*, %struct.tc** %2, align 8
  %14 = getelementptr inbounds %struct.tc, %struct.tc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @settc(i32 %15)
  %17 = call i32 (...) @read_tc_c0_tcstatus()
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @TCSTATUS_A, align 4
  %19 = load i32, i32* @TCSTATUS_DA, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @TCSTATUS_IXMT, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @write_tc_c0_tcstatus(i32 %27)
  %29 = load i32, i32* @TCHALT_H, align 4
  %30 = call i32 @write_tc_c0_tchalt(i32 %29)
  %31 = call i32 (...) @mips_ihb()
  %32 = load i32, i32* @MVPCONTROL_VPC, align 4
  %33 = call i32 @clear_c0_mvpcontrol(i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @evpe(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @emt(i32 %36)
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @local_irq_restore(i64 %38)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @dmt(...) #1

declare dso_local i32 @dvpe(...) #1

declare dso_local i32 @set_c0_mvpcontrol(i32) #1

declare dso_local i32 @settc(i32) #1

declare dso_local i32 @read_tc_c0_tcstatus(...) #1

declare dso_local i32 @write_tc_c0_tcstatus(i32) #1

declare dso_local i32 @write_tc_c0_tchalt(i32) #1

declare dso_local i32 @mips_ihb(...) #1

declare dso_local i32 @clear_c0_mvpcontrol(i32) #1

declare dso_local i32 @evpe(i32) #1

declare dso_local i32 @emt(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

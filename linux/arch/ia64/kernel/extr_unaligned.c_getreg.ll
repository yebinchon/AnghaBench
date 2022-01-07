; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_unaligned.c_getreg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_unaligned.c_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.switch_stack = type { i64, i64 }

@IA64_FIRST_STACKED_GR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"addr_base=%lx offset=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, i32*, %struct.pt_regs*)* @getreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getreg(i64 %0, i64* %1, i32* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca %struct.switch_stack*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %13 = bitcast %struct.pt_regs* %12 to %struct.switch_stack*
  %14 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %13, i64 -1
  store %struct.switch_stack* %14, %struct.switch_stack** %9, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @IA64_FIRST_STACKED_GR, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @get_rse_reg(%struct.pt_regs* %19, i64 %20, i64* %21, i32* %22)
  br label %73

24:                                               ; preds = %4
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i64*, i64** %6, align 8
  store i64 0, i64* %28, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %27
  br label %73

34:                                               ; preds = %24
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @GR_IN_SW(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %40 = ptrtoint %struct.switch_stack* %39 to i64
  store i64 %40, i64* %10, align 8
  %41 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %42 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %41, i32 0, i32 0
  store i64* %42, i64** %11, align 8
  br label %48

43:                                               ; preds = %34
  %44 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %45 = ptrtoint %struct.pt_regs* %44 to i64
  store i64 %45, i64* %10, align 8
  %46 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %47 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %46, i32 0, i32 1
  store i64* %47, i64** %11, align 8
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @GR_OFFS(i64 %50)
  %52 = call i32 @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %51)
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @GR_OFFS(i64 %53)
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = inttoptr i64 %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %6, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %48
  %64 = load i64*, i64** %11, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = lshr i64 %66, 3
  %68 = and i64 %67, 63
  %69 = lshr i64 %65, %68
  %70 = and i64 %69, 1
  %71 = trunc i64 %70 to i32
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %18, %33, %63, %48
  ret void
}

declare dso_local i32 @get_rse_reg(%struct.pt_regs*, i64, i64*, i32*) #1

declare dso_local i64 @GR_IN_SW(i64) #1

declare dso_local i32 @DPRINT(i8*, i64, i64) #1

declare dso_local i64 @GR_OFFS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_unaligned_64.c_fetch_reg_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_unaligned_64.c_fetch_reg_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64*, i32 }
%struct.reg_window = type { i64* }
%struct.reg_window32 = type { i32* }

@UREG_FP = common dso_local global i64 0, align 8
@TSTATE_PRIV = common dso_local global i32 0, align 4
@STACK_BIAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32, %struct.pt_regs*)* @fetch_reg_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @fetch_reg_addr(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.reg_window*, align 8
  %8 = alloca %struct.reg_window32*, align 8
  %9 = alloca %struct.reg_window*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %10, 16
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64* %18, i64** %3, align 8
  br label %71

19:                                               ; preds = %2
  %20 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @UREG_FP, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TSTATE_PRIV, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %19
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @STACK_BIAS, align 8
  %35 = add i64 %33, %34
  %36 = inttoptr i64 %35 to %struct.reg_window*
  store %struct.reg_window* %36, %struct.reg_window** %7, align 8
  %37 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %38 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sub i32 %40, 16
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  store i64* %43, i64** %3, align 8
  br label %71

44:                                               ; preds = %19
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @test_thread_64bit_stack(i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %6, align 8
  %50 = inttoptr i64 %49 to %struct.reg_window32*
  store %struct.reg_window32* %50, %struct.reg_window32** %8, align 8
  %51 = load %struct.reg_window32*, %struct.reg_window32** %8, align 8
  %52 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sub i32 %54, 16
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = bitcast i32* %57 to i64*
  store i64* %58, i64** %3, align 8
  br label %71

59:                                               ; preds = %44
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @STACK_BIAS, align 8
  %62 = add i64 %60, %61
  %63 = inttoptr i64 %62 to %struct.reg_window*
  store %struct.reg_window* %63, %struct.reg_window** %9, align 8
  %64 = load %struct.reg_window*, %struct.reg_window** %9, align 8
  %65 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sub i32 %67, 16
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  store i64* %70, i64** %3, align 8
  br label %71

71:                                               ; preds = %59, %48, %32, %12
  %72 = load i64*, i64** %3, align 8
  ret i64* %72
}

declare dso_local i32 @test_thread_64bit_stack(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

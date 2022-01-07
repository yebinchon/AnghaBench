; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_visemul.c_bshuffle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_visemul.c_bshuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpustate = type { i32 }
%struct.pt_regs = type { i32 }
%struct.TYPE_2__ = type { i64* }

@FPUSTATE = common dso_local global %struct.fpustate* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32)* @bshuffle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bshuffle(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpustate*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.fpustate*, %struct.fpustate** @FPUSTATE, align 8
  store %struct.fpustate* %13, %struct.fpustate** %5, align 8
  %14 = call %struct.TYPE_2__* (...) @current_thread_info()
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = lshr i64 %18, 32
  store i64 %19, i64* %9, align 8
  %20 = load %struct.fpustate*, %struct.fpustate** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @RS1(i32 %21)
  %23 = call i64 @fpd_regval(%struct.fpustate* %20, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.fpustate*, %struct.fpustate** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @RS2(i32 %25)
  %27 = call i64 @fpd_regval(%struct.fpustate* %24, i32 %26)
  store i64 %27, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %59, %2
  %29 = load i64, i64* %10, align 8
  %30 = icmp ult i64 %29, 8
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = mul i64 %33, 4
  %35 = lshr i64 %32, %34
  %36 = and i64 %35, 15
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ult i64 %37, 8
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %11, align 8
  %42 = mul i64 %41, 8
  %43 = lshr i64 %40, %42
  %44 = and i64 %43, 255
  store i64 %44, i64* %12, align 8
  br label %52

45:                                               ; preds = %31
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %11, align 8
  %48 = sub i64 %47, 8
  %49 = mul i64 %48, 8
  %50 = lshr i64 %46, %49
  %51 = and i64 %50, 255
  store i64 %51, i64* %12, align 8
  br label %52

52:                                               ; preds = %45, %39
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %10, align 8
  %55 = mul i64 %54, 8
  %56 = shl i64 %53, %55
  %57 = load i64, i64* %8, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %52
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %28

62:                                               ; preds = %28
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.fpustate*, %struct.fpustate** %5, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @RD(i32 %65)
  %67 = call i64* @fpd_regaddr(%struct.fpustate* %64, i32 %66)
  store i64 %63, i64* %67, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

declare dso_local i64 @fpd_regval(%struct.fpustate*, i32) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @RS2(i32) #1

declare dso_local i64* @fpd_regaddr(%struct.fpustate*, i32) #1

declare dso_local i32 @RD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

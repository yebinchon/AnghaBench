; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_visemul.c_pdist.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_visemul.c_pdist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpustate = type { i32 }
%struct.pt_regs = type { i32 }

@FPUSTATE = common dso_local global %struct.fpustate* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32)* @pdist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdist(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpustate*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.fpustate*, %struct.fpustate** @FPUSTATE, align 8
  store %struct.fpustate* %13, %struct.fpustate** %5, align 8
  %14 = load %struct.fpustate*, %struct.fpustate** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @RS1(i32 %15)
  %17 = call i64 @fpd_regval(%struct.fpustate* %14, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.fpustate*, %struct.fpustate** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @RS2(i32 %19)
  %21 = call i64 @fpd_regval(%struct.fpustate* %18, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.fpustate*, %struct.fpustate** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @RD(i32 %23)
  %25 = call i64* @fpd_regaddr(%struct.fpustate* %22, i32 %24)
  store i64* %25, i64** %8, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %60, %2
  %29 = load i64, i64* %10, align 8
  %30 = icmp ult i64 %29, 8
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %10, align 8
  %34 = mul i64 %33, 8
  %35 = sub i64 56, %34
  %36 = lshr i64 %32, %35
  %37 = and i64 %36, 255
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %10, align 8
  %41 = mul i64 %40, 8
  %42 = sub i64 56, %41
  %43 = lshr i64 %39, %42
  %44 = and i64 %43, 255
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %31
  %52 = load i32, i32* %11, align 4
  %53 = xor i32 %52, -1
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %31
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %28

63:                                               ; preds = %28
  %64 = load i64, i64* %9, align 8
  %65 = load i64*, i64** %8, align 8
  store i64 %64, i64* %65, align 8
  ret void
}

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

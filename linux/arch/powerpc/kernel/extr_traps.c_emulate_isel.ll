; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_emulate_isel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_emulate_isel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @emulate_isel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_isel(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 21
  %13 = and i32 %12, 31
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 16
  %17 = and i32 %16, 31
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 11
  %21 = and i32 %20, 31
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 6
  %25 = and i32 %24, 31
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  br label %37

37:                                               ; preds = %30, %29
  %38 = phi i64 [ 0, %29 ], [ %36, %30 ]
  store i64 %38, i64* %10, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 31, %42
  %44 = trunc i64 %43 to i32
  %45 = ashr i32 %41, %44
  %46 = and i32 %45, 1
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i64, i64* %10, align 8
  br label %59

52:                                               ; preds = %37
  %53 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  br label %59

59:                                               ; preds = %52, %50
  %60 = phi i64 [ %51, %50 ], [ %58, %52 ]
  %61 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %60, i64* %65, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

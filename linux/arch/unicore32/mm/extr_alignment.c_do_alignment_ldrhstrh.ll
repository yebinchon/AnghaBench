; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_alignment.c_do_alignment_ldrhstrh.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_alignment.c_do_alignment_ldrhstrh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }

@TYPE_LDST = common dso_local global i32 0, align 4
@TYPE_SWAP = common dso_local global i32 0, align 4
@TYPE_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.pt_regs*)* @do_alignment_ldrhstrh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_alignment_ldrhstrh(i64 %0, i64 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @RD_BITS(i64 %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  %14 = and i64 %13, 1258307552
  %15 = icmp eq i64 %14, 1073742112
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %52

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @LDST_L_BIT(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @get16_unaligned_check(i64 %22, i64 %23)
  %25 = load i64, i64* %6, align 8
  %26 = and i64 %25, 128
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i16
  %31 = sext i16 %30 to i64
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %28, %21
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 %33, i64* %39, align 8
  br label %50

40:                                               ; preds = %17
  %41 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @put16_unaligned_check(i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %40, %32
  %51 = load i32, i32* @TYPE_LDST, align 4
  store i32 %51, i32* %4, align 4
  br label %74

52:                                               ; preds = %16
  %53 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @RD_BITS(i64 %56)
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @get32_unaligned_check(i64 %59, i64 %60)
  %62 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @RM_BITS(i64 %65)
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @put32_unaligned_check(i64 %68, i64 %69)
  %71 = load i32, i32* @TYPE_SWAP, align 4
  store i32 %71, i32* %4, align 4
  br label %74

72:                                               ; No predecessors!
  %73 = load i32, i32* @TYPE_FAULT, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %52, %50
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @RD_BITS(i64) #1

declare dso_local i64 @LDST_L_BIT(i64) #1

declare dso_local i32 @get16_unaligned_check(i64, i64) #1

declare dso_local i32 @put16_unaligned_check(i64, i64) #1

declare dso_local i32 @get32_unaligned_check(i64, i64) #1

declare dso_local i32 @put32_unaligned_check(i64, i64) #1

declare dso_local i64 @RM_BITS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

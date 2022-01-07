; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_alignment.c_do_alignment_ldrstr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_alignment.c_do_alignment_ldrstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32* }

@TYPE_LDST = common dso_local global i32 0, align 4
@TYPE_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.pt_regs*)* @do_alignment_ldrstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_alignment_ldrstr(i64 %0, i64 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @RD_BITS(i64 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @LDST_P_BIT(i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @LDST_W_BIT(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %45

19:                                               ; preds = %14, %3
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @LDST_L_BIT(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @get32_unaligned_check(i32 %30, i64 %31)
  br label %43

33:                                               ; preds = %19
  %34 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @put32_unaligned_check(i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %33, %23
  %44 = load i32, i32* @TYPE_LDST, align 4
  store i32 %44, i32* %4, align 4
  br label %73

45:                                               ; preds = %18
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @LDST_L_BIT(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @get32t_unaligned_check(i32 %56, i64 %57)
  br label %69

59:                                               ; preds = %45
  %60 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @put32t_unaligned_check(i32 %66, i64 %67)
  br label %69

69:                                               ; preds = %59, %49
  %70 = load i32, i32* @TYPE_LDST, align 4
  store i32 %70, i32* %4, align 4
  br label %73

71:                                               ; No predecessors!
  %72 = load i32, i32* @TYPE_FAULT, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %69, %43
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @RD_BITS(i64) #1

declare dso_local i32 @LDST_P_BIT(i64) #1

declare dso_local i64 @LDST_W_BIT(i64) #1

declare dso_local i64 @LDST_L_BIT(i64) #1

declare dso_local i32 @get32_unaligned_check(i32, i64) #1

declare dso_local i32 @put32_unaligned_check(i32, i64) #1

declare dso_local i32 @get32t_unaligned_check(i32, i64) #1

declare dso_local i32 @put32t_unaligned_check(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

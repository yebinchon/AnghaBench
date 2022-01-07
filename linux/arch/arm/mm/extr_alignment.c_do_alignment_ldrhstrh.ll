; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_alignment.c_do_alignment_ldrhstrh.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_alignment.c_do_alignment_ldrhstrh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }

@ai_half = common dso_local global i32 0, align 4
@TYPE_LDST = common dso_local global i32 0, align 4
@TYPE_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.pt_regs*)* @do_alignment_ldrhstrh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_alignment_ldrhstrh(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @RD_BITS(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @ai_half, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @ai_half, align 4
  %17 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %18 = call i64 @user_mode(%struct.pt_regs* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %56

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @LDST_L_BIT(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @get16_unaligned_check(i64 %26, i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 64
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  %34 = trunc i64 %33 to i16
  %35 = sext i16 %34 to i64
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %37, i64* %43, align 8
  br label %54

44:                                               ; preds = %21
  %45 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @put16_unaligned_check(i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %44, %36
  %55 = load i32, i32* @TYPE_LDST, align 4
  store i32 %55, i32* %4, align 4
  br label %99

56:                                               ; preds = %20
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @LDST_L_BIT(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = call i32 (...) @uaccess_save_and_enable()
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @get16t_unaligned_check(i64 %62, i64 %63)
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @uaccess_restore(i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 64
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load i64, i64* %10, align 8
  %72 = trunc i64 %71 to i16
  %73 = sext i16 %72 to i64
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %70, %60
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %77 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 %75, i64* %81, align 8
  br label %95

82:                                               ; preds = %56
  %83 = call i32 (...) @uaccess_save_and_enable()
  store i32 %83, i32* %12, align 4
  %84 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %85 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @put16t_unaligned_check(i64 %90, i64 %91)
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @uaccess_restore(i32 %93)
  br label %95

95:                                               ; preds = %82, %74
  %96 = load i32, i32* @TYPE_LDST, align 4
  store i32 %96, i32* %4, align 4
  br label %99

97:                                               ; No predecessors!
  %98 = load i32, i32* @TYPE_FAULT, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %95, %54
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @RD_BITS(i32) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @LDST_L_BIT(i32) #1

declare dso_local i32 @get16_unaligned_check(i64, i64) #1

declare dso_local i32 @put16_unaligned_check(i64, i64) #1

declare dso_local i32 @uaccess_save_and_enable(...) #1

declare dso_local i32 @get16t_unaligned_check(i64, i64) #1

declare dso_local i32 @uaccess_restore(i32) #1

declare dso_local i32 @put16t_unaligned_check(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_alignment.c_do_alignment_ldrstr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_alignment.c_do_alignment_ldrstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32* }

@ai_word = common dso_local global i32 0, align 4
@TYPE_LDST = common dso_local global i32 0, align 4
@TYPE_FAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.pt_regs*)* @do_alignment_ldrstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_alignment_ldrstr(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @RD_BITS(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @ai_word, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @ai_word, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @LDST_P_BIT(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @LDST_W_BIT(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %26 = call i64 @user_mode(%struct.pt_regs* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20
  br label %56

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @LDST_L_BIT(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @get32_unaligned_check(i32 %34, i64 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %54

44:                                               ; preds = %29
  %45 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @put32_unaligned_check(i32 %51, i64 %52)
  br label %54

54:                                               ; preds = %44, %33
  %55 = load i32, i32* @TYPE_LDST, align 4
  store i32 %55, i32* %4, align 4
  br label %91

56:                                               ; preds = %28
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @LDST_L_BIT(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = call i32 (...) @uaccess_save_and_enable()
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @get32t_unaligned_check(i32 %62, i64 %63)
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @uaccess_restore(i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  br label %87

74:                                               ; preds = %56
  %75 = call i32 (...) @uaccess_save_and_enable()
  store i32 %75, i32* %12, align 4
  %76 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %77 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @put32t_unaligned_check(i32 %82, i64 %83)
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @uaccess_restore(i32 %85)
  br label %87

87:                                               ; preds = %74, %60
  %88 = load i32, i32* @TYPE_LDST, align 4
  store i32 %88, i32* %4, align 4
  br label %91

89:                                               ; No predecessors!
  %90 = load i32, i32* @TYPE_FAULT, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %87, %54
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @RD_BITS(i32) #1

declare dso_local i32 @LDST_P_BIT(i32) #1

declare dso_local i64 @LDST_W_BIT(i32) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @LDST_L_BIT(i32) #1

declare dso_local i32 @get32_unaligned_check(i32, i64) #1

declare dso_local i32 @put32_unaligned_check(i32, i64) #1

declare dso_local i32 @uaccess_save_and_enable(...) #1

declare dso_local i32 @get32t_unaligned_check(i32, i64) #1

declare dso_local i32 @uaccess_restore(i32) #1

declare dso_local i32 @put32t_unaligned_check(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

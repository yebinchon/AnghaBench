; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_fault.c_do_ifault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_fault.c_do_ifault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.pt_regs = type { i32 }

@TASK_SIZE = common dso_local global i64 0, align 8
@init_mm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.pt_regs*)* @do_ifault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_ifault(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @TASK_SIZE, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %20 = call i32 @do_pf(i64 %17, i32 %18, %struct.pt_regs* %19)
  store i32 %20, i32* %4, align 4
  br label %66

21:                                               ; preds = %3
  %22 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %23 = call i64 @user_mode(%struct.pt_regs* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %61

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @pgd_index(i64 %27)
  store i32 %28, i32* %8, align 4
  %29 = call i32* (...) @cpu_get_pgd()
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @init_mm, i32 0, i32 0), align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @pgd_none(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %61

42:                                               ; preds = %26
  %43 = load i32*, i32** %10, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32* @pmd_offset(i32* %43, i64 %44)
  store i32* %45, i32** %12, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32* @pmd_offset(i32* %46, i64 %47)
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @pmd_none(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %61

54:                                               ; preds = %42
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @set_pmd(i32* %55, i32 %57)
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @flush_pmd_entry(i32* %59)
  store i32 0, i32* %4, align 4
  br label %66

61:                                               ; preds = %53, %41, %25
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %65 = call i32 @do_bad_area(i64 %62, i32 %63, %struct.pt_regs* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %54, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @do_pf(i64, i32, %struct.pt_regs*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i32* @cpu_get_pgd(...) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @set_pmd(i32*, i32) #1

declare dso_local i32 @flush_pmd_entry(i32*) #1

declare dso_local i32 @do_bad_area(i64, i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

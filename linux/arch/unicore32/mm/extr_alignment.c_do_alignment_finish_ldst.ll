; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_alignment.c_do_alignment_finish_ldst.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_alignment.c_do_alignment_finish_ldst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }
%union.offset_union = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.pt_regs*, i64)* @do_alignment_finish_ldst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_alignment_finish_ldst(i64 %0, i64 %1, %struct.pt_regs* %2, i64 %3) #0 {
  %5 = alloca %union.offset_union, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = getelementptr inbounds %union.offset_union, %union.offset_union* %5, i32 0, i32 0
  store i64 %3, i64* %9, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @LDST_U_BIT(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = bitcast %union.offset_union* %5 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 0, %15
  %17 = bitcast %union.offset_union* %5 to i64*
  store i64 %16, i64* %17, align 8
  br label %18

18:                                               ; preds = %13, %4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @LDST_P_BIT(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = bitcast %union.offset_union* %5 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @LDST_P_BIT(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @LDST_W_BIT(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31, %27
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @RN_BITS(i64 %40)
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %36, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %31
  ret void
}

declare dso_local i32 @LDST_U_BIT(i64) #1

declare dso_local i32 @LDST_P_BIT(i64) #1

declare dso_local i64 @LDST_W_BIT(i64) #1

declare dso_local i64 @RN_BITS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

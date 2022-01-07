; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgtable.c_pudp_idte_global.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgtable.c_pudp_idte_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MACHINE_HAS_TLB_GUEST = common dso_local global i64 0, align 8
@IDTE_NODAT = common dso_local global i32 0, align 4
@IDTE_GUEST_ASCE = common dso_local global i32 0, align 4
@IDTE_GLOBAL = common dso_local global i32 0, align 4
@MACHINE_HAS_IDTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, i32*)* @pudp_idte_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pudp_idte_global(%struct.mm_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i64, i64* @MACHINE_HAS_TLB_GUEST, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = load i64, i64* %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @IDTE_NODAT, align 4
  %13 = load i32, i32* @IDTE_GUEST_ASCE, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IDTE_GLOBAL, align 4
  %20 = call i32 @__pudp_idte(i64 %10, i32* %11, i32 %14, i32 %18, i32 %19)
  br label %33

21:                                               ; preds = %3
  %22 = load i64, i64* @MACHINE_HAS_IDTE, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i64, i64* %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @IDTE_GLOBAL, align 4
  %28 = call i32 @__pudp_idte(i64 %25, i32* %26, i32 0, i32 0, i32 %27)
  br label %32

29:                                               ; preds = %21
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @__pmdp_csp(i32* %30)
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %9
  ret void
}

declare dso_local i32 @__pudp_idte(i64, i32*, i32, i32, i32) #1

declare dso_local i32 @__pmdp_csp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgtable.c_pmdp_idte_global.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgtable.c_pmdp_idte_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@MACHINE_HAS_TLB_GUEST = common dso_local global i64 0, align 8
@IDTE_NODAT = common dso_local global i32 0, align 4
@IDTE_GUEST_ASCE = common dso_local global i32 0, align 4
@IDTE_GLOBAL = common dso_local global i32 0, align 4
@MACHINE_HAS_IDTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, i32*)* @pmdp_idte_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmdp_idte_global(%struct.mm_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i64, i64* @MACHINE_HAS_TLB_GUEST, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = load i64, i64* %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @IDTE_NODAT, align 4
  %13 = load i32, i32* @IDTE_GUEST_ASCE, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @IDTE_GLOBAL, align 4
  %20 = call i32 @__pmdp_idte(i64 %10, i32* %11, i32 %14, i32 %18, i32 %19)
  %21 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %22 = call i64 @mm_has_pgste(%struct.mm_struct* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %9
  %25 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %26 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @gmap_pmdp_idte_global(%struct.mm_struct* %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %24, %9
  br label %75

35:                                               ; preds = %3
  %36 = load i64, i64* @MACHINE_HAS_IDTE, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load i64, i64* %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @IDTE_GLOBAL, align 4
  %42 = call i32 @__pmdp_idte(i64 %39, i32* %40, i32 0, i32 0, i32 %41)
  %43 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %44 = call i64 @mm_has_pgste(%struct.mm_struct* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %48 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @gmap_pmdp_idte_global(%struct.mm_struct* %53, i64 %54)
  br label %56

56:                                               ; preds = %52, %46, %38
  br label %74

57:                                               ; preds = %35
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @__pmdp_csp(i32* %58)
  %60 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %61 = call i64 @mm_has_pgste(%struct.mm_struct* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %65 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @gmap_pmdp_csp(%struct.mm_struct* %70, i64 %71)
  br label %73

73:                                               ; preds = %69, %63, %57
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74, %34
  ret void
}

declare dso_local i32 @__pmdp_idte(i64, i32*, i32, i32, i32) #1

declare dso_local i64 @mm_has_pgste(%struct.mm_struct*) #1

declare dso_local i32 @gmap_pmdp_idte_global(%struct.mm_struct*, i64) #1

declare dso_local i32 @__pmdp_csp(i32*) #1

declare dso_local i32 @gmap_pmdp_csp(%struct.mm_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

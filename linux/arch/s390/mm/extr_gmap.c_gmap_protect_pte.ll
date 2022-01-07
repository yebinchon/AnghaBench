; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_protect_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_gmap.c_gmap_protect_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { i32 }

@_SEGMENT_ENTRY_INVALID = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GMAP_NOTIFY_MPROT = common dso_local global i64 0, align 8
@PGSTE_IN_BIT = common dso_local global i64 0, align 8
@GMAP_NOTIFY_SHADOW = common dso_local global i64 0, align 8
@PGSTE_VSIE_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gmap*, i64, i32*, i32, i64)* @gmap_protect_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmap_protect_pte(%struct.gmap* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gmap*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.gmap* %0, %struct.gmap** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32* null, i32** %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pmd_val(i32 %17)
  %19 = load i32, i32* @_SEGMENT_ENTRY_INVALID, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %71

25:                                               ; preds = %5
  %26 = load %struct.gmap*, %struct.gmap** %7, align 8
  %27 = getelementptr inbounds %struct.gmap, %struct.gmap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32* @pte_alloc_map_lock(i32 %28, i32* %29, i64 %30, i32** %14)
  store i32* %31, i32** %13, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %71

37:                                               ; preds = %25
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @GMAP_NOTIFY_MPROT, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* @PGSTE_IN_BIT, align 8
  br label %45

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i64 [ %43, %42 ], [ 0, %44 ]
  %47 = load i64, i64* %15, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @GMAP_NOTIFY_SHADOW, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* @PGSTE_VSIE_BIT, align 8
  br label %56

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i64 [ %54, %53 ], [ 0, %55 ]
  %58 = load i64, i64* %15, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %15, align 8
  %60 = load %struct.gmap*, %struct.gmap** %7, align 8
  %61 = getelementptr inbounds %struct.gmap, %struct.gmap* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %8, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @ptep_force_prot(i32 %62, i64 %63, i32* %64, i32 %65, i64 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @gmap_pte_op_end(i32* %68)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %56, %34, %22
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32* @pte_alloc_map_lock(i32, i32*, i64, i32**) #1

declare dso_local i32 @ptep_force_prot(i32, i64, i32*, i32, i64) #1

declare dso_local i32 @gmap_pte_op_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_rmap_get_next.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_rmap_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmap_iterator = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32**, %struct.TYPE_2__* }

@PTE_LIST_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.rmap_iterator*)* @rmap_get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rmap_get_next(%struct.rmap_iterator* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.rmap_iterator*, align 8
  %4 = alloca i32*, align 8
  store %struct.rmap_iterator* %0, %struct.rmap_iterator** %3, align 8
  %5 = load %struct.rmap_iterator*, %struct.rmap_iterator** %3, align 8
  %6 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %63

9:                                                ; preds = %1
  %10 = load %struct.rmap_iterator*, %struct.rmap_iterator** %3, align 8
  %11 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PTE_LIST_EXT, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %9
  %17 = load %struct.rmap_iterator*, %struct.rmap_iterator** %3, align 8
  %18 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 8
  %21 = load %struct.rmap_iterator*, %struct.rmap_iterator** %3, align 8
  %22 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32**, i32*** %24, align 8
  %26 = load %struct.rmap_iterator*, %struct.rmap_iterator** %3, align 8
  %27 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %25, i64 %29
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  br label %64

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35, %9
  %37 = load %struct.rmap_iterator*, %struct.rmap_iterator** %3, align 8
  %38 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.rmap_iterator*, %struct.rmap_iterator** %3, align 8
  %43 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %42, i32 0, i32 1
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %43, align 8
  %44 = load %struct.rmap_iterator*, %struct.rmap_iterator** %3, align 8
  %45 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %36
  %49 = load %struct.rmap_iterator*, %struct.rmap_iterator** %3, align 8
  %50 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.rmap_iterator*, %struct.rmap_iterator** %3, align 8
  %52 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load %struct.rmap_iterator*, %struct.rmap_iterator** %3, align 8
  %57 = getelementptr inbounds %struct.rmap_iterator, %struct.rmap_iterator* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %55, i64 %59
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %4, align 8
  br label %64

62:                                               ; preds = %36
  br label %63

63:                                               ; preds = %62, %1
  store i32* null, i32** %2, align 8
  br label %73

64:                                               ; preds = %48, %34
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @is_shadow_present_pte(i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @BUG_ON(i32 %70)
  %72 = load i32*, i32** %4, align 8
  store i32* %72, i32** %2, align 8
  br label %73

73:                                               ; preds = %64, %63
  %74 = load i32*, i32** %2, align 8
  ret i32* %74
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_shadow_present_pte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

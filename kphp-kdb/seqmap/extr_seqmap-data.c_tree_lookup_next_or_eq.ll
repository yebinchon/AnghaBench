; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_lookup_next_or_eq.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_lookup_next_or_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { %struct.item*, %struct.item*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.item* (%struct.item*, i32, i32*, i32, i32)* @tree_lookup_next_or_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.item* @tree_lookup_next_or_eq(%struct.item* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.item*, align 8
  %7 = alloca %struct.item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.item*, align 8
  store %struct.item* %0, %struct.item** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.item*, %struct.item** %7, align 8
  %15 = icmp ne %struct.item* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store %struct.item* null, %struct.item** %6, align 8
  br label %80

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.item*, %struct.item** %7, align 8
  %21 = getelementptr inbounds %struct.item, %struct.item* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.item*, %struct.item** %7, align 8
  %24 = getelementptr inbounds %struct.item, %struct.item* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @min(i32 %26, i32 %27)
  %29 = sub nsw i32 %28, 1
  %30 = call i32 @key_cmp2(i32 %18, i32* %19, i32 %22, i32 %25, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load %struct.item*, %struct.item** %7, align 8
  store %struct.item* %34, %struct.item** %6, align 8
  br label %80

35:                                               ; preds = %17
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = sub nsw i32 0, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @min(i32 %41, i32 %42)
  %44 = icmp sge i32 %40, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.item*, %struct.item** %7, align 8
  %48 = getelementptr inbounds %struct.item, %struct.item* %47, i32 0, i32 1
  %49 = load %struct.item*, %struct.item** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.item* @tree_lookup_next_or_eq(%struct.item* %49, i32 %50, i32* %51, i32 %52, i32 %54)
  store %struct.item* %55, %struct.item** %13, align 8
  %56 = load %struct.item*, %struct.item** %13, align 8
  %57 = icmp ne %struct.item* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %38
  %59 = load %struct.item*, %struct.item** %13, align 8
  br label %62

60:                                               ; preds = %38
  %61 = load %struct.item*, %struct.item** %7, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi %struct.item* [ %59, %58 ], [ %61, %60 ]
  store %struct.item* %63, %struct.item** %6, align 8
  br label %80

64:                                               ; preds = %35
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @min(i32 %66, i32 %67)
  %69 = icmp sge i32 %65, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.item*, %struct.item** %7, align 8
  %73 = getelementptr inbounds %struct.item, %struct.item* %72, i32 0, i32 0
  %74 = load %struct.item*, %struct.item** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call %struct.item* @tree_lookup_next_or_eq(%struct.item* %74, i32 %75, i32* %76, i32 %77, i32 %78)
  store %struct.item* %79, %struct.item** %6, align 8
  br label %80

80:                                               ; preds = %64, %62, %33, %16
  %81 = load %struct.item*, %struct.item** %6, align 8
  ret %struct.item* %81
}

declare dso_local i32 @key_cmp2(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

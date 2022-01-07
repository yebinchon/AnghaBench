; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_lookup_prev.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_lookup_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { %struct.item*, %struct.item*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.item* (%struct.item*, i32, i32*, i32, i32)* @tree_lookup_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.item* @tree_lookup_prev(%struct.item* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
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
  br label %79

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
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %17
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 -2000, i32* %12, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %12, align 4
  %39 = sub nsw i32 0, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @min(i32 %40, i32 %41)
  %43 = icmp sge i32 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.item*, %struct.item** %7, align 8
  %47 = getelementptr inbounds %struct.item, %struct.item* %46, i32 0, i32 1
  %48 = load %struct.item*, %struct.item** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.item* @tree_lookup_prev(%struct.item* %48, i32 %49, i32* %50, i32 %51, i32 %53)
  store %struct.item* %54, %struct.item** %6, align 8
  br label %79

55:                                               ; preds = %17
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @min(i32 %57, i32 %58)
  %60 = icmp sge i32 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.item*, %struct.item** %7, align 8
  %64 = getelementptr inbounds %struct.item, %struct.item* %63, i32 0, i32 0
  %65 = load %struct.item*, %struct.item** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call %struct.item* @tree_lookup_prev(%struct.item* %65, i32 %66, i32* %67, i32 %68, i32 %69)
  store %struct.item* %70, %struct.item** %13, align 8
  %71 = load %struct.item*, %struct.item** %13, align 8
  %72 = icmp ne %struct.item* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %55
  %74 = load %struct.item*, %struct.item** %13, align 8
  br label %77

75:                                               ; preds = %55
  %76 = load %struct.item*, %struct.item** %7, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi %struct.item* [ %74, %73 ], [ %76, %75 ]
  store %struct.item* %78, %struct.item** %6, align 8
  br label %79

79:                                               ; preds = %77, %37, %16
  %80 = load %struct.item*, %struct.item** %6, align 8
  ret %struct.item* %80
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

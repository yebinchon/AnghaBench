; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_lookup_next.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_lookup_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { %struct.item*, %struct.item*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.item* (%struct.item*, i32, i32*, i32, i32)* @tree_lookup_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.item* @tree_lookup_next(%struct.item* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
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
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %17
  %34 = load i32, i32* %12, align 4
  %35 = sub nsw i32 0, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @min(i32 %36, i32 %37)
  %39 = icmp sge i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.item*, %struct.item** %7, align 8
  %43 = getelementptr inbounds %struct.item, %struct.item* %42, i32 0, i32 1
  %44 = load %struct.item*, %struct.item** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.item* @tree_lookup_next(%struct.item* %44, i32 %45, i32* %46, i32 %47, i32 %49)
  store %struct.item* %50, %struct.item** %13, align 8
  %51 = load %struct.item*, %struct.item** %13, align 8
  %52 = icmp ne %struct.item* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = load %struct.item*, %struct.item** %13, align 8
  br label %57

55:                                               ; preds = %33
  %56 = load %struct.item*, %struct.item** %7, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi %struct.item* [ %54, %53 ], [ %56, %55 ]
  store %struct.item* %58, %struct.item** %6, align 8
  br label %79

59:                                               ; preds = %17
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 2000, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @min(i32 %65, i32 %66)
  %68 = icmp sge i32 %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.item*, %struct.item** %7, align 8
  %72 = getelementptr inbounds %struct.item, %struct.item* %71, i32 0, i32 0
  %73 = load %struct.item*, %struct.item** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call %struct.item* @tree_lookup_next(%struct.item* %73, i32 %74, i32* %75, i32 %76, i32 %77)
  store %struct.item* %78, %struct.item** %6, align 8
  br label %79

79:                                               ; preds = %63, %57, %16
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

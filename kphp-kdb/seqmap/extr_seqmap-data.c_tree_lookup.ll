; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_lookup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { %struct.item*, %struct.item*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.item* (%struct.item*, i32, i32*)* @tree_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.item* @tree_lookup(%struct.item* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.item* %0, %struct.item** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %10

10:                                               ; preds = %54, %3
  %11 = load %struct.item*, %struct.item** %4, align 8
  %12 = icmp ne %struct.item* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.item*, %struct.item** %4, align 8
  %17 = getelementptr inbounds %struct.item, %struct.item* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.item*, %struct.item** %4, align 8
  %20 = getelementptr inbounds %struct.item, %struct.item* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @min(i32 %22, i32 %23)
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @key_cmp2(i32 %14, i32* %15, i32 %18, i32 %21, i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %13, %10
  %29 = phi i1 [ false, %10 ], [ %27, %13 ]
  br i1 %29, label %30, label %55

30:                                               ; preds = %28
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.item*, %struct.item** %4, align 8
  %35 = getelementptr inbounds %struct.item, %struct.item* %34, i32 0, i32 1
  %36 = load %struct.item*, %struct.item** %35, align 8
  br label %41

37:                                               ; preds = %30
  %38 = load %struct.item*, %struct.item** %4, align 8
  %39 = getelementptr inbounds %struct.item, %struct.item* %38, i32 0, i32 0
  %40 = load %struct.item*, %struct.item** %39, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi %struct.item* [ %36, %33 ], [ %40, %37 ]
  store %struct.item* %42, %struct.item** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  br label %54

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %48, %45
  br label %10

55:                                               ; preds = %28
  %56 = load %struct.item*, %struct.item** %4, align 8
  ret %struct.item* %56
}

declare dso_local i32 @key_cmp2(i32, i32*, i32, i32, i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

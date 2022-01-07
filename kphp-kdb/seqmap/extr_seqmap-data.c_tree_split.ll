; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_split.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_tree_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { %struct.item*, %struct.item*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.item**, %struct.item**, %struct.item*, i32, i32*)* @tree_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_split(%struct.item** %0, %struct.item** %1, %struct.item* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.item**, align 8
  %7 = alloca %struct.item**, align 8
  %8 = alloca %struct.item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.item** %0, %struct.item*** %6, align 8
  store %struct.item** %1, %struct.item*** %7, align 8
  store %struct.item* %2, %struct.item** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load %struct.item*, %struct.item** %8, align 8
  %12 = icmp ne %struct.item* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load %struct.item**, %struct.item*** %7, align 8
  store %struct.item* null, %struct.item** %14, align 8
  %15 = load %struct.item**, %struct.item*** %6, align 8
  store %struct.item* null, %struct.item** %15, align 8
  br label %52

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.item*, %struct.item** %8, align 8
  %20 = getelementptr inbounds %struct.item, %struct.item* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.item*, %struct.item** %8, align 8
  %23 = getelementptr inbounds %struct.item, %struct.item* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @key_cmp(i32 %17, i32* %18, i32 %21, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %16
  %28 = load %struct.item*, %struct.item** %8, align 8
  %29 = load %struct.item**, %struct.item*** %7, align 8
  store %struct.item* %28, %struct.item** %29, align 8
  %30 = load %struct.item**, %struct.item*** %6, align 8
  %31 = load %struct.item*, %struct.item** %8, align 8
  %32 = getelementptr inbounds %struct.item, %struct.item* %31, i32 0, i32 1
  %33 = load %struct.item*, %struct.item** %8, align 8
  %34 = getelementptr inbounds %struct.item, %struct.item* %33, i32 0, i32 1
  %35 = load %struct.item*, %struct.item** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %10, align 8
  call void @tree_split(%struct.item** %30, %struct.item** %32, %struct.item* %35, i32 %36, i32* %37)
  br label %49

38:                                               ; preds = %16
  %39 = load %struct.item*, %struct.item** %8, align 8
  %40 = load %struct.item**, %struct.item*** %6, align 8
  store %struct.item* %39, %struct.item** %40, align 8
  %41 = load %struct.item*, %struct.item** %8, align 8
  %42 = getelementptr inbounds %struct.item, %struct.item* %41, i32 0, i32 0
  %43 = load %struct.item**, %struct.item*** %7, align 8
  %44 = load %struct.item*, %struct.item** %8, align 8
  %45 = getelementptr inbounds %struct.item, %struct.item* %44, i32 0, i32 0
  %46 = load %struct.item*, %struct.item** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %10, align 8
  call void @tree_split(%struct.item** %42, %struct.item** %43, %struct.item* %46, i32 %47, i32* %48)
  br label %49

49:                                               ; preds = %38, %27
  %50 = load %struct.item*, %struct.item** %8, align 8
  %51 = call i32 @update_counters(%struct.item* %50)
  br label %52

52:                                               ; preds = %49, %13
  ret void
}

declare dso_local i64 @key_cmp(i32, i32*, i32, i32) #1

declare dso_local i32 @update_counters(%struct.item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

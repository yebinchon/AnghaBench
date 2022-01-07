; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_pm_tree_adva.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_pm_tree_adva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.pm_tree_builder = type { i32*, i64*, i32 }

@FREQ_INFTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.pm_tree_builder*)* @pm_tree_adva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm_tree_adva(%struct.TYPE_5__* %0, %struct.pm_tree_builder* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.pm_tree_builder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.pm_tree_builder* %1, %struct.pm_tree_builder** %4, align 8
  %7 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %8 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %62

14:                                               ; preds = %2
  %15 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %16 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %14
  %24 = load i64, i64* @FREQ_INFTY, align 8
  %25 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %26 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %24, i64* %28, align 8
  %29 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %30 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %37 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  br label %62

38:                                               ; preds = %14
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %49 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 %47, i64* %51, align 8
  %52 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %53 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp slt i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load %struct.pm_tree_builder*, %struct.pm_tree_builder** %4, align 8
  %61 = getelementptr inbounds %struct.pm_tree_builder, %struct.pm_tree_builder* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %38, %23, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

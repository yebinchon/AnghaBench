; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_tree_num_split.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_tree_num_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__* }

@NIL = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__**, %struct.TYPE_7__**, %struct.TYPE_7__*, i32)* @tree_num_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_num_split(%struct.TYPE_7__** %0, %struct.TYPE_7__** %1, %struct.TYPE_7__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @NIL, align 8
  %11 = icmp eq %struct.TYPE_7__* %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @NIL, align 8
  %14 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %14, align 8
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %15, align 8
  br label %45

16:                                               ; preds = %4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %24, align 8
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %8, align 4
  call void @tree_num_split(%struct.TYPE_7__** %25, %struct.TYPE_7__** %27, %struct.TYPE_7__* %30, i32 %31)
  br label %42

32:                                               ; preds = %16
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %8, align 4
  call void @tree_num_split(%struct.TYPE_7__** %36, %struct.TYPE_7__** %37, %struct.TYPE_7__* %40, i32 %41)
  br label %42

42:                                               ; preds = %32, %22
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = call i32 @tree_num_relax(%struct.TYPE_7__* %43)
  br label %45

45:                                               ; preds = %42, %12
  ret void
}

declare dso_local i32 @tree_num_relax(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_restore_list_del.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_restore_list_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restore_list_del(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_11__** %2, %struct.TYPE_11__** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca %struct.TYPE_11__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %12, align 8
  br label %16

16:                                               ; preds = %61, %5
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = icmp ne %struct.TYPE_11__* %17, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %16
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %20
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = icmp ne %struct.TYPE_11__* %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.TYPE_11__* @restore_list_create_node(%struct.TYPE_11__* %39, %struct.TYPE_11__* %42, i32 %43)
  %45 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %45, align 8
  br label %48

46:                                               ; preds = %26
  %47 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %10, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %47, align 8
  br label %48

48:                                               ; preds = %46, %36
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = call i32 @restore_list_connect(%struct.TYPE_11__* %51, %struct.TYPE_11__* %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %58 = call i32 @restore_list_connect(%struct.TYPE_11__* %56, %struct.TYPE_11__* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %60 = call i32 @restore_list_free(%struct.TYPE_11__* %59)
  store i32 1, i32* %6, align 4
  br label %66

61:                                               ; preds = %20
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %12, align 8
  br label %16

65:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_11__* @restore_list_create_node(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @restore_list_connect(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @restore_list_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

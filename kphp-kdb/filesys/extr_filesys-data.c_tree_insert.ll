; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_tree_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*, i32, i32, i32, i8*)* @tree_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @tree_insert(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = call %struct.TYPE_8__* @new_tree_node(i32 %16, i32 %17, i32 %18, i8* %19)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %12, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %6, align 8
  br label %72

22:                                               ; preds = %5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call %struct.TYPE_8__* @tree_insert(%struct.TYPE_8__* %37, i32 %38, i32 %39, i32 %40, i8* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %44, align 8
  br label %56

45:                                               ; preds = %28
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = call %struct.TYPE_8__* @tree_insert(%struct.TYPE_8__* %48, i32 %49, i32 %50, i32 %51, i8* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %55, align 8
  br label %56

56:                                               ; preds = %45, %34
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %6, align 8
  br label %72

58:                                               ; preds = %22
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = call %struct.TYPE_8__* @new_tree_node(i32 %59, i32 %60, i32 %61, i8* %62)
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %12, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @tree_split(%struct.TYPE_8__** %65, %struct.TYPE_8__** %67, %struct.TYPE_8__* %68, i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %6, align 8
  br label %72

72:                                               ; preds = %58, %56, %15
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %73
}

declare dso_local %struct.TYPE_8__* @new_tree_node(i32, i32, i32, i8*) #1

declare dso_local i32 @tree_split(%struct.TYPE_8__**, %struct.TYPE_8__**, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

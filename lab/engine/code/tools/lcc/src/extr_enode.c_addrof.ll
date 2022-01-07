; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_enode.c_addrof.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_enode.c_addrof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__**, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"addressable object required\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @addrof(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %4, align 8
  br label %7

7:                                                ; preds = %50, %48, %1
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @generic(i32 %10)
  switch i32 %11, label %89 [
    i32 128, label %12
    i32 131, label %50
    i32 130, label %56
    i32 129, label %66
  ]

12:                                               ; preds = %7
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %15, i64 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %22, i64 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br label %26

26:                                               ; preds = %19, %12
  %27 = phi i1 [ true, %12 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %32, i64 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %39, i64 1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  br label %48

42:                                               ; preds = %26
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %45, i64 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  br label %48

48:                                               ; preds = %42, %36
  %49 = phi %struct.TYPE_12__* [ %41, %36 ], [ %47, %42 ]
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %4, align 8
  br label %7

50:                                               ; preds = %7
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %53, i64 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %4, align 8
  br label %7

56:                                               ; preds = %7
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %5, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call %struct.TYPE_12__* @idtree(i32 %64)
  store %struct.TYPE_12__* %65, %struct.TYPE_12__** %4, align 8
  br label %66

66:                                               ; preds = %7, %56
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = icmp eq %struct.TYPE_12__* %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %73, i64 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %2, align 8
  br label %93

76:                                               ; preds = %66
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %79, i64 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  store %struct.TYPE_12__* %81, %struct.TYPE_12__** %4, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = call i32 @root(%struct.TYPE_12__* %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = call %struct.TYPE_12__* @tree(i32 128, i32 %84, i32 %86, %struct.TYPE_12__* %87)
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %2, align 8
  br label %93

89:                                               ; preds = %7
  %90 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = call %struct.TYPE_12__* @value(%struct.TYPE_12__* %91)
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %2, align 8
  br label %93

93:                                               ; preds = %89, %76, %70
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %94
}

declare dso_local i32 @generic(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @idtree(i32) #1

declare dso_local %struct.TYPE_12__* @tree(i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @root(%struct.TYPE_12__*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.TYPE_12__* @value(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

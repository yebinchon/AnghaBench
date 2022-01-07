; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_utils.c_treap_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_utils.c_treap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @treap_add(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store %struct.TYPE_8__** %13, %struct.TYPE_8__*** %9, align 8
  br label %14

14:                                               ; preds = %63, %4
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %22, %23
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i1 [ false, %14 ], [ %24, %18 ]
  br i1 %26, label %27, label %64

27:                                               ; preds = %25
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  br label %128

39:                                               ; preds = %27
  %40 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  store %struct.TYPE_8__** %49, %struct.TYPE_8__*** %9, align 8
  br label %62

50:                                               ; preds = %39
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  store %struct.TYPE_8__** %60, %struct.TYPE_8__*** %9, align 8
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62
  br label %14

64:                                               ; preds = %25
  %65 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %10, align 8
  br label %67

67:                                               ; preds = %102, %64
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = icmp ne %struct.TYPE_8__* %68, null
  br i1 %69, label %70, label %103

70:                                               ; preds = %67
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %128

80:                                               ; preds = %70
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %10, align 8
  br label %101

90:                                               ; preds = %80
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %10, align 8
  br label %100

100:                                              ; preds = %96, %90
  br label %101

101:                                              ; preds = %100, %86
  br label %102

102:                                              ; preds = %101
  br label %67

103:                                              ; preds = %67
  %104 = call %struct.TYPE_8__* (...) @get_new_node()
  store %struct.TYPE_8__* %104, %struct.TYPE_8__** %11, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = call i32 @treap_split(%struct.TYPE_8__* %119, i32 %120, %struct.TYPE_8__** %122, %struct.TYPE_8__** %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %127 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %126, %struct.TYPE_8__** %127, align 8
  br label %128

128:                                              ; preds = %103, %76, %34
  ret void
}

declare dso_local %struct.TYPE_8__* @get_new_node(...) #1

declare dso_local i32 @treap_split(%struct.TYPE_8__*, i32, %struct.TYPE_8__**, %struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

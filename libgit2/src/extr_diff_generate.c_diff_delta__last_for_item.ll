; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_diff_delta__last_for_item.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_diff_delta__last_for_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 (i32, i32)*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_15__*, %struct.TYPE_14__*)* @diff_delta__last_for_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @diff_delta__last_for_item(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = call %struct.TYPE_16__* @git_vector_last(i32* %9)
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %6, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %12 = icmp ne %struct.TYPE_16__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %95

14:                                               ; preds = %2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %93 [
    i32 130, label %18
    i32 132, label %18
    i32 133, label %29
    i32 129, label %40
    i32 128, label %40
    i32 131, label %65
  ]

18:                                               ; preds = %14, %14
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = call i32 @git_oid__cmp(i32* %21, i32* %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %3, align 8
  br label %95

28:                                               ; preds = %18
  br label %94

29:                                               ; preds = %14
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = call i32 @git_oid__cmp(i32* %32, i32* %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %3, align 8
  br label %95

39:                                               ; preds = %29
  br label %94

40:                                               ; preds = %14, %14
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %44(i32 %48, i32 %51)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %40
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = call i32 @git_oid__cmp(i32* %57, i32* %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %3, align 8
  br label %95

64:                                               ; preds = %54, %40
  br label %94

65:                                               ; preds = %14
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = call i32 @git_oid__cmp(i32* %68, i32* %70)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %90, label %73

73:                                               ; preds = %65
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %73
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = call i32 @git_oid__cmp(i32* %85, i32* %87)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82, %65
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %3, align 8
  br label %95

92:                                               ; preds = %82, %73
  br label %94

93:                                               ; preds = %14
  br label %94

94:                                               ; preds = %93, %92, %64, %39, %28
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %95

95:                                               ; preds = %94, %90, %62, %37, %26, %13
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %96
}

declare dso_local %struct.TYPE_16__* @git_vector_last(i32*) #1

declare dso_local i32 @git_oid__cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

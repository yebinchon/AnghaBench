; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_types.c_rmtypes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_types.c_rmtypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { %struct.entry*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@maxlevel = common dso_local global i32 0, align 4
@typetable = common dso_local global %struct.entry** null, align 8
@FUNCTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmtypes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.entry*, align 8
  %5 = alloca %struct.entry**, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @maxlevel, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %91

9:                                                ; preds = %1
  store i32 0, i32* @maxlevel, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %87, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.entry**, %struct.entry*** @typetable, align 8
  %13 = call i32 @NELEMS(%struct.entry** %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %90

15:                                               ; preds = %10
  %16 = load %struct.entry**, %struct.entry*** @typetable, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.entry*, %struct.entry** %16, i64 %18
  store %struct.entry** %19, %struct.entry*** %5, align 8
  br label %20

20:                                               ; preds = %85, %15
  %21 = load %struct.entry**, %struct.entry*** %5, align 8
  %22 = load %struct.entry*, %struct.entry** %21, align 8
  store %struct.entry* %22, %struct.entry** %4, align 8
  %23 = icmp ne %struct.entry* %22, null
  br i1 %23, label %24, label %86

24:                                               ; preds = %20
  %25 = load %struct.entry*, %struct.entry** %4, align 8
  %26 = getelementptr inbounds %struct.entry, %struct.entry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FUNCTION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.entry*, %struct.entry** %4, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 0
  store %struct.entry** %33, %struct.entry*** %5, align 8
  br label %85

34:                                               ; preds = %24
  %35 = load %struct.entry*, %struct.entry** %4, align 8
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load %struct.entry*, %struct.entry** %4, align 8
  %43 = getelementptr inbounds %struct.entry, %struct.entry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %2, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.entry*, %struct.entry** %4, align 8
  %53 = getelementptr inbounds %struct.entry, %struct.entry* %52, i32 0, i32 0
  %54 = load %struct.entry*, %struct.entry** %53, align 8
  %55 = load %struct.entry**, %struct.entry*** %5, align 8
  store %struct.entry* %54, %struct.entry** %55, align 8
  br label %84

56:                                               ; preds = %41, %34
  %57 = load %struct.entry*, %struct.entry** %4, align 8
  %58 = getelementptr inbounds %struct.entry, %struct.entry* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = icmp ne %struct.TYPE_4__* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load %struct.entry*, %struct.entry** %4, align 8
  %65 = getelementptr inbounds %struct.entry, %struct.entry* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @maxlevel, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load %struct.entry*, %struct.entry** %4, align 8
  %75 = getelementptr inbounds %struct.entry, %struct.entry* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* @maxlevel, align 4
  br label %81

81:                                               ; preds = %73, %63, %56
  %82 = load %struct.entry*, %struct.entry** %4, align 8
  %83 = getelementptr inbounds %struct.entry, %struct.entry* %82, i32 0, i32 0
  store %struct.entry** %83, %struct.entry*** %5, align 8
  br label %84

84:                                               ; preds = %81, %51
  br label %85

85:                                               ; preds = %84, %31
  br label %20

86:                                               ; preds = %20
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %10

90:                                               ; preds = %10
  br label %91

91:                                               ; preds = %90, %1
  ret void
}

declare dso_local i32 @NELEMS(%struct.entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

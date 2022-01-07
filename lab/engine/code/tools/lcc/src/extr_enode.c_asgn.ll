; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_enode.c_asgn.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_enode.c_asgn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }

@ASGN = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@INDIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_29__* @asgn(%struct.TYPE_30__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %6 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %9 = call i64 @isarray(%struct.TYPE_28__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load i64, i64* @ASGN, align 8
  %13 = load i64, i64* @B, align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %19 = call %struct.TYPE_29__* @idtree(%struct.TYPE_30__* %18)
  %20 = load i64, i64* @INDIR, align 8
  %21 = load i64, i64* @B, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %24, align 8
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %27 = call %struct.TYPE_29__* @tree(i64 %22, %struct.TYPE_28__* %25, %struct.TYPE_29__* %26, %struct.TYPE_29__* null)
  %28 = call %struct.TYPE_29__* @tree(i64 %14, %struct.TYPE_28__* %17, %struct.TYPE_29__* %19, %struct.TYPE_29__* %27)
  store %struct.TYPE_29__* %28, %struct.TYPE_29__** %4, align 8
  br label %90

29:                                               ; preds = %2
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %31, align 8
  store %struct.TYPE_28__* %32, %struct.TYPE_28__** %5, align 8
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %34, align 8
  %36 = call %struct.TYPE_28__* @unqual(%struct.TYPE_28__* %35)
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 0
  store %struct.TYPE_28__* %36, %struct.TYPE_28__** %38, align 8
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %40, align 8
  %42 = call i64 @isstruct(%struct.TYPE_28__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %80

44:                                               ; preds = %29
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %44
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load i64, i64* @ASGN, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %68 = call %struct.TYPE_29__* @idtree(%struct.TYPE_30__* %67)
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %70 = call %struct.TYPE_29__* @asgntree(i64 %66, %struct.TYPE_29__* %68, %struct.TYPE_29__* %69)
  store %struct.TYPE_29__* %70, %struct.TYPE_29__** %4, align 8
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  br label %86

80:                                               ; preds = %44, %29
  %81 = load i64, i64* @ASGN, align 8
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %83 = call %struct.TYPE_29__* @idtree(%struct.TYPE_30__* %82)
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %85 = call %struct.TYPE_29__* @asgntree(i64 %81, %struct.TYPE_29__* %83, %struct.TYPE_29__* %84)
  store %struct.TYPE_29__* %85, %struct.TYPE_29__** %4, align 8
  br label %86

86:                                               ; preds = %80, %56
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 0
  store %struct.TYPE_28__* %87, %struct.TYPE_28__** %89, align 8
  br label %90

90:                                               ; preds = %86, %11
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  ret %struct.TYPE_29__* %91
}

declare dso_local i64 @isarray(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @tree(i64, %struct.TYPE_28__*, %struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @idtree(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_28__* @unqual(%struct.TYPE_28__*) #1

declare dso_local i64 @isstruct(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @asgntree(i64, %struct.TYPE_29__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

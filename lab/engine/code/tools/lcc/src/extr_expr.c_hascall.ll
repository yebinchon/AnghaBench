; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_expr.c_hascall.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_expr.c_hascall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_4__** }

@CALL = common dso_local global i64 0, align 8
@IR = common dso_local global %struct.TYPE_5__* null, align 8
@DIV = common dso_local global i64 0, align 8
@I = common dso_local global i64 0, align 8
@MOD = common dso_local global i64 0, align 8
@MUL = common dso_local global i64 0, align 8
@U = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hascall(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = icmp eq %struct.TYPE_4__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @generic(i64 %10)
  %12 = load i64, i64* @CALL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %67, label %14

14:                                               ; preds = %7
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @IR, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DIV, align 8
  %24 = load i64, i64* @I, align 8
  %25 = add nsw i64 %23, %24
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %67, label %27

27:                                               ; preds = %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MOD, align 8
  %32 = load i64, i64* @I, align 8
  %33 = add nsw i64 %31, %32
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %67, label %35

35:                                               ; preds = %27
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MUL, align 8
  %40 = load i64, i64* @I, align 8
  %41 = add nsw i64 %39, %40
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %67, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DIV, align 8
  %48 = load i64, i64* @U, align 8
  %49 = add nsw i64 %47, %48
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %67, label %51

51:                                               ; preds = %43
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MOD, align 8
  %56 = load i64, i64* @U, align 8
  %57 = add nsw i64 %55, %56
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %51
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MUL, align 8
  %64 = load i64, i64* @U, align 8
  %65 = add nsw i64 %63, %64
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59, %51, %43, %35, %27, %19, %7
  store i32 1, i32* %2, align 4
  br label %87

68:                                               ; preds = %59, %14
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %71, i64 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = call i32 @hascall(%struct.TYPE_4__* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %68
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %79, i64 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call i32 @hascall(%struct.TYPE_4__* %81)
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %76, %68
  %85 = phi i1 [ true, %68 ], [ %83, %76 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %67, %6
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @generic(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

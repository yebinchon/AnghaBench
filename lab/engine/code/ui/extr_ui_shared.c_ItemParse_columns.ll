; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_ItemParse_columns.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_ItemParse_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@MAX_LB_COLUMNS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ItemParse_columns(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = call i32 @Item_ValidateTypeData(%struct.TYPE_8__* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @qfalse, align 4
  store i32 %19, i32* %3, align 4
  br label %90

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @PC_Int_Parse(i32 %25, i32* %6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %86

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MAX_LB_COLUMNS, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @MAX_LB_COLUMNS, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %82, %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @PC_Int_Parse(i32 %43, i32* %9)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @PC_Int_Parse(i32 %47, i32* %10)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @PC_Int_Parse(i32 %51, i32* %11)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 %63, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i32 %71, i32* %78, align 4
  br label %81

79:                                               ; preds = %50, %46, %42
  %80 = load i32, i32* @qfalse, align 4
  store i32 %80, i32* %3, align 4
  br label %90

81:                                               ; preds = %54
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %38

85:                                               ; preds = %38
  br label %88

86:                                               ; preds = %20
  %87 = load i32, i32* @qfalse, align 4
  store i32 %87, i32* %3, align 4
  br label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @qtrue, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %86, %79, %18
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @Item_ValidateTypeData(%struct.TYPE_8__*) #1

declare dso_local i64 @PC_Int_Parse(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

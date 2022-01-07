; ModuleID = '/home/carl/AnghaBench/htop/extr_IncSet.c_updateWeakPanel.c'
source_filename = "/home/carl/AnghaBench/htop/extr_IncSet.c_updateWeakPanel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i32 }

@INC_FILTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32*)* @updateWeakPanel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @updateWeakPanel(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @Panel_getSelected(i32* %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @Panel_prune(i32* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i64, i64* @INC_FILTER, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %63, %22
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @Vector_size(i32* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32* @Vector_get(i32* %36, i32 %37)
  %39 = bitcast i32* %38 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %11, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i64 @String_contains_i(i32 %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %35
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = bitcast %struct.TYPE_6__* %48 to i32*
  %50 = call i32 @Panel_add(i32* %47, i32* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %53 = bitcast %struct.TYPE_6__* %52 to i32*
  %54 = icmp eq i32* %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @Panel_setSelected(i32* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %46
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %59, %35
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %30

66:                                               ; preds = %30
  br label %92

67:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %88, %67
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @Vector_size(i32* %70)
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %68
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32* @Vector_get(i32* %74, i32 %75)
  store i32* %76, i32** %13, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = call i32 @Panel_add(i32* %77, i32* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = icmp eq i32* %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @Panel_setSelected(i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %73
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %68

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %91, %66
  ret void
}

declare dso_local i32* @Panel_getSelected(i32*) #1

declare dso_local i32 @Panel_prune(i32*) #1

declare dso_local i32 @Vector_size(i32*) #1

declare dso_local i32* @Vector_get(i32*, i32) #1

declare dso_local i64 @String_contains_i(i32, i8*) #1

declare dso_local i32 @Panel_add(i32*, i32*) #1

declare dso_local i32 @Panel_setSelected(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

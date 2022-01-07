; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_faces.c_FindEdgeVerts.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_faces.c_FindEdgeVerts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_edge_verts = common dso_local global i32 0, align 4
@hashverts = common dso_local global i32* null, align 8
@HASH_SIZE = common dso_local global i32 0, align 4
@edge_verts = common dso_local global i32* null, align 8
@vertexchain = common dso_local global i32* null, align 8
@numvertexes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FindEdgeVerts(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %13 = load i64*, i64** %3, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = sitofp i64 %15 to double
  %17 = fadd double %16, 5.000000e-01
  %18 = fptosi double %17 to i32
  %19 = add nsw i32 4096, %18
  %20 = ashr i32 %19, 7
  store i32 %20, i32* %5, align 4
  %21 = load i64*, i64** %3, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = sitofp i64 %23 to double
  %25 = fadd double %24, 5.000000e-01
  %26 = fptosi double %25 to i32
  %27 = add nsw i32 4096, %26
  %28 = ashr i32 %27, 7
  store i32 %28, i32* %7, align 4
  %29 = load i64*, i64** %4, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = sitofp i64 %31 to double
  %33 = fadd double %32, 5.000000e-01
  %34 = fptosi double %33 to i32
  %35 = add nsw i32 4096, %34
  %36 = ashr i32 %35, 7
  store i32 %36, i32* %6, align 4
  %37 = load i64*, i64** %4, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = sitofp i64 %39 to double
  %41 = fadd double %40, 5.000000e-01
  %42 = fptosi double %41 to i32
  %43 = add nsw i32 4096, %42
  %44 = ashr i32 %43, 7
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %2
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %2
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %56, %52
  store i32 0, i32* @num_edge_verts, align 4
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %103, %60
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %106

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %99, %66
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %68
  %73 = load i32*, i32** @hashverts, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @HASH_SIZE, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %73, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %92, %72
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i32, i32* %12, align 4
  %87 = load i32*, i32** @edge_verts, align 8
  %88 = load i32, i32* @num_edge_verts, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @num_edge_verts, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  br label %92

92:                                               ; preds = %85
  %93 = load i32*, i32** @vertexchain, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %12, align 4
  br label %82

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %68

102:                                              ; preds = %68
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %62

106:                                              ; preds = %62
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

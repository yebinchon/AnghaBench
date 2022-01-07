; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_setupQuad.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_setupQuad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32*** }
%struct.TYPE_3__ = type { i32, i32, i64 }

@cin = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cinTable = common dso_local global %struct.TYPE_3__* null, align 8
@currentHandle = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @setupQuad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setupQuad(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 1), align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %19 = load i64, i64* @currentHandle, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 2), align 8
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %27 = load i64, i64* @currentHandle, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 3), align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %125

34:                                               ; preds = %25, %17, %13, %2
  %35 = load i64, i64* %3, align 8
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 1), align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %38 = load i64, i64* @currentHandle, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 2), align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %43 = load i64, i64* @currentHandle, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 3), align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %48 = load i64, i64* @currentHandle, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %53 = load i64, i64* @currentHandle, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %51, %56
  %58 = sdiv i32 %57, 16
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = sdiv i64 %60, 4
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %5, align 8
  %64 = load i64, i64* %5, align 8
  %65 = add nsw i64 %64, 64
  store i64 %65, i64* %5, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %67 = load i64, i64* @currentHandle, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  store i64 0, i64* %8, align 8
  br label %70

70:                                               ; preds = %99, %34
  %71 = load i64, i64* %8, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %73 = load i64, i64* @currentHandle, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %71, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %70
  store i64 0, i64* %7, align 8
  br label %80

80:                                               ; preds = %95, %79
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %83 = load i64, i64* @currentHandle, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %81, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %80
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %3, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @recurseQuad(i64 %90, i64 %91, i32 16, i64 %92, i64 %93)
  br label %95

95:                                               ; preds = %89
  %96 = load i64, i64* %7, align 8
  %97 = add nsw i64 %96, 16
  store i64 %97, i64* %7, align 8
  br label %80

98:                                               ; preds = %80
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %8, align 8
  %101 = add nsw i64 %100, 16
  store i64 %101, i64* %8, align 8
  br label %70

102:                                              ; preds = %70
  store i32* null, i32** %9, align 8
  %103 = load i64, i64* %5, align 8
  %104 = sub nsw i64 %103, 64
  store i64 %104, i64* %6, align 8
  br label %105

105:                                              ; preds = %122, %102
  %106 = load i64, i64* %6, align 8
  %107 = load i64, i64* %5, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %105
  %110 = load i32*, i32** %9, align 8
  %111 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 4), align 8
  %112 = getelementptr inbounds i32**, i32*** %111, i64 0
  %113 = load i32**, i32*** %112, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds i32*, i32** %113, i64 %114
  store i32* %110, i32** %115, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 4), align 8
  %118 = getelementptr inbounds i32**, i32*** %117, i64 1
  %119 = load i32**, i32*** %118, align 8
  %120 = load i64, i64* %6, align 8
  %121 = getelementptr inbounds i32*, i32** %119, i64 %120
  store i32* %116, i32** %121, align 8
  br label %122

122:                                              ; preds = %109
  %123 = load i64, i64* %6, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %6, align 8
  br label %105

125:                                              ; preds = %33, %105
  ret void
}

declare dso_local i32 @recurseQuad(i64, i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

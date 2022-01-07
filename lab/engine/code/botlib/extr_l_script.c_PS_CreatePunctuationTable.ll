; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_script.c_PS_CreatePunctuationTable.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_script.c_PS_CreatePunctuationTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64*, %struct.TYPE_7__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PS_CreatePunctuationTable(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %12 = icmp ne %struct.TYPE_7__** %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = call i64 @GetMemory(i32 2048)
  %15 = inttoptr i64 %14 to %struct.TYPE_7__**
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.TYPE_7__** %15, %struct.TYPE_7__*** %17, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %20, align 8
  %22 = call i32 @Com_Memset(%struct.TYPE_7__** %21, i32 0, i32 2048)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %118, %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %121

31:                                               ; preds = %23
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %38, i64 %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %6, align 8
  br label %48

48:                                               ; preds = %87, %31
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = icmp ne %struct.TYPE_7__* %49, null
  br i1 %50, label %51, label %91

51:                                               ; preds = %48
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = call i64 @strlen(i64* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = call i64 @strlen(i64* %58)
  %60 = icmp slt i64 %55, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %51
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = icmp ne %struct.TYPE_7__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %70, align 8
  br label %84

71:                                               ; preds = %61
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %74, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %75, i64 %82
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %83, align 8
  br label %84

84:                                               ; preds = %71, %67
  br label %91

85:                                               ; preds = %51
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %7, align 8
  br label %87

87:                                               ; preds = %85
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %6, align 8
  br label %48

91:                                               ; preds = %84, %48
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = icmp ne %struct.TYPE_7__* %92, null
  br i1 %93, label %117, label %94

94:                                               ; preds = %91
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %98 = icmp ne %struct.TYPE_7__* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** %102, align 8
  br label %116

103:                                              ; preds = %94
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %107, i64 %114
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %115, align 8
  br label %116

116:                                              ; preds = %103, %99
  br label %117

117:                                              ; preds = %116, %91
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %23

121:                                              ; preds = %23
  ret void
}

declare dso_local i64 @GetMemory(i32) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_7__**, i32, i32) #1

declare dso_local i64 @strlen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

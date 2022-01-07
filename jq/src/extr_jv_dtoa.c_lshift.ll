; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_lshift.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_lshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtoa_context = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.dtoa_context*, %struct.TYPE_6__*, i32)* @lshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @lshift(%struct.dtoa_context* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca %struct.dtoa_context*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.dtoa_context* %0, %struct.dtoa_context** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %37, %3
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %30

40:                                               ; preds = %30
  %41 = load %struct.dtoa_context*, %struct.dtoa_context** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call %struct.TYPE_6__* @Balloc(%struct.dtoa_context* %41, i32 %42)
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %11, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %13, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %54, %40
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32*, i32** %13, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %13, align 8
  store i32 0, i32* %52, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %47

57:                                               ; preds = %47
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32* %66, i32** %14, align 8
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, 15
  store i32 %68, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %57
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 16, %71
  store i32 %72, i32* %8, align 4
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %88, %70
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = shl i32 %75, %76
  %78 = and i32 %77, 65535
  %79 = load i32, i32* %15, align 4
  %80 = or i32 %78, %79
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %13, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %12, align 8
  %85 = load i32, i32* %83, align 4
  %86 = load i32, i32* %8, align 4
  %87 = ashr i32 %85, %86
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %73
  %89 = load i32*, i32** %12, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = icmp ult i32* %89, %90
  br i1 %91, label %73, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %15, align 4
  %94 = load i32*, i32** %13, align 8
  store i32 %93, i32* %94, align 4
  %95 = icmp ne i32 %93, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %96, %92
  br label %112

100:                                              ; preds = %57
  br label %101

101:                                              ; preds = %107, %100
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %12, align 8
  %104 = load i32, i32* %102, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %13, align 8
  store i32 %104, i32* %105, align 4
  br label %107

107:                                              ; preds = %101
  %108 = load i32*, i32** %12, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = icmp ult i32* %108, %109
  br i1 %110, label %101, label %111

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111, %99
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %113, 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.dtoa_context*, %struct.dtoa_context** %4, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %119 = call i32 @Bfree(%struct.dtoa_context* %117, %struct.TYPE_6__* %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  ret %struct.TYPE_6__* %120
}

declare dso_local %struct.TYPE_6__* @Balloc(%struct.dtoa_context*, i32) #1

declare dso_local i32 @Bfree(%struct.dtoa_context*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

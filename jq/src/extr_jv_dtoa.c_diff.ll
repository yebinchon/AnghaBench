; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_diff.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtoa_context = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i32, i32 }

@FFFFFFFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.dtoa_context*, %struct.TYPE_8__*, %struct.TYPE_8__*)* @diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @diff(%struct.dtoa_context* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.dtoa_context*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dtoa_context* %0, %struct.dtoa_context** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %19 = load %struct.dtoa_context*, %struct.dtoa_context** %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = call i32 @cmp(%struct.dtoa_context* %19, %struct.TYPE_8__* %20, %struct.TYPE_8__* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %3
  %26 = load %struct.dtoa_context*, %struct.dtoa_context** %5, align 8
  %27 = call %struct.TYPE_8__* @Balloc(%struct.dtoa_context* %26, i32 0)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %8, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %4, align 8
  br label %129

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %8, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %6, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %7, align 8
  store i32 1, i32* %9, align 4
  br label %43

42:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load %struct.dtoa_context*, %struct.dtoa_context** %5, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_8__* @Balloc(%struct.dtoa_context* %44, i32 %47)
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %10, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %12, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32* %61, i32** %13, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %11, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32* %71, i32** %15, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %75

75:                                               ; preds = %92, %43
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %12, align 8
  %78 = load i32, i32* %76, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %14, align 8
  %81 = load i32, i32* %79, align 4
  %82 = sub nsw i32 %78, %81
  %83 = load i32, i32* %17, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = and i32 %85, 65536
  %87 = ashr i32 %86, 16
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %18, align 4
  %89 = and i32 %88, 65535
  %90 = load i32*, i32** %16, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %16, align 8
  store i32 %89, i32* %90, align 4
  br label %92

92:                                               ; preds = %75
  %93 = load i32*, i32** %14, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = icmp ult i32* %93, %94
  br i1 %95, label %75, label %96

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %101, %96
  %98 = load i32*, i32** %12, align 8
  %99 = load i32*, i32** %13, align 8
  %100 = icmp ult i32* %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %12, align 8
  %104 = load i32, i32* %102, align 4
  %105 = load i32, i32* %17, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = and i32 %107, 65536
  %109 = ashr i32 %108, 16
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %18, align 4
  %111 = and i32 %110, 65535
  %112 = load i32*, i32** %16, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %16, align 8
  store i32 %111, i32* %112, align 4
  br label %97

114:                                              ; preds = %97
  br label %115

115:                                              ; preds = %121, %114
  %116 = load i32*, i32** %16, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 -1
  store i32* %117, i32** %16, align 8
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %10, align 4
  br label %115

124:                                              ; preds = %115
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %128, %struct.TYPE_8__** %4, align 8
  br label %129

129:                                              ; preds = %124, %25
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %130
}

declare dso_local i32 @cmp(%struct.dtoa_context*, %struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @Balloc(%struct.dtoa_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

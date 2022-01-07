; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_mult.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtoa_context = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }

@FFFFFFFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.dtoa_context*, %struct.TYPE_6__*, %struct.TYPE_6__*)* @mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @mult(%struct.dtoa_context* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.dtoa_context*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.dtoa_context* %0, %struct.dtoa_context** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %7, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %6, align 8
  br label %33

33:                                               ; preds = %29, %3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %33
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %33
  %55 = load %struct.dtoa_context*, %struct.dtoa_context** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.TYPE_6__* @Balloc(%struct.dtoa_context* %55, i32 %56)
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %7, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %13, align 8
  br label %65

65:                                               ; preds = %71, %54
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = icmp ult i32* %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32*, i32** %12, align 8
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %69
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %12, align 8
  br label %65

74:                                               ; preds = %65
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %13, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %14, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %15, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32* %88, i32** %16, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %18, align 8
  br label %92

92:                                               ; preds = %129, %74
  %93 = load i32*, i32** %15, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = icmp ult i32* %93, %94
  br i1 %95, label %96, label %132

96:                                               ; preds = %92
  %97 = load i32*, i32** %15, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %15, align 8
  %99 = load i32, i32* %97, align 4
  store i32 %99, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %96
  %102 = load i32*, i32** %13, align 8
  store i32* %102, i32** %12, align 8
  %103 = load i32*, i32** %18, align 8
  store i32* %103, i32** %17, align 8
  store i32 0, i32* %20, align 4
  br label %104

104:                                              ; preds = %121, %101
  %105 = load i32*, i32** %12, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %12, align 8
  %107 = load i32, i32* %105, align 4
  %108 = load i32, i32* %19, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32*, i32** %17, align 8
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %109, %111
  %113 = load i32, i32* %20, align 4
  %114 = add nsw i32 %112, %113
  store i32 %114, i32* %21, align 4
  %115 = load i32, i32* %21, align 4
  %116 = ashr i32 %115, 16
  store i32 %116, i32* %20, align 4
  %117 = load i32, i32* %21, align 4
  %118 = and i32 %117, 65535
  %119 = load i32*, i32** %17, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %17, align 8
  store i32 %118, i32* %119, align 4
  br label %121

121:                                              ; preds = %104
  %122 = load i32*, i32** %12, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = icmp ult i32* %122, %123
  br i1 %124, label %104, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %20, align 4
  %127 = load i32*, i32** %17, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %96
  br label %129

129:                                              ; preds = %128
  %130 = load i32*, i32** %18, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %18, align 8
  br label %92

132:                                              ; preds = %92
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %18, align 8
  %136 = load i32*, i32** %18, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32* %139, i32** %17, align 8
  br label %140

140:                                              ; preds = %152, %132
  %141 = load i32, i32* %11, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32*, i32** %17, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 -1
  store i32* %145, i32** %17, align 8
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  br label %149

149:                                              ; preds = %143, %140
  %150 = phi i1 [ false, %140 ], [ %148, %143 ]
  br i1 %150, label %151, label %155

151:                                              ; preds = %149
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %11, align 4
  br label %140

155:                                              ; preds = %149
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %159
}

declare dso_local %struct.TYPE_6__* @Balloc(%struct.dtoa_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_quorem.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_quorem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtoa_context = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }

@FFFFFFFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtoa_context*, %struct.TYPE_6__*, %struct.TYPE_6__*)* @quorem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quorem(%struct.dtoa_context* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dtoa_context*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dtoa_context* %0, %struct.dtoa_context** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %183

27:                                               ; preds = %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32* %35, i32** %13, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = sdiv i32 %44, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %108

51:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %52

52:                                               ; preds = %76, %51
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %12, align 8
  %55 = load i32, i32* %53, align 4
  %56 = load i32, i32* %11, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = ashr i32 %60, 16
  store i32 %61, i32* %15, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %17, align 4
  %65 = and i32 %64, 65535
  %66 = sub nsw i32 %63, %65
  %67 = load i32, i32* %14, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = and i32 %69, 65536
  %71 = ashr i32 %70, 16
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %16, align 4
  %73 = and i32 %72, 65535
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  br label %76

76:                                               ; preds = %52
  %77 = load i32*, i32** %12, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = icmp ule i32* %77, %78
  br i1 %79, label %52, label %80

80:                                               ; preds = %76
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %107, label %84

84:                                               ; preds = %80
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %9, align 8
  br label %88

88:                                               ; preds = %100, %84
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 -1
  store i32* %90, i32** %10, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = icmp ugt i32* %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %93, %88
  %99 = phi i1 [ false, %88 ], [ %97, %93 ]
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %8, align 4
  br label %88

103:                                              ; preds = %98
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %80
  br label %108

108:                                              ; preds = %107, %27
  %109 = load %struct.dtoa_context*, %struct.dtoa_context** %5, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = call i64 @cmp(%struct.dtoa_context* %109, %struct.TYPE_6__* %110, %struct.TYPE_6__* %111)
  %113 = icmp sge i64 %112, 0
  br i1 %113, label %114, label %181

114:                                              ; preds = %108
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  store i32* %119, i32** %9, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  store i32* %122, i32** %12, align 8
  br label %123

123:                                              ; preds = %145, %114
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %12, align 8
  %126 = load i32, i32* %124, align 4
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %126, %127
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %17, align 4
  %130 = ashr i32 %129, 16
  store i32 %130, i32* %15, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %17, align 4
  %134 = and i32 %133, 65535
  %135 = sub nsw i32 %132, %134
  %136 = load i32, i32* %14, align 4
  %137 = sub nsw i32 %135, %136
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = and i32 %138, 65536
  %140 = ashr i32 %139, 16
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %16, align 4
  %142 = and i32 %141, 65535
  %143 = load i32*, i32** %9, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  br label %145

145:                                              ; preds = %123
  %146 = load i32*, i32** %12, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = icmp ule i32* %146, %147
  br i1 %148, label %123, label %149

149:                                              ; preds = %145
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %9, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32* %156, i32** %10, align 8
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %180, label %160

160:                                              ; preds = %149
  br label %161

161:                                              ; preds = %173, %160
  %162 = load i32*, i32** %10, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 -1
  store i32* %163, i32** %10, align 8
  %164 = load i32*, i32** %9, align 8
  %165 = icmp ugt i32* %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  br label %171

171:                                              ; preds = %166, %161
  %172 = phi i1 [ false, %161 ], [ %170, %166 ]
  br i1 %172, label %173, label %176

173:                                              ; preds = %171
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %8, align 4
  br label %161

176:                                              ; preds = %171
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  br label %180

180:                                              ; preds = %176, %149
  br label %181

181:                                              ; preds = %180, %108
  %182 = load i32, i32* %11, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %181, %26
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i64 @cmp(%struct.dtoa_context*, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kurl.c_sha1_hashBlock.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kurl.c_sha1_hashBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @sha1_hashBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha1_hashBlock(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %167, %1
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 80
  br i1 %42, label %43, label %170

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp sge i32 %44, 16
  br i1 %45, label %46, label %99

46:                                               ; preds = %43
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 13
  %53 = and i32 %52, 15
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 8
  %63 = and i32 %62, 15
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %56, %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 2
  %74 = and i32 %73, 15
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = xor i32 %67, %77
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = and i32 %83, 15
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %78, %87
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @rol32(i32 %89, i32 1)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = and i32 %95, 15
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %90, i32* %98, align 4
  br label %99

99:                                               ; preds = %46, %43
  %100 = load i32, i32* %3, align 4
  %101 = icmp slt i32 %100, 20
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = xor i32 %105, %106
  %108 = and i32 %104, %107
  %109 = xor i32 %103, %108
  %110 = add nsw i32 1518500249, %109
  store i32 %110, i32* %4, align 4
  br label %144

111:                                              ; preds = %99
  %112 = load i32, i32* %3, align 4
  %113 = icmp slt i32 %112, 40
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = xor i32 %115, %116
  %118 = load i32, i32* %8, align 4
  %119 = xor i32 %117, %118
  %120 = add nsw i32 1859775393, %119
  store i32 %120, i32* %4, align 4
  br label %143

121:                                              ; preds = %111
  %122 = load i32, i32* %3, align 4
  %123 = icmp slt i32 %122, 60
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %128, %131
  %133 = or i32 %127, %132
  %134 = add i32 -1894007588, %133
  store i32 %134, i32* %4, align 4
  br label %142

135:                                              ; preds = %121
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %7, align 4
  %138 = xor i32 %136, %137
  %139 = load i32, i32* %8, align 4
  %140 = xor i32 %138, %139
  %141 = add i32 -899497514, %140
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %135, %124
  br label %143

143:                                              ; preds = %142, %114
  br label %144

144:                                              ; preds = %143, %102
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @rol32(i32 %145, i32 5)
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %146, %147
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %3, align 4
  %154 = and i32 %153, 15
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %148, %157
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %4, align 4
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @rol32(i32 %163, i32 30)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %5, align 4
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %4, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %144
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %3, align 4
  br label %40

170:                                              ; preds = %40
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, %171
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, %179
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, %187
  store i32 %194, i32* %192, align 4
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, %195
  store i32 %202, i32* %200, align 4
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 4
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %203
  store i32 %210, i32* %208, align 4
  ret void
}

declare dso_local i32 @rol32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

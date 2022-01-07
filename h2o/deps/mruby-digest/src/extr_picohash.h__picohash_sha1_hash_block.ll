; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-digest/src/extr_picohash.h__picohash_sha1_hash_block.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-digest/src/extr_picohash.h__picohash_sha1_hash_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@_PICOHASH_SHA1_K0 = common dso_local global i32 0, align 4
@_PICOHASH_SHA1_K20 = common dso_local global i32 0, align 4
@_PICOHASH_SHA1_K40 = common dso_local global i32 0, align 4
@_PICOHASH_SHA1_K60 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @_picohash_sha1_hash_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_picohash_sha1_hash_block(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %160, %1
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 80
  br i1 %37, label %38, label %163

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp sge i32 %39, 16
  br i1 %40, label %41, label %89

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 13
  %47 = and i32 %46, 15
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 8
  %56 = and i32 %55, 15
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %50, %59
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 2
  %66 = and i32 %65, 15
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %60, %69
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = and i32 %74, 15
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %70, %78
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @_picohash_sha1_rol32(i32 %80, i32 1)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = and i32 %85, 15
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %81, i32* %88, align 4
  br label %89

89:                                               ; preds = %41, %38
  %90 = load i32, i32* %3, align 4
  %91 = icmp slt i32 %90, 20
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = xor i32 %95, %96
  %98 = and i32 %94, %97
  %99 = xor i32 %93, %98
  %100 = load i32, i32* @_PICOHASH_SHA1_K0, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* %9, align 4
  br label %138

102:                                              ; preds = %89
  %103 = load i32, i32* %3, align 4
  %104 = icmp slt i32 %103, 40
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = xor i32 %106, %107
  %109 = load i32, i32* %7, align 4
  %110 = xor i32 %108, %109
  %111 = load i32, i32* @_PICOHASH_SHA1_K20, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %9, align 4
  br label %137

113:                                              ; preds = %102
  %114 = load i32, i32* %3, align 4
  %115 = icmp slt i32 %114, 60
  br i1 %115, label %116, label %128

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %120, %123
  %125 = or i32 %119, %124
  %126 = load i32, i32* @_PICOHASH_SHA1_K40, align 4
  %127 = add nsw i32 %125, %126
  store i32 %127, i32* %9, align 4
  br label %136

128:                                              ; preds = %113
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %6, align 4
  %131 = xor i32 %129, %130
  %132 = load i32, i32* %7, align 4
  %133 = xor i32 %131, %132
  %134 = load i32, i32* @_PICOHASH_SHA1_K60, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %128, %116
  br label %137

137:                                              ; preds = %136, %105
  br label %138

138:                                              ; preds = %137, %92
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @_picohash_sha1_rol32(i32 %139, i32 5)
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %140, %141
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %3, align 4
  %147 = and i32 %146, 15
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %142, %150
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %7, align 4
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @_picohash_sha1_rol32(i32 %156, i32 30)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %4, align 4
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %138
  %161 = load i32, i32* %3, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %3, align 4
  br label %35

163:                                              ; preds = %35
  %164 = load i32, i32* %4, align 4
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, %164
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, %171
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %178
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %185
  store i32 %191, i32* %189, align 4
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 4
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, %192
  store i32 %198, i32* %196, align 4
  ret void
}

declare dso_local i32 @_picohash_sha1_rol32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

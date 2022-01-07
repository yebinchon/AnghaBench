; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xmerge.c_xdl_fill_merge_buffer.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xmerge.c_xdl_fill_merge_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, %struct.TYPE_15__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, %struct.TYPE_16__*, i8*, %struct.TYPE_16__*, i8*, i8*, i32, %struct.TYPE_15__*, i8*, i32, i32)* @xdl_fill_merge_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdl_fill_merge_buffer(i64* %0, %struct.TYPE_16__* %1, i8* %2, %struct.TYPE_16__* %3, i8* %4, i8* %5, i32 %6, %struct.TYPE_15__* %7, i8* %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i64* %0, i64** %13, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %14, align 8
  store i8* %2, i8** %15, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %20, align 8
  store i8* %8, i8** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %28 = load i64*, i64** %13, align 8
  store i64 0, i64* %28, align 8
  store i32 0, i32* %26, align 4
  store i64 0, i64* %24, align 8
  br label %29

29:                                               ; preds = %174, %11
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %178

32:                                               ; preds = %29
  %33 = load i32, i32* %19, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %19, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %35, %32
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = load i64, i64* %24, align 8
  %56 = load i32, i32* %26, align 4
  %57 = load i32, i32* %22, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %59 = load i8*, i8** %21, align 8
  %60 = load i32, i32* %23, align 4
  %61 = call i64 @fill_conflict_hunk(i64* %24, %struct.TYPE_16__* %50, i8* %51, %struct.TYPE_16__* %52, i8* %53, i8* %54, i64 %55, i32 %56, i32 %57, %struct.TYPE_15__* %58, i8* %59, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  store i32 -1, i32* %12, align 4
  br label %205

64:                                               ; preds = %49
  br label %166

65:                                               ; preds = %44
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 3
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %164

71:                                               ; preds = %65
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %73 = load i32, i32* %26, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %26, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i8*, i8** %21, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i8*, i8** %21, align 8
  %83 = load i64, i64* %24, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  br label %86

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %81
  %87 = phi i8* [ %84, %81 ], [ null, %85 ]
  %88 = call i64 @xdl_recs_copy(i64* %25, %struct.TYPE_16__* %72, i32 %73, i32 %78, i32 0, i32 0, i8* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 -1, i32* %12, align 4
  br label %205

91:                                               ; preds = %86
  %92 = load i64, i64* %24, align 8
  %93 = load i64, i64* %25, align 8
  %94 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %24, i64 %92, i64 %93)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %133

100:                                              ; preds = %91
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %104 = call i32 @is_cr_needed(%struct.TYPE_16__* %101, %struct.TYPE_16__* %102, %struct.TYPE_15__* %103)
  store i32 %104, i32* %27, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %27, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, 2
  %117 = load i8*, i8** %21, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %100
  %120 = load i8*, i8** %21, align 8
  %121 = load i64, i64* %24, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  br label %124

123:                                              ; preds = %100
  br label %124

124:                                              ; preds = %123, %119
  %125 = phi i8* [ %122, %119 ], [ null, %123 ]
  %126 = call i64 @xdl_recs_copy(i64* %25, %struct.TYPE_16__* %105, i32 %108, i32 %111, i32 %112, i32 %116, i8* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 -1, i32* %12, align 4
  br label %205

129:                                              ; preds = %124
  %130 = load i64, i64* %24, align 8
  %131 = load i64, i64* %25, align 8
  %132 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %24, i64 %130, i64 %131)
  br label %133

133:                                              ; preds = %129, %91
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, 2
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %133
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load i8*, i8** %21, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %139
  %150 = load i8*, i8** %21, align 8
  %151 = load i64, i64* %24, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  br label %154

153:                                              ; preds = %139
  br label %154

154:                                              ; preds = %153, %149
  %155 = phi i8* [ %152, %149 ], [ null, %153 ]
  %156 = call i64 @xdl_recs_copy(i64* %25, %struct.TYPE_16__* %140, i32 %143, i32 %146, i32 0, i32 0, i8* %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i32 -1, i32* %12, align 4
  br label %205

159:                                              ; preds = %154
  %160 = load i64, i64* %24, align 8
  %161 = load i64, i64* %25, align 8
  %162 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %24, i64 %160, i64 %161)
  br label %163

163:                                              ; preds = %159, %133
  br label %165

164:                                              ; preds = %65
  br label %174

165:                                              ; preds = %163
  br label %166

166:                                              ; preds = %165, %64
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %169, %172
  store i32 %173, i32* %26, align 4
  br label %174

174:                                              ; preds = %166, %164
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %176, align 8
  store %struct.TYPE_15__* %177, %struct.TYPE_15__** %20, align 8
  br label %29

178:                                              ; preds = %29
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %180 = load i32, i32* %26, align 4
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %26, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load i8*, i8** %21, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %178
  %190 = load i8*, i8** %21, align 8
  %191 = load i64, i64* %24, align 8
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  br label %194

193:                                              ; preds = %178
  br label %194

194:                                              ; preds = %193, %189
  %195 = phi i8* [ %192, %189 ], [ null, %193 ]
  %196 = call i64 @xdl_recs_copy(i64* %25, %struct.TYPE_16__* %179, i32 %180, i32 %186, i32 0, i32 0, i8* %195)
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i32 -1, i32* %12, align 4
  br label %205

199:                                              ; preds = %194
  %200 = load i64, i64* %24, align 8
  %201 = load i64, i64* %25, align 8
  %202 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %24, i64 %200, i64 %201)
  %203 = load i64, i64* %24, align 8
  %204 = load i64*, i64** %13, align 8
  store i64 %203, i64* %204, align 8
  store i32 0, i32* %12, align 4
  br label %205

205:                                              ; preds = %199, %198, %158, %128, %90, %63
  %206 = load i32, i32* %12, align 4
  ret i32 %206
}

declare dso_local i64 @fill_conflict_hunk(i64*, %struct.TYPE_16__*, i8*, %struct.TYPE_16__*, i8*, i8*, i64, i32, i32, %struct.TYPE_15__*, i8*, i32) #1

declare dso_local i64 @xdl_recs_copy(i64*, %struct.TYPE_16__*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i64) #1

declare dso_local i32 @is_cr_needed(%struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

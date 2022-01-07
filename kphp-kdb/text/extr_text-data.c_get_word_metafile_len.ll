; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_word_metafile_len.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_get_word_metafile_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"ptr=%p wm=%p ws=%d r=%d user_id=%d word_idx=%d word_crc32=%016llx search_mf_data=%p search_mf_len=%d\0A\00", align 1
@QWords = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cur_bit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_word_metafile_len(i8* %0, i32 %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = ashr i32 %17, 2
  %19 = add nsw i32 %18, 6
  store i32 %19, i32* %9, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %10, align 8
  %27 = load i8, i8* %25, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 24
  %30 = or i32 %29, 8388608
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 7
  %33 = shl i32 %30, %32
  store i32 %33, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %54, %4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, -2147483648
  %44 = zext i1 %43 to i32
  %45 = call i32 (i32, ...) bitcast (i32 (...)* @unlikely to i32 (i32, ...)*)(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %10, align 8
  %50 = load i8, i8* %48, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 24
  %53 = add nsw i32 %52, 8388608
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %47, %37
  %55 = load i32, i32* %12, align 4
  %56 = icmp sle i32 %55, 30
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  br label %34

59:                                               ; preds = %34
  %60 = load i32, i32* %11, align 4
  %61 = shl i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, -2147483648
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, ...) bitcast (i32 (...)* @unlikely to i32 (i32, ...)*)(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  %70 = load i8, i8* %68, align 1
  %71 = zext i8 %70 to i32
  %72 = shl i32 %71, 24
  %73 = add nsw i32 %72, 8388608
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %67, %59
  store i32 1, i32* %13, align 4
  br label %75

75:                                               ; preds = %100, %74
  %76 = load i32, i32* %12, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %75
  %79 = load i32, i32* %13, align 4
  %80 = shl i32 %79, 1
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %11, align 4
  %87 = shl i32 %86, 1
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, -2147483648
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, ...) bitcast (i32 (...)* @unlikely to i32 (i32, ...)*)(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %78
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %10, align 8
  %96 = load i8, i8* %94, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 24
  %99 = add nsw i32 %98, 8388608
  store i32 %99, i32* %11, align 4
  br label %100

100:                                              ; preds = %93, %78
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %12, align 4
  br label %75

103:                                              ; preds = %75
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %104, 8388608
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 -1
  store i8* %109, i8** %10, align 8
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i8*, i8** %10, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = icmp ugt i8* %111, %115
  br i1 %116, label %117, label %188

117:                                              ; preds = %110
  %118 = load i32, i32* @stderr, align 4
  %119 = load i8*, i8** %10, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32*, i32** @QWords, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = icmp ne %struct.TYPE_4__* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %117
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  br label %143

142:                                              ; preds = %117
  br label %143

143:                                              ; preds = %142, %136
  %144 = phi i32 [ %141, %136 ], [ 0, %142 ]
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = icmp ne %struct.TYPE_4__* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  br label %156

155:                                              ; preds = %143
  br label %156

156:                                              ; preds = %155, %149
  %157 = phi i32 [ %154, %149 ], [ -1, %155 ]
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i8* %119, i8* %120, i32 %121, i32 %122, i32 %125, i32 %126, i32 %131, i32 %144, i32 %157)
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %182, %156
  %160 = load i32, i32* %14, align 4
  %161 = icmp slt i32 %160, 32
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = load i8*, i8** %10, align 8
  %166 = load i8*, i8** %5, align 8
  %167 = ptrtoint i8* %165 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = icmp slt i64 %164, %169
  br label %171

171:                                              ; preds = %162, %159
  %172 = phi i1 [ false, %159 ], [ %170, %162 ]
  br i1 %172, label %173, label %185

173:                                              ; preds = %171
  %174 = load i32, i32* @stderr, align 4
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %173
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %14, align 4
  br label %159

185:                                              ; preds = %171
  %186 = load i32, i32* @stderr, align 4
  %187 = call i32 (i32, i8*, ...) @fprintf(i32 %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %110
  %189 = load i8*, i8** %10, align 8
  %190 = load i8*, i8** %5, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = icmp ule i8* %189, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  %197 = load i32, i32* %13, align 4
  ret i32 %197
}

declare dso_local i32 @unlikely(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

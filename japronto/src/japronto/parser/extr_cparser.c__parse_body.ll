; ModuleID = '/home/carl/AnghaBench/japronto/src/japronto/parser/extr_cparser.c__parse_body.c'
source_filename = "/home/carl/AnghaBench/japronto/src/japronto/parser/extr_cparser.c__parse_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i32, i8*, i64, i32, i32, i32, i32, i32 }

@CONTENT_LENGTH_UNSET = common dso_local global i32 0, align 4
@PARSER_TRANSFER_UNSET = common dso_local global i64 0, align 8
@zero_body = common dso_local global i64 0, align 8
@PARSER_CHUNKED = common dso_local global i64 0, align 8
@malformed_body = common dso_local global i32* null, align 8
@PyBUF_READ = common dso_local global i32 0, align 4
@Py_None = common dso_local global i32* null, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @_parse_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_parse_body(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i8* null, i8** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 -2, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CONTENT_LENGTH_UNSET, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PARSER_TRANSFER_UNSET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %163

19:                                               ; preds = %12, %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* @zero_body, align 8
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %3, align 8
  store i32 0, i32* %5, align 4
  br label %163

27:                                               ; preds = %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CONTENT_LENGTH_UNSET, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %27
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %39, %42
  %44 = icmp sgt i32 %36, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  store i32 -2, i32* %5, align 4
  br label %198

46:                                               ; preds = %33
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  store i8* %54, i8** %3, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %4, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %61
  store i32 %65, i32* %63, align 4
  store i32 1, i32* %5, align 4
  br label %163

66:                                               ; preds = %27
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PARSER_CHUNKED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %162

72:                                               ; preds = %66
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %6, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = sext i32 %82 to i64
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %83, %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 5
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 10
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 5
  %104 = bitcast i64* %103 to i32*
  %105 = call i32 @phr_decode_chunked(i32* %91, i8* %101, i32* %104)
  store i32 %105, i32* %5, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %108, %109
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 5
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, -2
  br i1 %114, label %115, label %127

115:                                              ; preds = %72
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %119, %122
  %124 = trunc i64 %123 to i32
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  br label %198

127:                                              ; preds = %72
  %128 = load i32, i32* %5, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %186

131:                                              ; preds = %127
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 4
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %134, i64 %138
  store i8* %139, i8** %3, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %4, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = add i64 %149, %145
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = add i64 %155, %157
  %159 = trunc i64 %158 to i32
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  br label %163

162:                                              ; preds = %66
  br label %198

163:                                              ; preds = %131, %46, %24, %18
  %164 = load i8*, i8** %3, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %166, %163
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load i8*, i8** %3, align 8
  %172 = load i64, i64* %4, align 8
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %175, %178
  %180 = call i32 @Protocol_on_body(i32 %170, i8* %171, i64 %172, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %167
  br label %197

183:                                              ; preds = %167
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %185 = call i32 @_reset_state(%struct.TYPE_4__* %184, i32 0)
  br label %198

186:                                              ; preds = %130
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = load i32*, i32** @malformed_body, align 8
  %191 = call i32 @Protocol_on_error(i32 %189, i32* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %186
  br label %197

194:                                              ; preds = %186
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %196 = call i32 @_reset_state(%struct.TYPE_4__* %195, i32 1)
  store i32 -1, i32* %5, align 4
  br label %198

197:                                              ; preds = %193, %182
  store i32 -3, i32* %5, align 4
  br label %198

198:                                              ; preds = %197, %194, %183, %162, %115, %45
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local i32 @phr_decode_chunked(i32*, i8*, i32*) #1

declare dso_local i32 @Protocol_on_body(i32, i8*, i64, i32) #1

declare dso_local i32 @_reset_state(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @Protocol_on_error(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

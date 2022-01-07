; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_xdl_change_compact.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xdiffi.c_xdl_change_compact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdlgroup = type { i64, i64 }
%struct.split_score = type { i32, i32, i32, i32 }
%struct.split_measurement = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"group sync broken sliding up\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"group sync broken sliding down\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"match disappeared\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"group sync broken sliding to match\00", align 1
@XDF_INDENT_HEURISTIC = common dso_local global i64 0, align 8
@INDENT_HEURISTIC_MAX_SLIDING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"best shift unreached\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"group sync broken sliding to blank line\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"group sync broken moving to next group\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"group sync broken at end of file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdl_change_compact(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xdlgroup, align 8
  %8 = alloca %struct.xdlgroup, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.split_score, align 4
  %15 = alloca %struct.split_measurement, align 4
  %16 = alloca %struct.split_score, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @group_init(i32* %17, %struct.xdlgroup* %7)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @group_init(i32* %19, %struct.xdlgroup* %8)
  br label %21

21:                                               ; preds = %3, %224
  %22 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %213

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %83, %28
  %30 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %31, %33
  store i64 %34, i64* %11, align 8
  store i64 -1, i64* %10, align 8
  br label %35

35:                                               ; preds = %47, %29
  %36 = load i32*, i32** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @group_slide_up(i32* %36, %struct.xdlgroup* %7, i64 %37)
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @group_previous(i32* %42, %struct.xdlgroup* %8)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @xdl_bug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  br label %35

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  %51 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %8, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %8, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %56, %48
  br label %60

60:                                               ; preds = %59, %81
  %61 = load i32*, i32** %4, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @group_slide_down(i32* %61, %struct.xdlgroup* %7, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %82

66:                                               ; preds = %60
  %67 = load i32*, i32** %5, align 8
  %68 = call i64 @group_next(i32* %67, %struct.xdlgroup* %8)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 @xdl_bug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %66
  %73 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %8, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %8, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %10, align 8
  br label %81

81:                                               ; preds = %78, %72
  br label %60

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %86, %88
  %90 = icmp ne i64 %84, %89
  br i1 %90, label %29, label %91

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %212

97:                                               ; preds = %91
  %98 = load i64, i64* %10, align 8
  %99 = icmp ne i64 %98, -1
  br i1 %99, label %100, label %122

100:                                              ; preds = %97
  br label %101

101:                                              ; preds = %120, %100
  %102 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %8, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %8, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %103, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = load i32*, i32** %4, align 8
  %109 = load i64, i64* %6, align 8
  %110 = call i64 @group_slide_up(i32* %108, %struct.xdlgroup* %7, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = call i32 @xdl_bug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %107
  %115 = load i32*, i32** %5, align 8
  %116 = call i64 @group_previous(i32* %115, %struct.xdlgroup* %8)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = call i32 @xdl_bug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %114
  br label %101

121:                                              ; preds = %101
  br label %211

122:                                              ; preds = %97
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @XDF_INDENT_HEURISTIC, align 8
  %125 = and i64 %123, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %210

127:                                              ; preds = %122
  store i64 -1, i64* %13, align 8
  %128 = load i64, i64* %9, align 8
  store i64 %128, i64* %12, align 8
  %129 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %11, align 8
  %132 = sub nsw i64 %130, %131
  %133 = sub nsw i64 %132, 1
  %134 = load i64, i64* %12, align 8
  %135 = icmp sgt i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %11, align 8
  %140 = sub nsw i64 %138, %139
  %141 = sub nsw i64 %140, 1
  store i64 %141, i64* %12, align 8
  br label %142

142:                                              ; preds = %136, %127
  %143 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @INDENT_HEURISTIC_MAX_SLIDING, align 8
  %146 = sub nsw i64 %144, %145
  %147 = load i64, i64* %12, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @INDENT_HEURISTIC_MAX_SLIDING, align 8
  %153 = sub nsw i64 %151, %152
  store i64 %153, i64* %12, align 8
  br label %154

154:                                              ; preds = %149, %142
  br label %155

155:                                              ; preds = %186, %154
  %156 = load i64, i64* %12, align 8
  %157 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sle i64 %156, %158
  br i1 %159, label %160, label %189

160:                                              ; preds = %155
  %161 = bitcast %struct.split_score* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %161, i8 0, i64 16, i1 false)
  %162 = load i32*, i32** %4, align 8
  %163 = load i64, i64* %12, align 8
  %164 = call i32 @measure_split(i32* %162, i64 %163, %struct.split_measurement* %15)
  %165 = call i32 @score_add_split(%struct.split_measurement* %15, %struct.split_score* %16)
  %166 = load i32*, i32** %4, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* %11, align 8
  %169 = sub nsw i64 %167, %168
  %170 = call i32 @measure_split(i32* %166, i64 %169, %struct.split_measurement* %15)
  %171 = call i32 @score_add_split(%struct.split_measurement* %15, %struct.split_score* %16)
  %172 = load i64, i64* %13, align 8
  %173 = icmp eq i64 %172, -1
  br i1 %173, label %177, label %174

174:                                              ; preds = %160
  %175 = call i64 @score_cmp(%struct.split_score* %16, %struct.split_score* %14)
  %176 = icmp sle i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %174, %160
  %178 = getelementptr inbounds %struct.split_score, %struct.split_score* %16, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.split_score, %struct.split_score* %14, i32 0, i32 1
  store i32 %179, i32* %180, align 4
  %181 = getelementptr inbounds %struct.split_score, %struct.split_score* %16, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.split_score, %struct.split_score* %14, i32 0, i32 0
  store i32 %182, i32* %183, align 4
  %184 = load i64, i64* %12, align 8
  store i64 %184, i64* %13, align 8
  br label %185

185:                                              ; preds = %177, %174
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %12, align 8
  %188 = add nsw i64 %187, 1
  store i64 %188, i64* %12, align 8
  br label %155

189:                                              ; preds = %155
  br label %190

190:                                              ; preds = %208, %189
  %191 = getelementptr inbounds %struct.xdlgroup, %struct.xdlgroup* %7, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %13, align 8
  %194 = icmp sgt i64 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %190
  %196 = load i32*, i32** %4, align 8
  %197 = load i64, i64* %6, align 8
  %198 = call i64 @group_slide_up(i32* %196, %struct.xdlgroup* %7, i64 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = call i32 @xdl_bug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %195
  %203 = load i32*, i32** %5, align 8
  %204 = call i64 @group_previous(i32* %203, %struct.xdlgroup* %8)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = call i32 @xdl_bug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %208

208:                                              ; preds = %206, %202
  br label %190

209:                                              ; preds = %190
  br label %210

210:                                              ; preds = %209, %122
  br label %211

211:                                              ; preds = %210, %121
  br label %212

212:                                              ; preds = %211, %96
  br label %213

213:                                              ; preds = %212, %27
  %214 = load i32*, i32** %4, align 8
  %215 = call i64 @group_next(i32* %214, %struct.xdlgroup* %7)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  br label %225

218:                                              ; preds = %213
  %219 = load i32*, i32** %5, align 8
  %220 = call i64 @group_next(i32* %219, %struct.xdlgroup* %8)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = call i32 @xdl_bug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %218
  br label %21

225:                                              ; preds = %217
  %226 = load i32*, i32** %5, align 8
  %227 = call i64 @group_next(i32* %226, %struct.xdlgroup* %8)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %225
  %230 = call i32 @xdl_bug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %231

231:                                              ; preds = %229, %225
  ret i32 0
}

declare dso_local i32 @group_init(i32*, %struct.xdlgroup*) #1

declare dso_local i64 @group_slide_up(i32*, %struct.xdlgroup*, i64) #1

declare dso_local i64 @group_previous(i32*, %struct.xdlgroup*) #1

declare dso_local i32 @xdl_bug(i8*) #1

declare dso_local i64 @group_slide_down(i32*, %struct.xdlgroup*, i64) #1

declare dso_local i64 @group_next(i32*, %struct.xdlgroup*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @measure_split(i32*, i64, %struct.split_measurement*) #1

declare dso_local i32 @score_add_split(%struct.split_measurement*, %struct.split_score*) #1

declare dso_local i64 @score_cmp(%struct.split_score*, %struct.split_score*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

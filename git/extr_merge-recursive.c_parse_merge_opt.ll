; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_parse_merge_opt.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_parse_merge_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i8*, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"ours\00", align 1
@MERGE_VARIANT_OURS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"theirs\00", align 1
@MERGE_VARIANT_THEIRS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"subtree\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"subtree=\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"patience\00", align 1
@PATIENCE_DIFF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"histogram\00", align 1
@HISTOGRAM_DIFF = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"diff-algorithm=\00", align 1
@NEED_MINIMAL = common dso_local global i32 0, align 4
@XDF_DIFF_ALGORITHM_MASK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"ignore-space-change\00", align 1
@IGNORE_WHITESPACE_CHANGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"ignore-all-space\00", align 1
@IGNORE_WHITESPACE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"ignore-space-at-eol\00", align 1
@IGNORE_WHITESPACE_AT_EOL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"ignore-cr-at-eol\00", align 1
@IGNORE_CR_AT_EOL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"renormalize\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"no-renormalize\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"no-renames\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"find-renames\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"find-renames=\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"rename-threshold=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_merge_opt(%struct.merge_options* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %2
  store i32 -1, i32* %3, align 4
  br label %194

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @MERGE_VARIANT_OURS, align 4
  %21 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %22 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  br label %193

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @MERGE_VARIANT_THEIRS, align 4
  %29 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %30 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  br label %192

31:                                               ; preds = %23
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %37 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %37, align 8
  br label %191

38:                                               ; preds = %31
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @skip_prefix(i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %6)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %45 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %190

46:                                               ; preds = %38
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %52 = load i32, i32* @PATIENCE_DIFF, align 4
  %53 = call i8* @DIFF_WITH_ALG(%struct.merge_options* %51, i32 %52)
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %56 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %189

57:                                               ; preds = %46
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %63 = load i32, i32* @HISTOGRAM_DIFF, align 4
  %64 = call i8* @DIFF_WITH_ALG(%struct.merge_options* %62, i32 %63)
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %67 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %188

68:                                               ; preds = %57
  %69 = load i8*, i8** %5, align 8
  %70 = call i64 @skip_prefix(i8* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %6)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %68
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @parse_algorithm_value(i8* %73)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 -1, i32* %3, align 4
  br label %194

78:                                               ; preds = %72
  %79 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %80 = load i32, i32* @NEED_MINIMAL, align 4
  %81 = call i32 @DIFF_XDL_CLR(%struct.merge_options* %79, i32 %80)
  %82 = load i64, i64* @XDF_DIFF_ALGORITHM_MASK, align 8
  %83 = xor i64 %82, -1
  %84 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %85 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = and i64 %86, %83
  store i64 %87, i64* %85, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %90 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = or i64 %91, %88
  store i64 %92, i64* %90, align 8
  br label %187

93:                                               ; preds = %68
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %99 = load i32, i32* @IGNORE_WHITESPACE_CHANGE, align 4
  %100 = call i32 @DIFF_XDL_SET(%struct.merge_options* %98, i32 %99)
  br label %186

101:                                              ; preds = %93
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %107 = load i32, i32* @IGNORE_WHITESPACE, align 4
  %108 = call i32 @DIFF_XDL_SET(%struct.merge_options* %106, i32 %107)
  br label %185

109:                                              ; preds = %101
  %110 = load i8*, i8** %5, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %115 = load i32, i32* @IGNORE_WHITESPACE_AT_EOL, align 4
  %116 = call i32 @DIFF_XDL_SET(%struct.merge_options* %114, i32 %115)
  br label %184

117:                                              ; preds = %109
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %123 = load i32, i32* @IGNORE_CR_AT_EOL, align 4
  %124 = call i32 @DIFF_XDL_SET(%struct.merge_options* %122, i32 %123)
  br label %183

125:                                              ; preds = %117
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %131 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %130, i32 0, i32 2
  store i32 1, i32* %131, align 8
  br label %182

132:                                              ; preds = %125
  %133 = load i8*, i8** %5, align 8
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %138 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %137, i32 0, i32 2
  store i32 0, i32* %138, align 8
  br label %181

139:                                              ; preds = %132
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %145 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %144, i32 0, i32 3
  store i32 0, i32* %145, align 4
  br label %180

146:                                              ; preds = %139
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %146
  %151 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %152 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %151, i32 0, i32 3
  store i32 1, i32* %152, align 4
  %153 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %154 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %153, i32 0, i32 4
  store i32 0, i32* %154, align 8
  br label %179

155:                                              ; preds = %146
  %156 = load i8*, i8** %5, align 8
  %157 = call i64 @skip_prefix(i8* %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8** %6)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i8*, i8** %5, align 8
  %161 = call i64 @skip_prefix(i8* %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8** %6)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %159, %155
  %164 = call i32 @parse_rename_score(i8** %6)
  %165 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %166 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 8
  %167 = icmp eq i32 %164, -1
  br i1 %167, label %173, label %168

168:                                              ; preds = %163
  %169 = load i8*, i8** %6, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168, %163
  store i32 -1, i32* %3, align 4
  br label %194

174:                                              ; preds = %168
  %175 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %176 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %175, i32 0, i32 3
  store i32 1, i32* %176, align 4
  br label %178

177:                                              ; preds = %159
  store i32 -1, i32* %3, align 4
  br label %194

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %178, %150
  br label %180

180:                                              ; preds = %179, %143
  br label %181

181:                                              ; preds = %180, %136
  br label %182

182:                                              ; preds = %181, %129
  br label %183

183:                                              ; preds = %182, %121
  br label %184

184:                                              ; preds = %183, %113
  br label %185

185:                                              ; preds = %184, %105
  br label %186

186:                                              ; preds = %185, %97
  br label %187

187:                                              ; preds = %186, %78
  br label %188

188:                                              ; preds = %187, %61
  br label %189

189:                                              ; preds = %188, %50
  br label %190

190:                                              ; preds = %189, %42
  br label %191

191:                                              ; preds = %190, %35
  br label %192

192:                                              ; preds = %191, %27
  br label %193

193:                                              ; preds = %192, %19
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %177, %173, %77, %14
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i8* @DIFF_WITH_ALG(%struct.merge_options*, i32) #1

declare dso_local i64 @parse_algorithm_value(i8*) #1

declare dso_local i32 @DIFF_XDL_CLR(%struct.merge_options*, i32) #1

declare dso_local i32 @DIFF_XDL_SET(%struct.merge_options*, i32) #1

declare dso_local i32 @parse_rename_score(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

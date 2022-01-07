; ModuleID = '/home/carl/AnghaBench/i3/src/extr_con.c_con_toggle_layout.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_con.c_con_toggle_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, %struct.TYPE_6__* }

@CT_WORKSPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"con_toggle_layout(%p, %s), parent = %p\0A\00", align 1
@__const.con_toggle_layout.delim = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@L_DEFAULT = common dso_local global i64 0, align 8
@L_SPLITH = common dso_local global i64 0, align 8
@L_SPLITV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"The token '%s' was not recognized and has been skipped.\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@L_STACKED = common dso_local global i64 0, align 8
@L_TABBED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @con_toggle_layout(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CT_WORKSPACE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %5, align 8
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = call i32 @DLOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %24, i8* %25, %struct.TYPE_6__* %26)
  %28 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.con_toggle_layout.delim, i32 0, i32 0), i64 2, i1 false)
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strcasecmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %35 = call i64 @strstr(i8* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %132

37:                                               ; preds = %32, %23
  %38 = load i64, i64* @L_DEFAULT, align 8
  store i64 %38, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i8* @sstrdup(i8* %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %43 = call i8* @strtok(i8* %41, i8* %42)
  store i8* %43, i8** %10, align 8
  br label %44

44:                                               ; preds = %118, %37
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %121

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8
  %49 = call i64 @strcasecmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @L_SPLITH, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @L_SPLITV, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @L_DEFAULT, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i64, i64* @L_SPLITH, align 8
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %70, %63
  br label %85

73:                                               ; preds = %57, %51
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @L_SPLITH, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i64, i64* @L_SPLITV, align 8
  br label %83

81:                                               ; preds = %73
  %82 = load i64, i64* @L_SPLITH, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i64 [ %80, %79 ], [ %82, %81 ]
  store i64 %84, i64* %11, align 8
  br label %85

85:                                               ; preds = %83, %72
  br label %99

86:                                               ; preds = %47
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @layout_from_name(i8* %87, i64* %11)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i64, i64* %11, align 8
  %93 = load i64, i64* @L_DEFAULT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %86
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @ELOG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  br label %118

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %85
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* @L_DEFAULT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i64, i64* %11, align 8
  store i64 %104, i64* %7, align 8
  br label %105

105:                                              ; preds = %103, %99
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i64, i64* %11, align 8
  store i64 %109, i64* %7, align 8
  br label %121

110:                                              ; preds = %105
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %11, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 1, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %110
  br label %118

118:                                              ; preds = %117, %95
  %119 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %120 = call i8* @strtok(i8* null, i8* %119)
  store i8* %120, i8** %10, align 8
  br label %44

121:                                              ; preds = %108, %44
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* @L_DEFAULT, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @con_set_layout(%struct.TYPE_6__* %128, i64 %129)
  br label %131

131:                                              ; preds = %127, %121
  br label %211

132:                                              ; preds = %32
  %133 = load i8*, i8** %4, align 8
  %134 = call i64 @strcasecmp(i8* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i8*, i8** %4, align 8
  %138 = call i64 @strcasecmp(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %210

140:                                              ; preds = %136, %132
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @L_STACKED, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %148 = load i64, i64* @L_TABBED, align 8
  %149 = call i32 @con_set_layout(%struct.TYPE_6__* %147, i64 %148)
  br label %209

150:                                              ; preds = %140
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @L_TABBED, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %171

156:                                              ; preds = %150
  %157 = load i8*, i8** %4, align 8
  %158 = call i64 @strcasecmp(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %162 = load i64, i64* @L_SPLITH, align 8
  %163 = call i32 @con_set_layout(%struct.TYPE_6__* %161, i64 %162)
  br label %170

164:                                              ; preds = %156
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @con_set_layout(%struct.TYPE_6__* %165, i64 %168)
  br label %170

170:                                              ; preds = %164, %160
  br label %208

171:                                              ; preds = %150
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @L_SPLITH, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @L_SPLITV, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %207

183:                                              ; preds = %177, %171
  %184 = load i8*, i8** %4, align 8
  %185 = call i64 @strcasecmp(i8* %184, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %202

187:                                              ; preds = %183
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @L_SPLITH, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %195 = load i64, i64* @L_SPLITV, align 8
  %196 = call i32 @con_set_layout(%struct.TYPE_6__* %194, i64 %195)
  br label %201

197:                                              ; preds = %187
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %199 = load i64, i64* @L_STACKED, align 8
  %200 = call i32 @con_set_layout(%struct.TYPE_6__* %198, i64 %199)
  br label %201

201:                                              ; preds = %197, %193
  br label %206

202:                                              ; preds = %183
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %204 = load i64, i64* @L_STACKED, align 8
  %205 = call i32 @con_set_layout(%struct.TYPE_6__* %203, i64 %204)
  br label %206

206:                                              ; preds = %202, %201
  br label %207

207:                                              ; preds = %206, %177
  br label %208

208:                                              ; preds = %207, %170
  br label %209

209:                                              ; preds = %208, %146
  br label %210

210:                                              ; preds = %209, %136
  br label %211

211:                                              ; preds = %210, %131
  ret void
}

declare dso_local i32 @DLOG(i8*, %struct.TYPE_6__*, i8*, %struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @layout_from_name(i8*, i64*) #1

declare dso_local i32 @ELOG(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @con_set_layout(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

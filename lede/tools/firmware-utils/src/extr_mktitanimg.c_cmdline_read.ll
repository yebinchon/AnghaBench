; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktitanimg.c_cmdline_read.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktitanimg.c_cmdline_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32* }

@CMDLINE_ERR_ERROR = common dso_local global i32 0, align 4
@CMDLINE_ERR_INVKEY = common dso_local global i32 0, align 4
@cmdline_cfg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@CMDLINE_OPTFLAG_ALLOW = common dso_local global i32 0, align 4
@cmdline_data = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@CMDLINE_ERR_ILLOPT = common dso_local global i32 0, align 4
@CMDLINE_ERR_NOMEM = common dso_local global i32 0, align 4
@CMDLINE_ERR_MANYARG = common dso_local global i32 0, align 4
@CMDLINE_OPTFLAG_MANDAT = common dso_local global i32 0, align 4
@CMDLINE_ERR_OPTMIS = common dso_local global i32 0, align 4
@CMDLINE_ERR_FEWARG = common dso_local global i32 0, align 4
@CMDLINE_TRUE = common dso_local global i32 0, align 4
@CMDLINE_ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdline_read(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %9

9:                                                ; preds = %146, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %149

13:                                               ; preds = %9
  %14 = load i8**, i8*** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 45
  br i1 %21, label %22, label %91

22:                                               ; preds = %13
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @CMDLINE_ERR_ERROR, align 4
  store i32 %31, i32* %3, align 4
  br label %234

32:                                               ; preds = %22
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp slt i32 %40, 97
  br i1 %41, label %52, label %42

42:                                               ; preds = %32
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sgt i32 %50, 122
  br i1 %51, label %52, label %54

52:                                               ; preds = %42, %32
  %53 = load i32, i32* @CMDLINE_ERR_INVKEY, align 4
  store i32 %53, i32* %3, align 4
  br label %234

54:                                               ; preds = %42
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = sub nsw i32 %62, 97
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %67, 25
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %54
  %70 = load i32, i32* @CMDLINE_ERR_INVKEY, align 4
  store i32 %70, i32* %3, align 4
  br label %234

71:                                               ; preds = %66
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cmdline_cfg, i32 0, i32 0), align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CMDLINE_OPTFLAG_ALLOW, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %71
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cmdline_data, i32 0, i32 1), align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  br label %146

89:                                               ; preds = %71
  %90 = load i32, i32* @CMDLINE_ERR_ILLOPT, align 4
  store i32 %90, i32* %3, align 4
  br label %234

91:                                               ; preds = %13
  %92 = call i64 @calloc(i32 1, i32 16)
  %93 = inttoptr i64 %92 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %8, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = icmp eq %struct.TYPE_8__* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @CMDLINE_ERR_NOMEM, align 4
  store i32 %97, i32* %3, align 4
  br label %234

98:                                               ; preds = %91
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i32* null, i32** %103, align 8
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %98
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cmdline_data, i32 0, i32 1), align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cmdline_cfg, i32 0, i32 0), align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %112, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %106, %98
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %122 = call i32 @cmdline_argadd(%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cmdline_data, i32 0, i32 2), %struct.TYPE_8__* %121)
  br label %146

123:                                              ; preds = %106
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cmdline_data, i32 0, i32 1), align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cmdline_cfg, i32 0, i32 0), align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %129, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %123
  %138 = load i32, i32* @CMDLINE_ERR_MANYARG, align 4
  store i32 %138, i32* %3, align 4
  br label %234

139:                                              ; preds = %123
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cmdline_data, i32 0, i32 1), align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i64 %142
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %145 = call i32 @cmdline_argadd(%struct.TYPE_11__* %143, %struct.TYPE_8__* %144)
  br label %146

146:                                              ; preds = %139, %120, %81
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %9

149:                                              ; preds = %9
  store i32 0, i32* %6, align 4
  br label %150

150:                                              ; preds = %228, %149
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %151, 26
  br i1 %152, label %153, label %231

153:                                              ; preds = %150
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cmdline_cfg, i32 0, i32 0), align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @CMDLINE_OPTFLAG_ALLOW, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %226

163:                                              ; preds = %153
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cmdline_cfg, i32 0, i32 0), align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @CMDLINE_OPTFLAG_MANDAT, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %200

173:                                              ; preds = %163
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cmdline_data, i32 0, i32 1), align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = load i32, i32* @CMDLINE_ERR_OPTMIS, align 4
  store i32 %182, i32* %3, align 4
  br label %234

183:                                              ; preds = %173
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cmdline_data, i32 0, i32 1), align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cmdline_cfg, i32 0, i32 0), align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp slt i64 %189, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %183
  %198 = load i32, i32* @CMDLINE_ERR_FEWARG, align 4
  store i32 %198, i32* %3, align 4
  br label %234

199:                                              ; preds = %183
  br label %228

200:                                              ; preds = %163
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cmdline_data, i32 0, i32 1), align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %228

209:                                              ; preds = %200
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cmdline_data, i32 0, i32 1), align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cmdline_cfg, i32 0, i32 0), align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp slt i64 %215, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %209
  %224 = load i32, i32* @CMDLINE_ERR_FEWARG, align 4
  store i32 %224, i32* %3, align 4
  br label %234

225:                                              ; preds = %209
  br label %228

226:                                              ; preds = %153
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227, %225, %208, %199
  %229 = load i32, i32* %6, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %6, align 4
  br label %150

231:                                              ; preds = %150
  %232 = load i32, i32* @CMDLINE_TRUE, align 4
  store i32 %232, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cmdline_data, i32 0, i32 0), align 8
  %233 = load i32, i32* @CMDLINE_ERR_OK, align 4
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %231, %223, %197, %181, %137, %96, %89, %69, %52, %30
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @cmdline_argadd(%struct.TYPE_11__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

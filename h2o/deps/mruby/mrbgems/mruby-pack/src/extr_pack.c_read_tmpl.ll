; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_read_tmpl.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/mrbgems/mruby-pack/src/extr_pack.c_read_tmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpl = type { i8, i32 }

@PACK_DIR_STR = common dso_local global i32 0, align 4
@PACK_TYPE_STRING = common dso_local global i32 0, align 4
@PACK_FLAG_WIDTH = common dso_local global i32 0, align 4
@PACK_FLAG_COUNT2 = common dso_local global i32 0, align 4
@PACK_FLAG_a = common dso_local global i32 0, align 4
@PACK_DIR_CHAR = common dso_local global i32 0, align 4
@PACK_TYPE_INTEGER = common dso_local global i32 0, align 4
@PACK_FLAG_SIGNED = common dso_local global i32 0, align 4
@PACK_DIR_DOUBLE = common dso_local global i32 0, align 4
@PACK_TYPE_FLOAT = common dso_local global i32 0, align 4
@PACK_DIR_FLOAT = common dso_local global i32 0, align 4
@PACK_FLAG_LT = common dso_local global i32 0, align 4
@PACK_FLAG_GT = common dso_local global i32 0, align 4
@PACK_DIR_HEX = common dso_local global i32 0, align 4
@PACK_FLAG_LSB = common dso_local global i32 0, align 4
@PACK_DIR_LONG = common dso_local global i32 0, align 4
@PACK_DIR_BASE64 = common dso_local global i32 0, align 4
@PACK_DIR_SHORT = common dso_local global i32 0, align 4
@PACK_DIR_QUAD = common dso_local global i32 0, align 4
@PACK_DIR_UTF8 = common dso_local global i32 0, align 4
@PACK_DIR_NUL = common dso_local global i32 0, align 4
@PACK_TYPE_NONE = common dso_local global i32 0, align 4
@PACK_FLAG_Z = common dso_local global i32 0, align 4
@PACK_DIR_INVALID = common dso_local global i32 0, align 4
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"too big template length\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"sSiIlLqQ\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"'%S' allowed only after types sSiIlLqQ\00", align 1
@PACK_FLAG_s = common dso_local global i32 0, align 4
@littleendian = common dso_local global i64 0, align 8
@PACK_FLAG_LITTLEENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tmpl*, i32*, i32*, i32*, i32*, i32*)* @read_tmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_tmpl(i32* %0, %struct.tmpl* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tmpl*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8, align 1
  store i32* %0, i32** %8, align 8
  store %struct.tmpl* %1, %struct.tmpl** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %25 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %26 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @RSTRING_PTR(i32 %27)
  store i8* %28, i8** %23, align 8
  %29 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %30 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call signext i8 @RSTRING_LEN(i32 %31)
  store i8 %32, i8* %16, align 1
  %33 = load i8*, i8** %23, align 8
  %34 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %35 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 4
  %37 = add i8 %36, 1
  store i8 %37, i8* %35, align 4
  %38 = sext i8 %36 to i64
  %39 = getelementptr inbounds i8, i8* %33, i64 %38
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %15, align 1
  br label %41

41:                                               ; preds = %130, %129, %7
  %42 = load i8, i8* %15, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %204 [
    i32 65, label %44
    i32 97, label %52
    i32 67, label %62
    i32 99, label %65
    i32 68, label %71
    i32 100, label %71
    i32 70, label %77
    i32 102, label %77
    i32 69, label %83
    i32 101, label %91
    i32 71, label %99
    i32 103, label %107
    i32 72, label %115
    i32 104, label %121
    i32 73, label %129
    i32 105, label %130
    i32 76, label %131
    i32 108, label %134
    i32 109, label %140
    i32 78, label %146
    i32 110, label %152
    i32 81, label %158
    i32 113, label %161
    i32 83, label %167
    i32 115, label %170
    i32 85, label %176
    i32 86, label %179
    i32 118, label %185
    i32 120, label %191
    i32 90, label %194
  ]

44:                                               ; preds = %41
  %45 = load i32, i32* @PACK_DIR_STR, align 4
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* @PACK_TYPE_STRING, align 4
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* @PACK_FLAG_WIDTH, align 4
  %48 = load i32, i32* @PACK_FLAG_COUNT2, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %22, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %22, align 4
  br label %207

52:                                               ; preds = %41
  %53 = load i32, i32* @PACK_DIR_STR, align 4
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* @PACK_TYPE_STRING, align 4
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* @PACK_FLAG_WIDTH, align 4
  %56 = load i32, i32* @PACK_FLAG_COUNT2, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PACK_FLAG_a, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %22, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %22, align 4
  br label %207

62:                                               ; preds = %41
  %63 = load i32, i32* @PACK_DIR_CHAR, align 4
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %64, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %207

65:                                               ; preds = %41
  %66 = load i32, i32* @PACK_DIR_CHAR, align 4
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %67, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %68 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %69 = load i32, i32* %22, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %22, align 4
  br label %207

71:                                               ; preds = %41, %41
  %72 = load i32, i32* @PACK_DIR_DOUBLE, align 4
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  store i32 %73, i32* %19, align 4
  store i32 8, i32* %20, align 4
  %74 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %75 = load i32, i32* %22, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %22, align 4
  br label %207

77:                                               ; preds = %41, %41
  %78 = load i32, i32* @PACK_DIR_FLOAT, align 4
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  store i32 %79, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %80 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %81 = load i32, i32* %22, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %22, align 4
  br label %207

83:                                               ; preds = %41
  %84 = load i32, i32* @PACK_DIR_DOUBLE, align 4
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  store i32 %85, i32* %19, align 4
  store i32 8, i32* %20, align 4
  %86 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %87 = load i32, i32* @PACK_FLAG_LT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %22, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %22, align 4
  br label %207

91:                                               ; preds = %41
  %92 = load i32, i32* @PACK_DIR_FLOAT, align 4
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  store i32 %93, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %94 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %95 = load i32, i32* @PACK_FLAG_LT, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %22, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %22, align 4
  br label %207

99:                                               ; preds = %41
  %100 = load i32, i32* @PACK_DIR_DOUBLE, align 4
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  store i32 %101, i32* %19, align 4
  store i32 8, i32* %20, align 4
  %102 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %103 = load i32, i32* @PACK_FLAG_GT, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %22, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %22, align 4
  br label %207

107:                                              ; preds = %41
  %108 = load i32, i32* @PACK_DIR_FLOAT, align 4
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  store i32 %109, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %110 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %111 = load i32, i32* @PACK_FLAG_GT, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %22, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %22, align 4
  br label %207

115:                                              ; preds = %41
  %116 = load i32, i32* @PACK_DIR_HEX, align 4
  store i32 %116, i32* %18, align 4
  %117 = load i32, i32* @PACK_TYPE_STRING, align 4
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* @PACK_FLAG_COUNT2, align 4
  %119 = load i32, i32* %22, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %22, align 4
  br label %207

121:                                              ; preds = %41
  %122 = load i32, i32* @PACK_DIR_HEX, align 4
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* @PACK_TYPE_STRING, align 4
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* @PACK_FLAG_COUNT2, align 4
  %125 = load i32, i32* @PACK_FLAG_LSB, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %22, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %22, align 4
  br label %207

129:                                              ; preds = %41
  store i8 76, i8* %15, align 1
  br label %41

130:                                              ; preds = %41
  store i8 108, i8* %15, align 1
  br label %41

131:                                              ; preds = %41
  %132 = load i32, i32* @PACK_DIR_LONG, align 4
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %133, i32* %19, align 4
  store i32 4, i32* %20, align 4
  br label %207

134:                                              ; preds = %41
  %135 = load i32, i32* @PACK_DIR_LONG, align 4
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %136, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %137 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %138 = load i32, i32* %22, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %22, align 4
  br label %207

140:                                              ; preds = %41
  %141 = load i32, i32* @PACK_DIR_BASE64, align 4
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* @PACK_TYPE_STRING, align 4
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* @PACK_FLAG_WIDTH, align 4
  %144 = load i32, i32* %22, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %22, align 4
  br label %207

146:                                              ; preds = %41
  %147 = load i32, i32* @PACK_DIR_LONG, align 4
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %148, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %149 = load i32, i32* @PACK_FLAG_GT, align 4
  %150 = load i32, i32* %22, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %22, align 4
  br label %207

152:                                              ; preds = %41
  %153 = load i32, i32* @PACK_DIR_SHORT, align 4
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %154, i32* %19, align 4
  store i32 2, i32* %20, align 4
  %155 = load i32, i32* @PACK_FLAG_GT, align 4
  %156 = load i32, i32* %22, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %22, align 4
  br label %207

158:                                              ; preds = %41
  %159 = load i32, i32* @PACK_DIR_QUAD, align 4
  store i32 %159, i32* %18, align 4
  %160 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %160, i32* %19, align 4
  store i32 8, i32* %20, align 4
  br label %207

161:                                              ; preds = %41
  %162 = load i32, i32* @PACK_DIR_QUAD, align 4
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %163, i32* %19, align 4
  store i32 8, i32* %20, align 4
  %164 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %165 = load i32, i32* %22, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %22, align 4
  br label %207

167:                                              ; preds = %41
  %168 = load i32, i32* @PACK_DIR_SHORT, align 4
  store i32 %168, i32* %18, align 4
  %169 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %169, i32* %19, align 4
  store i32 2, i32* %20, align 4
  br label %207

170:                                              ; preds = %41
  %171 = load i32, i32* @PACK_DIR_SHORT, align 4
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %172, i32* %19, align 4
  store i32 2, i32* %20, align 4
  %173 = load i32, i32* @PACK_FLAG_SIGNED, align 4
  %174 = load i32, i32* %22, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %22, align 4
  br label %207

176:                                              ; preds = %41
  %177 = load i32, i32* @PACK_DIR_UTF8, align 4
  store i32 %177, i32* %18, align 4
  %178 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %178, i32* %19, align 4
  br label %207

179:                                              ; preds = %41
  %180 = load i32, i32* @PACK_DIR_LONG, align 4
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %181, i32* %19, align 4
  store i32 4, i32* %20, align 4
  %182 = load i32, i32* @PACK_FLAG_LT, align 4
  %183 = load i32, i32* %22, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %22, align 4
  br label %207

185:                                              ; preds = %41
  %186 = load i32, i32* @PACK_DIR_SHORT, align 4
  store i32 %186, i32* %18, align 4
  %187 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  store i32 %187, i32* %19, align 4
  store i32 2, i32* %20, align 4
  %188 = load i32, i32* @PACK_FLAG_LT, align 4
  %189 = load i32, i32* %22, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %22, align 4
  br label %207

191:                                              ; preds = %41
  %192 = load i32, i32* @PACK_DIR_NUL, align 4
  store i32 %192, i32* %18, align 4
  %193 = load i32, i32* @PACK_TYPE_NONE, align 4
  store i32 %193, i32* %19, align 4
  br label %207

194:                                              ; preds = %41
  %195 = load i32, i32* @PACK_DIR_STR, align 4
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* @PACK_TYPE_STRING, align 4
  store i32 %196, i32* %19, align 4
  %197 = load i32, i32* @PACK_FLAG_WIDTH, align 4
  %198 = load i32, i32* @PACK_FLAG_COUNT2, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @PACK_FLAG_Z, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* %22, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %22, align 4
  br label %207

204:                                              ; preds = %41
  %205 = load i32, i32* @PACK_DIR_INVALID, align 4
  store i32 %205, i32* %18, align 4
  %206 = load i32, i32* @PACK_TYPE_NONE, align 4
  store i32 %206, i32* %19, align 4
  br label %207

207:                                              ; preds = %204, %194, %191, %185, %179, %176, %170, %167, %161, %158, %152, %146, %140, %134, %131, %121, %115, %107, %99, %91, %83, %77, %71, %65, %62, %52, %44
  br label %208

208:                                              ; preds = %338, %274, %207
  %209 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %210 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %209, i32 0, i32 0
  %211 = load i8, i8* %210, align 4
  %212 = sext i8 %211 to i32
  %213 = load i8, i8* %16, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp slt i32 %212, %214
  br i1 %215, label %216, label %339

216:                                              ; preds = %208
  %217 = load i8*, i8** %23, align 8
  %218 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %219 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %218, i32 0, i32 0
  %220 = load i8, i8* %219, align 4
  %221 = add i8 %220, 1
  store i8 %221, i8* %219, align 4
  %222 = sext i8 %220 to i64
  %223 = getelementptr inbounds i8, i8* %217, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  store i32 %225, i32* %17, align 4
  %226 = load i32, i32* %17, align 4
  %227 = trunc i32 %226 to i8
  %228 = call i64 @isdigit(i8 signext %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %275

230:                                              ; preds = %216
  %231 = load i32, i32* %17, align 4
  %232 = sub nsw i32 %231, 48
  store i32 %232, i32* %21, align 4
  br label %233

233:                                              ; preds = %273, %230
  %234 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %235 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %234, i32 0, i32 0
  %236 = load i8, i8* %235, align 4
  %237 = sext i8 %236 to i32
  %238 = load i8, i8* %16, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp slt i32 %237, %239
  br i1 %240, label %241, label %251

241:                                              ; preds = %233
  %242 = load i8*, i8** %23, align 8
  %243 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %244 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %243, i32 0, i32 0
  %245 = load i8, i8* %244, align 4
  %246 = sext i8 %245 to i64
  %247 = getelementptr inbounds i8, i8* %242, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = call i64 @isdigit(i8 signext %248)
  %250 = icmp ne i64 %249, 0
  br label %251

251:                                              ; preds = %241, %233
  %252 = phi i1 [ false, %233 ], [ %250, %241 ]
  br i1 %252, label %253, label %274

253:                                              ; preds = %251
  %254 = load i32, i32* %21, align 4
  %255 = mul nsw i32 %254, 10
  %256 = load i8*, i8** %23, align 8
  %257 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %258 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %257, i32 0, i32 0
  %259 = load i8, i8* %258, align 4
  %260 = add i8 %259, 1
  store i8 %260, i8* %258, align 4
  %261 = sext i8 %259 to i64
  %262 = getelementptr inbounds i8, i8* %256, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = sub nsw i32 %264, 48
  %266 = add nsw i32 %255, %265
  store i32 %266, i32* %21, align 4
  %267 = load i32, i32* %21, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %253
  %270 = load i32*, i32** %8, align 8
  %271 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %272 = call i32 @mrb_raise(i32* %270, i32 %271, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %273

273:                                              ; preds = %269, %253
  br label %233

274:                                              ; preds = %251
  br label %208

275:                                              ; preds = %216
  %276 = load i32, i32* %17, align 4
  %277 = icmp eq i32 %276, 42
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  store i32 -1, i32* %21, align 4
  br label %337

279:                                              ; preds = %275
  %280 = load i32, i32* %17, align 4
  %281 = icmp eq i32 %280, 95
  br i1 %281, label %291, label %282

282:                                              ; preds = %279
  %283 = load i32, i32* %17, align 4
  %284 = icmp eq i32 %283, 33
  br i1 %284, label %291, label %285

285:                                              ; preds = %282
  %286 = load i32, i32* %17, align 4
  %287 = icmp eq i32 %286, 60
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load i32, i32* %17, align 4
  %290 = icmp eq i32 %289, 62
  br i1 %290, label %291, label %331

291:                                              ; preds = %288, %285, %282, %279
  %292 = load i8, i8* %15, align 1
  %293 = sext i8 %292 to i32
  %294 = call i32* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %293)
  %295 = icmp eq i32* %294, null
  br i1 %295, label %296, label %304

296:                                              ; preds = %291
  %297 = load i32, i32* %17, align 4
  %298 = trunc i32 %297 to i8
  store i8 %298, i8* %24, align 1
  %299 = load i32*, i32** %8, align 8
  %300 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %301 = load i32*, i32** %8, align 8
  %302 = call i32 @mrb_str_new(i32* %301, i8* %24, i32 1)
  %303 = call i32 @mrb_raisef(i32* %299, i32 %300, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %302)
  br label %304

304:                                              ; preds = %296, %291
  %305 = load i32, i32* %17, align 4
  %306 = icmp eq i32 %305, 95
  br i1 %306, label %310, label %307

307:                                              ; preds = %304
  %308 = load i32, i32* %17, align 4
  %309 = icmp eq i32 %308, 33
  br i1 %309, label %310, label %314

310:                                              ; preds = %307, %304
  %311 = load i32, i32* @PACK_FLAG_s, align 4
  %312 = load i32, i32* %22, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %22, align 4
  br label %330

314:                                              ; preds = %307
  %315 = load i32, i32* %17, align 4
  %316 = icmp eq i32 %315, 60
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  %318 = load i32, i32* @PACK_FLAG_LT, align 4
  %319 = load i32, i32* %22, align 4
  %320 = or i32 %319, %318
  store i32 %320, i32* %22, align 4
  br label %329

321:                                              ; preds = %314
  %322 = load i32, i32* %17, align 4
  %323 = icmp eq i32 %322, 62
  br i1 %323, label %324, label %328

324:                                              ; preds = %321
  %325 = load i32, i32* @PACK_FLAG_GT, align 4
  %326 = load i32, i32* %22, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %22, align 4
  br label %328

328:                                              ; preds = %324, %321
  br label %329

329:                                              ; preds = %328, %317
  br label %330

330:                                              ; preds = %329, %310
  br label %336

331:                                              ; preds = %288
  %332 = load %struct.tmpl*, %struct.tmpl** %9, align 8
  %333 = getelementptr inbounds %struct.tmpl, %struct.tmpl* %332, i32 0, i32 0
  %334 = load i8, i8* %333, align 4
  %335 = add i8 %334, -1
  store i8 %335, i8* %333, align 4
  br label %339

336:                                              ; preds = %330
  br label %337

337:                                              ; preds = %336, %278
  br label %338

338:                                              ; preds = %337
  br label %208

339:                                              ; preds = %331, %208
  %340 = load i32, i32* %22, align 4
  %341 = load i32, i32* @PACK_FLAG_LT, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %352, label %344

344:                                              ; preds = %339
  %345 = load i32, i32* %22, align 4
  %346 = load i32, i32* @PACK_FLAG_GT, align 4
  %347 = and i32 %345, %346
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %356, label %349

349:                                              ; preds = %344
  %350 = load i64, i64* @littleendian, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %349, %339
  %353 = load i32, i32* @PACK_FLAG_LITTLEENDIAN, align 4
  %354 = load i32, i32* %22, align 4
  %355 = or i32 %354, %353
  store i32 %355, i32* %22, align 4
  br label %356

356:                                              ; preds = %352, %349, %344
  %357 = load i32, i32* %18, align 4
  %358 = load i32*, i32** %10, align 8
  store i32 %357, i32* %358, align 4
  %359 = load i32, i32* %19, align 4
  %360 = load i32*, i32** %11, align 8
  store i32 %359, i32* %360, align 4
  %361 = load i32, i32* %20, align 4
  %362 = load i32*, i32** %12, align 8
  store i32 %361, i32* %362, align 4
  %363 = load i32, i32* %21, align 4
  %364 = load i32*, i32** %13, align 8
  store i32 %363, i32* %364, align 4
  %365 = load i32, i32* %22, align 4
  %366 = load i32*, i32** %14, align 8
  store i32 %365, i32* %366, align 4
  ret void
}

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local signext i8 @RSTRING_LEN(i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_str_new(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

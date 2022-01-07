; ModuleID = '/home/carl/AnghaBench/htop/extr_Settings.c_Settings_new.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Settings.c_Settings_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i32, i32, i32, i64, i32, i32 }
%struct.stat = type { i32 }

@PERCENT_CPU = common dso_local global i32 0, align 4
@Platform_numberOfFields = common dso_local global i32 0, align 4
@Platform_defaultFields = common dso_local global i32* null, align 8
@Process_fields = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"HTOPRC\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"XDG_CONFIG_HOME\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"/htop/htoprc\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"/htop\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"/.config/htop/htoprc\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"/.config\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"/.config/htop\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"/.htoprc\00", align 1
@DEFAULT_DELAY = common dso_local global i32 0, align 4
@SYSCONFDIR = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"/htoprc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @Settings_new(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %16 = call i8* @xCalloc(i32 1, i32 112)
  %17 = bitcast i8* %16 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %3, align 8
  %18 = load i32, i32* @PERCENT_CPU, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 22
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 5
  store i32 0, i32* %32, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 6
  store i32 0, i32* %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 7
  store i32 0, i32* %36, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 8
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 9
  store i32 0, i32* %40, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 10
  store i32 0, i32* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 11
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 13
  store i32 1, i32* %49, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 14
  store i32 1, i32* %51, align 8
  %52 = load i32, i32* @Platform_numberOfFields, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i8* @xCalloc(i32 %53, i32 4)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 15
  store i32* %55, i32** %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 21
  store i32 0, i32* %59, align 8
  %60 = load i32*, i32** @Platform_defaultFields, align 8
  store i32* %60, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %94, %1
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %61
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 15
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Process_fields, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 21
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %68
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %61

97:                                               ; preds = %61
  store i8* null, i8** %6, align 8
  %98 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %98, i8** %7, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i8*, i8** %7, align 8
  %103 = call i8* @xStrdup(i8* %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 16
  store i8* %103, i8** %105, align 8
  br label %159

106:                                              ; preds = %97
  %107 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %107, i8** %8, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %111

111:                                              ; preds = %110, %106
  %112 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %112, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load i8*, i8** %9, align 8
  %117 = call i8* @String_cat(i8* %116, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 16
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i8* @xStrdup(i8* %120)
  store i8* %121, i8** %10, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = call i8* @String_cat(i8* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %123, i8** %11, align 8
  br label %133

124:                                              ; preds = %111
  %125 = load i8*, i8** %8, align 8
  %126 = call i8* @String_cat(i8* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 16
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = call i8* @String_cat(i8* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i8* %130, i8** %10, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = call i8* @String_cat(i8* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i8* %132, i8** %11, align 8
  br label %133

133:                                              ; preds = %124, %115
  %134 = load i8*, i8** %8, align 8
  %135 = call i8* @String_cat(i8* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i8* %135, i8** %6, align 8
  %136 = call i32 (...) @CRT_dropPrivileges()
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @mkdir(i8* %137, i32 448)
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @mkdir(i8* %139, i32 448)
  %141 = load i8*, i8** %11, align 8
  %142 = call i32 @free(i8* %141)
  %143 = load i8*, i8** %10, align 8
  %144 = call i32 @free(i8* %143)
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @lstat(i8* %145, %struct.stat* %12)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %133
  %150 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @S_ISLNK(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149, %133
  %155 = load i8*, i8** %6, align 8
  %156 = call i32 @free(i8* %155)
  store i8* null, i8** %6, align 8
  br label %157

157:                                              ; preds = %154, %149
  %158 = call i32 (...) @CRT_restorePrivileges()
  br label %159

159:                                              ; preds = %157, %101
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 20
  store i64 0, i64* %161, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 17
  store i32 0, i32* %163, align 8
  %164 = load i32, i32* @DEFAULT_DELAY, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 19
  store i32 %164, i32* %166, align 8
  store i32 0, i32* %14, align 4
  %167 = load i8*, i8** %6, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %186

169:                                              ; preds = %159
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = call i32 @Settings_read(%struct.TYPE_7__* %170, i8* %171)
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %14, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %169
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %177 = call i64 @Settings_write(%struct.TYPE_7__* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i8*, i8** %6, align 8
  %181 = call i32 @unlink(i8* %180)
  br label %182

182:                                              ; preds = %179, %175
  br label %183

183:                                              ; preds = %182, %169
  %184 = load i8*, i8** %6, align 8
  %185 = call i32 @free(i8* %184)
  br label %186

186:                                              ; preds = %183, %159
  %187 = load i32, i32* %14, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %186
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 16
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @Settings_read(%struct.TYPE_7__* %190, i8* %193)
  store i32 %194, i32* %14, align 4
  br label %195

195:                                              ; preds = %189, %186
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %208, label %198

198:                                              ; preds = %195
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 17
  store i32 1, i32* %200, align 8
  %201 = load i8*, i8** @SYSCONFDIR, align 8
  %202 = call i8* @String_cat(i8* %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  store i8* %202, i8** %15, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %204 = load i8*, i8** %15, align 8
  %205 = call i32 @Settings_read(%struct.TYPE_7__* %203, i8* %204)
  store i32 %205, i32* %14, align 4
  %206 = load i8*, i8** %15, align 8
  %207 = call i32 @free(i8* %206)
  br label %208

208:                                              ; preds = %198, %195
  %209 = load i32, i32* %14, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %222, label %211

211:                                              ; preds = %208
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %213 = call i32 @Settings_defaultMeters(%struct.TYPE_7__* %212)
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 4
  store i32 1, i32* %215, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 8
  store i32 1, i32* %217, align 8
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 14
  store i32 1, i32* %219, align 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 18
  store i32 1, i32* %221, align 4
  br label %222

222:                                              ; preds = %211, %208
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %223
}

declare dso_local i8* @xCalloc(i32, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @xStrdup(i8*) #1

declare dso_local i8* @String_cat(i8*, i8*) #1

declare dso_local i32 @CRT_dropPrivileges(...) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @CRT_restorePrivileges(...) #1

declare dso_local i32 @Settings_read(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @Settings_write(%struct.TYPE_7__*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @Settings_defaultMeters(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

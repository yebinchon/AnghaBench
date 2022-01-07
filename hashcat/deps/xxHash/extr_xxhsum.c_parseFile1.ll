; ModuleID = '/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_parseFile1.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_parseFile1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s : too many checksum lines\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s : %lu: unknown error\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s : %lu: too long line\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s : %lu: out of memory\0A\00", align 1
@ParseLine_ok = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"%s : %lu: improperly formatted XXHASH checksum line\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"%s : %lu: improperly formatted XXHASH checksum line (XXH32/64)\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@algo_xxh32 = common dso_local global i32 0, align 4
@algo_xxh64 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"%s : unknown error\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%s : %lu: FAILED open or read %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @parseFile1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseFile1(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %3, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 9
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %4, align 8
  store i64 0, i64* %5, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = call i32 @memset(%struct.TYPE_9__* %18, i32 0, i32 48)
  br label %20

20:                                               ; preds = %240, %120, %90, %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %241

26:                                               ; preds = %20
  store i32* null, i32** %6, align 8
  store i32 129, i32* %7, align 4
  %27 = call i32 @memset(%struct.TYPE_9__* %9, i32 0, i32 48)
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i8*, i8*, ...) @DISPLAY(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %241

37:                                               ; preds = %26
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @getLine(i32* %39, i32* %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 132
  br i1 %47, label %48, label %70

48:                                               ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 134
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %241

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %55 [
    i32 132, label %54
    i32 134, label %54
    i32 133, label %59
    i32 131, label %63
  ]

54:                                               ; preds = %52, %52
  br label %67

55:                                               ; preds = %52
  %56 = load i8*, i8** %3, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 (i8*, i8*, ...) @DISPLAY(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %56, i64 %57)
  br label %67

59:                                               ; preds = %52
  %60 = load i8*, i8** %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 (i8*, i8*, ...) @DISPLAY(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %60, i64 %61)
  br label %67

63:                                               ; preds = %52
  %64 = load i8*, i8** %3, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 (i8*, i8*, ...) @DISPLAY(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %64, i64 %65)
  br label %67

67:                                               ; preds = %63, %59, %55, %54
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %241

70:                                               ; preds = %37
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @parseLine(%struct.TYPE_9__* %9, i32 %73)
  %75 = load i64, i64* @ParseLine_ok, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %70
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load i8*, i8** %3, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 (i8*, i8*, ...) @DISPLAY(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %87, i64 %88)
  br label %90

90:                                               ; preds = %86, %77
  br label %20

91:                                               ; preds = %70
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %91
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %99, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %96
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %103
  %117 = load i8*, i8** %3, align 8
  %118 = load i64, i64* %5, align 8
  %119 = call i32 (i8*, i8*, ...) @DISPLAY(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i8* %117, i64 %118)
  br label %120

120:                                              ; preds = %116, %103
  br label %20

121:                                              ; preds = %96, %91
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %130, %121
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32* @fopen(i32 %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %138, i32** %6, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 130, i32* %7, align 4
  br label %183

142:                                              ; preds = %135
  store i32 129, i32* %7, align 4
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  switch i64 %144, label %179 [
    i64 32, label %145
    i64 64, label %162
  ]

145:                                              ; preds = %142
  %146 = load i32, i32* @algo_xxh32, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @BMK_hashStream(i32* %10, i32 %146, i32* %147, i32 %150, i32 %153)
  %155 = load i32, i32* %10, align 4
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = call i32 @XXH32_hashFromCanonical(i32* %157)
  %159 = icmp eq i32 %155, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %145
  store i32 128, i32* %7, align 4
  br label %161

161:                                              ; preds = %160, %145
  br label %180

162:                                              ; preds = %142
  %163 = load i32, i32* @algo_xxh64, align 4
  %164 = load i32*, i32** %6, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @BMK_hashStream(i32* %11, i32 %163, i32* %164, i32 %167, i32 %170)
  %172 = load i32, i32* %11, align 4
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = call i32 @XXH64_hashFromCanonical(i32* %174)
  %176 = icmp eq i32 %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %162
  store i32 128, i32* %7, align 4
  br label %178

178:                                              ; preds = %177, %162
  br label %180

179:                                              ; preds = %142
  br label %180

180:                                              ; preds = %179, %178, %161
  %181 = load i32*, i32** %6, align 8
  %182 = call i32 @fclose(i32* %181)
  br label %183

183:                                              ; preds = %180, %141
  %184 = load i32, i32* %7, align 4
  switch i32 %184, label %185 [
    i32 130, label %190
    i32 128, label %206
    i32 129, label %206
  ]

185:                                              ; preds = %183
  %186 = load i8*, i8** %3, align 8
  %187 = call i32 (i8*, i8*, ...) @DISPLAY(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %186)
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  br label %240

190:                                              ; preds = %183
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %205, label %199

199:                                              ; preds = %190
  %200 = load i8*, i8** %3, align 8
  %201 = load i64, i64* %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (i8*, i8*, ...) @DISPLAYRESULT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %200, i64 %201, i32 %203)
  br label %205

205:                                              ; preds = %199, %190
  br label %240

206:                                              ; preds = %183, %183
  store i32 1, i32* %12, align 4
  %207 = load i32, i32* %7, align 4
  %208 = icmp eq i32 %207, 128
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %209
  store i32 0, i32* %12, align 4
  br label %215

215:                                              ; preds = %214, %209
  br label %221

216:                                              ; preds = %206
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %216, %215
  %222 = load i32, i32* %12, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %221
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %239, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i8*
  %234 = load i32, i32* %7, align 4
  %235 = icmp eq i32 %234, 128
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)
  %238 = call i32 (i8*, i8*, ...) @DISPLAYRESULT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %233, i8* %237)
  br label %239

239:                                              ; preds = %229, %224, %221
  br label %240

240:                                              ; preds = %239, %205, %185
  br label %20

241:                                              ; preds = %67, %51, %32, %20
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @DISPLAY(i8*, i8*, ...) #1

declare dso_local i32 @getLine(i32*, i32*, i32) #1

declare dso_local i64 @parseLine(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @BMK_hashStream(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @XXH32_hashFromCanonical(i32*) #1

declare dso_local i32 @XXH64_hashFromCanonical(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @DISPLAYRESULT(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

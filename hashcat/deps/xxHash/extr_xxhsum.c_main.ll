; ModuleID = '/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_main.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/xxHash/extr_xxhsum.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XXH_DEFAULT_SAMPLE_SIZE = common dso_local global i64 0, align 8
@g_defaultAlgo = common dso_local global i32 0, align 4
@big_endian = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"xxh32sum\00", align 1
@algo_xxh32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"--little-endian\00", align 1
@little_endian = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"--check\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"--strict\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"--status\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"--warn\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@g_nbIterations = common dso_local global i8* null, align 8
@g_displayLevel = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load i64, i64* @XXH_DEFAULT_SAMPLE_SIZE, align 8
  store i64 %23, i64* %16, align 8
  %24 = load i32, i32* @g_defaultAlgo, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* @big_endian, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32* @strstr(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @algo_xxh32, align 4
  store i32 %30, i32* %17, align 4
  br label %31

31:                                               ; preds = %29, %2
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %159, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %162

36:                                               ; preds = %32
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %19, align 8
  %42 = load i8*, i8** %19, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %159

45:                                               ; preds = %36
  %46 = load i8*, i8** %19, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @little_endian, align 4
  store i32 %50, i32* %18, align 4
  br label %159

51:                                               ; preds = %45
  %52 = load i8*, i8** %19, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 1, i32* %10, align 4
  br label %159

56:                                               ; preds = %51
  %57 = load i8*, i8** %19, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 1, i32* %11, align 4
  br label %159

61:                                               ; preds = %56
  %62 = load i8*, i8** %19, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i32 1, i32* %12, align 4
  br label %159

66:                                               ; preds = %61
  %67 = load i8*, i8** %19, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store i32 1, i32* %14, align 4
  br label %159

71:                                               ; preds = %66
  %72 = load i8*, i8** %19, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i32 1, i32* %13, align 4
  br label %159

76:                                               ; preds = %71
  %77 = load i8*, i8** %19, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @usage_advanced(i8* %81)
  store i32 %82, i32* %3, align 4
  br label %229

83:                                               ; preds = %76
  %84 = load i8*, i8** %19, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @WELCOME_MESSAGE(i8* %88)
  %90 = call i32 @DISPLAY(i32 %89)
  store i32 0, i32* %3, align 4
  br label %229

91:                                               ; preds = %83
  %92 = load i8*, i8** %19, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 45
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %99, %96
  br label %159

102:                                              ; preds = %91
  %103 = load i8*, i8** %19, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %19, align 8
  br label %105

105:                                              ; preds = %157, %102
  %106 = load i8*, i8** %19, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %158

110:                                              ; preds = %105
  %111 = load i8*, i8** %19, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  switch i32 %113, label %154 [
    i32 86, label %114
    i32 104, label %118
    i32 72, label %121
    i32 99, label %129
    i32 119, label %132
    i32 98, label %135
    i32 105, label %140
    i32 66, label %144
    i32 113, label %149
  ]

114:                                              ; preds = %110
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @WELCOME_MESSAGE(i8* %115)
  %117 = call i32 @DISPLAY(i32 %116)
  store i32 0, i32* %3, align 4
  br label %229

118:                                              ; preds = %110
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @usage_advanced(i8* %119)
  store i32 %120, i32* %3, align 4
  br label %229

121:                                              ; preds = %110
  %122 = load i8*, i8** %19, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = sub nsw i32 %125, 48
  store i32 %126, i32* %17, align 4
  %127 = load i8*, i8** %19, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 2
  store i8* %128, i8** %19, align 8
  br label %157

129:                                              ; preds = %110
  store i32 1, i32* %10, align 4
  %130 = load i8*, i8** %19, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %19, align 8
  br label %157

132:                                              ; preds = %110
  store i32 1, i32* %13, align 4
  %133 = load i8*, i8** %19, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %19, align 8
  br label %157

135:                                              ; preds = %110
  %136 = load i8*, i8** %19, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %19, align 8
  store i32 1, i32* %9, align 4
  %138 = call i8* @readU32FromChar(i8** %19)
  %139 = ptrtoint i8* %138 to i32
  store i32 %139, i32* %15, align 4
  br label %157

140:                                              ; preds = %110
  %141 = load i8*, i8** %19, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %19, align 8
  %143 = call i8* @readU32FromChar(i8** %19)
  store i8* %143, i8** @g_nbIterations, align 8
  br label %157

144:                                              ; preds = %110
  %145 = load i8*, i8** %19, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %19, align 8
  %147 = call i8* @readU32FromChar(i8** %19)
  %148 = ptrtoint i8* %147 to i64
  store i64 %148, i64* %16, align 8
  br label %157

149:                                              ; preds = %110
  %150 = load i8*, i8** %19, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %19, align 8
  %152 = load i32, i32* @g_displayLevel, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* @g_displayLevel, align 4
  br label %157

154:                                              ; preds = %110
  %155 = load i8*, i8** %8, align 8
  %156 = call i32 @badusage(i8* %155)
  store i32 %156, i32* %3, align 4
  br label %229

157:                                              ; preds = %149, %144, %140, %135, %132, %129, %121
  br label %105

158:                                              ; preds = %105
  br label %159

159:                                              ; preds = %158, %101, %75, %70, %65, %60, %55, %49, %44
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %32

162:                                              ; preds = %32
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %186

165:                                              ; preds = %162
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @WELCOME_MESSAGE(i8* %166)
  %168 = call i32 @DISPLAYLEVEL(i32 2, i32 %167)
  %169 = call i32 (...) @BMK_sanityCheck()
  %170 = load i32, i32* %7, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load i64, i64* %16, align 8
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @BMK_benchInternal(i64 %173, i32 %174)
  store i32 %175, i32* %3, align 4
  br label %229

176:                                              ; preds = %165
  %177 = load i8**, i8*** %5, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* %7, align 4
  %183 = sub nsw i32 %181, %182
  %184 = load i32, i32* %15, align 4
  %185 = call i32 @BMK_benchFiles(i8** %180, i32 %183, i32 %184)
  store i32 %185, i32* %3, align 4
  br label %229

186:                                              ; preds = %162
  %187 = load i32, i32* %7, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %186
  %190 = load i32, i32* @stdin, align 4
  %191 = call i64 @IS_CONSOLE(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i8*, i8** %8, align 8
  %195 = call i32 @badusage(i8* %194)
  store i32 %195, i32* %3, align 4
  br label %229

196:                                              ; preds = %189, %186
  %197 = load i32, i32* %7, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32, i32* %4, align 4
  store i32 %200, i32* %7, align 4
  br label %201

201:                                              ; preds = %199, %196
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %218

204:                                              ; preds = %201
  %205 = load i8**, i8*** %5, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* %7, align 4
  %211 = sub nsw i32 %209, %210
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %14, align 4
  %217 = call i32 @checkFiles(i8** %208, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216)
  store i32 %217, i32* %3, align 4
  br label %229

218:                                              ; preds = %201
  %219 = load i8**, i8*** %5, align 8
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %219, i64 %221
  %223 = load i32, i32* %4, align 4
  %224 = load i32, i32* %7, align 4
  %225 = sub nsw i32 %223, %224
  %226 = load i32, i32* %17, align 4
  %227 = load i32, i32* %18, align 4
  %228 = call i32 @BMK_hashFiles(i8** %222, i32 %225, i32 %226, i32 %227)
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %218, %204, %193, %176, %172, %154, %118, %114, %87, %80
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage_advanced(i8*) #1

declare dso_local i32 @DISPLAY(i32) #1

declare dso_local i32 @WELCOME_MESSAGE(i8*) #1

declare dso_local i8* @readU32FromChar(i8**) #1

declare dso_local i32 @badusage(i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i32) #1

declare dso_local i32 @BMK_sanityCheck(...) #1

declare dso_local i32 @BMK_benchInternal(i64, i32) #1

declare dso_local i32 @BMK_benchFiles(i8**, i32, i32) #1

declare dso_local i64 @IS_CONSOLE(i32) #1

declare dso_local i32 @checkFiles(i8**, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BMK_hashFiles(i8**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

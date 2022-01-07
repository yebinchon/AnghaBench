; ModuleID = '/home/carl/AnghaBench/lede/package/lean/luci-app-xlnetacc/tools/po2lmo/src/extr_po2lmo.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/luci-app-xlnetacc/tools/po2lmo/src/extr_po2lmo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"msgid \22\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Syntax error in msgid\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"msgstr \22\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca [4096 x i8], align 16
  %8 = alloca [4096 x i8], align 16
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_2__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %15, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %34, label %22

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %18, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i32* @fopen(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %32, i32** %19, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %28, %22, %2
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @usage(i8* %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i32 0, i32 4096)
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %43 = call i32 @memset(i8* %42, i32 0, i32 4096)
  %44 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %45 = call i32 @memset(i8* %44, i32 0, i32 4096)
  br label %46

46:                                               ; preds = %203, %39
  %47 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %48 = load i32*, i32** %18, align 8
  %49 = call i32* @fgets(i8* %47, i32 4096, i32* %48)
  %50 = icmp ne i32* null, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = icmp sge i32 %52, 2
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32*, i32** %18, align 8
  %56 = call i64 @feof(i32* %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ false, %51 ], [ %57, %54 ]
  br label %60

60:                                               ; preds = %58, %46
  %61 = phi i1 [ true, %46 ], [ %59, %58 ]
  br i1 %61, label %62, label %206

62:                                               ; preds = %60
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %67 = call i8* @strstr(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %68 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %72 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %73 = call i32 @extract_string(i8* %71, i8* %72, i32 4096)
  switch i32 %73, label %77 [
    i32 -1, label %74
    i32 0, label %76
  ]

74:                                               ; preds = %70
  %75 = call i32 @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %70, %74
  store i32 1, i32* %10, align 4
  br label %78

77:                                               ; preds = %70
  store i32 2, i32* %10, align 4
  br label %78

78:                                               ; preds = %77, %76
  br label %126

79:                                               ; preds = %65, %62
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %111

85:                                               ; preds = %82, %79
  %86 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %87 = call i8* @strstr(i8* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %88 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %89 = icmp eq i8* %87, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %100

93:                                               ; preds = %90, %85
  %94 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %95 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %96 = call i32 @extract_string(i8* %94, i8* %95, i32 4096)
  switch i32 %96, label %98 [
    i32 -1, label %97
  ]

97:                                               ; preds = %93
  store i32 4, i32* %10, align 4
  br label %99

98:                                               ; preds = %93
  store i32 3, i32* %10, align 4
  br label %99

99:                                               ; preds = %98, %97
  br label %110

100:                                              ; preds = %90
  %101 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %102 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %103 = call i32 @extract_string(i8* %101, i8* %102, i32 4096)
  switch i32 %103, label %105 [
    i32 -1, label %104
  ]

104:                                              ; preds = %100
  store i32 2, i32* %10, align 4
  br label %109

105:                                              ; preds = %100
  %106 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %107 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %108 = call i32 @strcat(i8* %106, i8* %107)
  br label %109

109:                                              ; preds = %105, %104
  br label %110

110:                                              ; preds = %109, %99
  br label %125

111:                                              ; preds = %82
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, 3
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %116 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %117 = call i32 @extract_string(i8* %115, i8* %116, i32 4096)
  switch i32 %117, label %119 [
    i32 -1, label %118
  ]

118:                                              ; preds = %114
  store i32 4, i32* %10, align 4
  br label %123

119:                                              ; preds = %114
  %120 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %121 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %122 = call i32 @strcat(i8* %120, i8* %121)
  br label %123

123:                                              ; preds = %119, %118
  br label %124

124:                                              ; preds = %123, %111
  br label %125

125:                                              ; preds = %124, %110
  br label %126

126:                                              ; preds = %125, %78
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %127, 4
  br i1 %128, label %129, label %203

129:                                              ; preds = %126
  %130 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %131 = call i32 @strlen(i8* %130)
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %198

133:                                              ; preds = %129
  %134 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %135 = call i32 @strlen(i8* %134)
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %198

137:                                              ; preds = %133
  %138 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %139 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %140 = call i32 @strlen(i8* %139)
  %141 = call i64 @sfh_hash(i8* %138, i32 %140)
  store i64 %141, i64* %16, align 8
  %142 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %143 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %144 = call i32 @strlen(i8* %143)
  %145 = call i64 @sfh_hash(i8* %142, i32 %144)
  store i64 %145, i64* %17, align 8
  %146 = load i64, i64* %16, align 8
  %147 = load i64, i64* %17, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %197

149:                                              ; preds = %137
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  %152 = load i8*, i8** %14, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 24
  %156 = trunc i64 %155 to i32
  %157 = call i8* @realloc(i8* %152, i32 %156)
  store i8* %157, i8** %14, align 8
  %158 = load i8*, i8** %14, align 8
  %159 = bitcast i8* %158 to %struct.TYPE_2__*
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i64 -1
  store %struct.TYPE_2__* %163, %struct.TYPE_2__** %15, align 8
  %164 = load i8*, i8** %14, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %149
  %167 = call i32 @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %149
  %169 = load i64, i64* %16, align 8
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 3
  store i64 %169, i64* %171, align 8
  %172 = load i64, i64* %17, align 8
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 2
  store i64 %172, i64* %174, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %179 = call i32 @strlen(i8* %178)
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %183 = call i32 @strlen(i8* %182)
  %184 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %185 = call i32 @strlen(i8* %184)
  %186 = srem i32 %185, 4
  %187 = sub nsw i32 4, %186
  %188 = srem i32 %187, 4
  %189 = add nsw i32 %183, %188
  store i32 %189, i32* %12, align 4
  %190 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %191 = load i32, i32* %12, align 4
  %192 = load i32*, i32** %19, align 8
  %193 = call i32 @print(i8* %190, i32 %191, i32 1, i32* %192)
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %11, align 4
  br label %197

197:                                              ; preds = %168, %137
  br label %198

198:                                              ; preds = %197, %133, %129
  store i32 0, i32* %10, align 4
  %199 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %200 = call i32 @memset(i8* %199, i32 0, i32 4096)
  %201 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %202 = call i32 @memset(i8* %201, i32 0, i32 4096)
  br label %203

203:                                              ; preds = %198, %126
  %204 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %205 = call i32 @memset(i8* %204, i32 0, i32 4096)
  br label %46

206:                                              ; preds = %60
  %207 = load i8*, i8** %14, align 8
  %208 = load i32, i32* %13, align 4
  %209 = load i32*, i32** %19, align 8
  %210 = call i32 @print_index(i8* %207, i32 %208, i32* %209)
  %211 = load i32, i32* %11, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %206
  %214 = load i32, i32* %11, align 4
  %215 = load i32*, i32** %19, align 8
  %216 = call i32 @print_uint32(i32 %214, i32* %215)
  %217 = load i32*, i32** %19, align 8
  %218 = call i32 @fileno(i32* %217)
  %219 = call i32 @fsync(i32 %218)
  %220 = load i32*, i32** %19, align 8
  %221 = call i32 @fclose(i32* %220)
  br label %229

222:                                              ; preds = %206
  %223 = load i32*, i32** %19, align 8
  %224 = call i32 @fclose(i32* %223)
  %225 = load i8**, i8*** %5, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 2
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @unlink(i8* %227)
  br label %229

229:                                              ; preds = %222, %213
  %230 = load i32*, i32** %18, align 8
  %231 = call i32 @fclose(i32* %230)
  ret i32 0
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @extract_string(i8*, i8*, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @sfh_hash(i8*, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @print(i8*, i32, i32, i32*) #1

declare dso_local i32 @print_index(i8*, i32, i32*) #1

declare dso_local i32 @print_uint32(i32, i32*) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

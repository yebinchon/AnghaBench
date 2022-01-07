; ModuleID = '/home/carl/AnghaBench/libgit2/deps/pcre/extr_pcre_compile.c_is_anchored.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/pcre/extr_pcre_compile.c_is_anchored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@OP_lengths = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@OP_BRA = common dso_local global i32 0, align 4
@OP_BRAPOS = common dso_local global i32 0, align 4
@OP_SBRA = common dso_local global i32 0, align 4
@OP_SBRAPOS = common dso_local global i32 0, align 4
@OP_CBRA = common dso_local global i32 0, align 4
@OP_CBRAPOS = common dso_local global i32 0, align 4
@OP_SCBRA = common dso_local global i32 0, align 4
@OP_SCBRAPOS = common dso_local global i32 0, align 4
@LINK_SIZE = common dso_local global i64 0, align 8
@OP_ASSERT = common dso_local global i32 0, align 4
@OP_COND = common dso_local global i32 0, align 4
@OP_ONCE = common dso_local global i32 0, align 4
@OP_ONCE_NC = common dso_local global i32 0, align 4
@OP_TYPESTAR = common dso_local global i32 0, align 4
@OP_TYPEMINSTAR = common dso_local global i32 0, align 4
@OP_TYPEPOSSTAR = common dso_local global i32 0, align 4
@OP_ALLANY = common dso_local global i64 0, align 8
@OP_SOD = common dso_local global i32 0, align 4
@OP_SOM = common dso_local global i32 0, align 4
@OP_CIRC = common dso_local global i32 0, align 4
@OP_ALT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*, i32, %struct.TYPE_3__*, i32)* @is_anchored to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @is_anchored(i64* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %14

14:                                               ; preds = %192, %4
  %15 = load i64*, i64** %6, align 8
  %16 = load i32, i32* @OP_lengths, align 4
  %17 = call i32* @PRIV(i32 %16)
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %15, i64 %22
  %24 = load i8*, i8** @FALSE, align 8
  %25 = call i64* @first_significant_code(i64* %23, i8* %24)
  store i64* %25, i64** %10, align 8
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @OP_BRA, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %14
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @OP_BRAPOS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @OP_SBRA, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @OP_SBRAPOS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40, %36, %32, %14
  %45 = load i64*, i64** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @is_anchored(i64* %45, i32 %46, %struct.TYPE_3__* %47, i32 %48)
  %50 = icmp ne i8* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load i8*, i8** @FALSE, align 8
  store i8* %52, i8** %5, align 8
  br label %199

53:                                               ; preds = %44
  br label %186

54:                                               ; preds = %40
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @OP_CBRA, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @OP_CBRAPOS, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @OP_SCBRA, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @OP_SCBRAPOS, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %66, %62, %58, %54
  %71 = load i64*, i64** %10, align 8
  %72 = load i64, i64* @LINK_SIZE, align 8
  %73 = add nsw i64 1, %72
  %74 = call i32 @GET2(i64* %71, i64 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 32
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* %12, align 4
  %80 = shl i32 1, %79
  br label %82

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 1, %81 ]
  %84 = or i32 %75, %83
  store i32 %84, i32* %13, align 4
  %85 = load i64*, i64** %10, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i8* @is_anchored(i64* %85, i32 %86, %struct.TYPE_3__* %87, i32 %88)
  %90 = icmp ne i8* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %82
  %92 = load i8*, i8** @FALSE, align 8
  store i8* %92, i8** %5, align 8
  br label %199

93:                                               ; preds = %82
  br label %185

94:                                               ; preds = %66
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @OP_ASSERT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @OP_COND, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98, %94
  %103 = load i64*, i64** %10, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i8* @is_anchored(i64* %103, i32 %104, %struct.TYPE_3__* %105, i32 %106)
  %108 = icmp ne i8* %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %102
  %110 = load i8*, i8** @FALSE, align 8
  store i8* %110, i8** %5, align 8
  br label %199

111:                                              ; preds = %102
  br label %184

112:                                              ; preds = %98
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @OP_ONCE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @OP_ONCE_NC, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116, %112
  %121 = load i64*, i64** %10, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  %126 = call i8* @is_anchored(i64* %121, i32 %122, %struct.TYPE_3__* %123, i32 %125)
  %127 = icmp ne i8* %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %120
  %129 = load i8*, i8** @FALSE, align 8
  store i8* %129, i8** %5, align 8
  br label %199

130:                                              ; preds = %120
  br label %183

131:                                              ; preds = %116
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @OP_TYPESTAR, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %143, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @OP_TYPEMINSTAR, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @OP_TYPEPOSSTAR, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %167

143:                                              ; preds = %139, %135, %131
  %144 = load i64*, i64** %10, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @OP_ALLANY, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %164, label %149

149:                                              ; preds = %143
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %150, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %9, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %156
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159, %156, %149, %143
  %165 = load i8*, i8** @FALSE, align 8
  store i8* %165, i8** %5, align 8
  br label %199

166:                                              ; preds = %159
  br label %182

167:                                              ; preds = %139
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @OP_SOD, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %167
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @OP_SOM, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* @OP_CIRC, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i8*, i8** @FALSE, align 8
  store i8* %180, i8** %5, align 8
  br label %199

181:                                              ; preds = %175, %171, %167
  br label %182

182:                                              ; preds = %181, %166
  br label %183

183:                                              ; preds = %182, %130
  br label %184

184:                                              ; preds = %183, %111
  br label %185

185:                                              ; preds = %184, %93
  br label %186

186:                                              ; preds = %185, %53
  %187 = load i64*, i64** %6, align 8
  %188 = call i32 @GET(i64* %187, i32 1)
  %189 = load i64*, i64** %6, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  store i64* %191, i64** %6, align 8
  br label %192

192:                                              ; preds = %186
  %193 = load i64*, i64** %6, align 8
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @OP_ALT, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %14, label %197

197:                                              ; preds = %192
  %198 = load i8*, i8** @TRUE, align 8
  store i8* %198, i8** %5, align 8
  br label %199

199:                                              ; preds = %197, %179, %164, %128, %109, %91, %51
  %200 = load i8*, i8** %5, align 8
  ret i8* %200
}

declare dso_local i64* @first_significant_code(i64*, i8*) #1

declare dso_local i32* @PRIV(i32) #1

declare dso_local i32 @GET2(i64*, i64) #1

declare dso_local i32 @GET(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

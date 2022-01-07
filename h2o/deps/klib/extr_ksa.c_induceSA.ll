; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_ksa.c_induceSA.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_ksa.c_induceSA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i64*, i64*, i64, i64, i64)* @induceSA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @induceSA(i8* %0, i64* %1, i64* %2, i64* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %20 = load i64*, i64** %10, align 8
  %21 = load i64*, i64** %11, align 8
  %22 = icmp eq i64* %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %7
  %24 = load i8*, i8** %8, align 8
  %25 = load i64*, i64** %10, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call i32 @getCounts(i8* %24, i64* %25, i64 %26, i64 %27, i64 %28)
  br label %30

30:                                               ; preds = %23, %7
  %31 = load i64*, i64** %10, align 8
  %32 = load i64*, i64** %11, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @getBuckets(i64* %31, i64* %32, i64 %33, i32 0)
  store i64 0, i64* %16, align 8
  store i64* null, i64** %15, align 8
  store i64 -1, i64* %19, align 8
  br label %35

35:                                               ; preds = %106, %30
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %109

39:                                               ; preds = %35
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %16, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %17, align 8
  %44 = load i64, i64* %17, align 8
  %45 = xor i64 %44, -1
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %16, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %17, align 8
  %50 = icmp ult i64 0, %49
  br i1 %50, label %51, label %105

51:                                               ; preds = %39
  %52 = load i64, i64* %17, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %17, align 8
  %54 = load i64, i64* %17, align 8
  %55 = call i64 @chr(i64 %54)
  store i64 %55, i64* %18, align 8
  %56 = load i64, i64* %19, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %51
  %59 = load i64*, i64** %15, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = ptrtoint i64* %59 to i64
  %62 = ptrtoint i64* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 8
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %19, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i64, i64* %19, align 8
  br label %71

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i64 [ %69, %68 ], [ 0, %70 ]
  %73 = getelementptr inbounds i64, i64* %65, i64 %72
  store i64 %64, i64* %73, align 8
  %74 = load i64, i64* %18, align 8
  store i64 %74, i64* %19, align 8
  %75 = load i64*, i64** %9, align 8
  %76 = load i64*, i64** %11, align 8
  %77 = load i64, i64* %19, align 8
  %78 = icmp ugt i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i64, i64* %19, align 8
  br label %82

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i64 [ %80, %79 ], [ 0, %81 ]
  %84 = getelementptr inbounds i64, i64* %76, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i64, i64* %75, i64 %85
  store i64* %86, i64** %15, align 8
  br label %87

87:                                               ; preds = %82, %51
  %88 = load i64, i64* %17, align 8
  %89 = icmp ult i64 0, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i64, i64* %17, align 8
  %92 = sub i64 %91, 1
  %93 = call i64 @chr(i64 %92)
  %94 = load i64, i64* %19, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i64, i64* %17, align 8
  %98 = xor i64 %97, -1
  br label %101

99:                                               ; preds = %90, %87
  %100 = load i64, i64* %17, align 8
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i64 [ %98, %96 ], [ %100, %99 ]
  %103 = load i64*, i64** %15, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 1
  store i64* %104, i64** %15, align 8
  store i64 %102, i64* %103, align 8
  br label %105

105:                                              ; preds = %101, %39
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %16, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %16, align 8
  br label %35

109:                                              ; preds = %35
  %110 = load i64*, i64** %10, align 8
  %111 = load i64*, i64** %11, align 8
  %112 = icmp eq i64* %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load i8*, i8** %8, align 8
  %115 = load i64*, i64** %10, align 8
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %14, align 8
  %119 = call i32 @getCounts(i8* %114, i64* %115, i64 %116, i64 %117, i64 %118)
  br label %120

120:                                              ; preds = %113, %109
  %121 = load i64*, i64** %10, align 8
  %122 = load i64*, i64** %11, align 8
  %123 = load i64, i64* %13, align 8
  %124 = call i32 @getBuckets(i64* %121, i64* %122, i64 %123, i32 1)
  %125 = load i64, i64* %12, align 8
  %126 = sub i64 %125, 1
  store i64 %126, i64* %16, align 8
  store i64* null, i64** %15, align 8
  store i64 -1, i64* %19, align 8
  br label %127

127:                                              ; preds = %201, %120
  %128 = load i64, i64* %16, align 8
  %129 = icmp ule i64 0, %128
  br i1 %129, label %130, label %204

130:                                              ; preds = %127
  %131 = load i64*, i64** %9, align 8
  %132 = load i64, i64* %16, align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %17, align 8
  %135 = icmp ult i64 0, %134
  br i1 %135, label %136, label %194

136:                                              ; preds = %130
  %137 = load i64, i64* %17, align 8
  %138 = add i64 %137, -1
  store i64 %138, i64* %17, align 8
  %139 = load i64, i64* %17, align 8
  %140 = call i64 @chr(i64 %139)
  store i64 %140, i64* %18, align 8
  %141 = load i64, i64* %19, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %172

143:                                              ; preds = %136
  %144 = load i64*, i64** %15, align 8
  %145 = load i64*, i64** %9, align 8
  %146 = ptrtoint i64* %144 to i64
  %147 = ptrtoint i64* %145 to i64
  %148 = sub i64 %146, %147
  %149 = sdiv exact i64 %148, 8
  %150 = load i64*, i64** %11, align 8
  %151 = load i64, i64* %19, align 8
  %152 = icmp ugt i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %143
  %154 = load i64, i64* %19, align 8
  br label %156

155:                                              ; preds = %143
  br label %156

156:                                              ; preds = %155, %153
  %157 = phi i64 [ %154, %153 ], [ 0, %155 ]
  %158 = getelementptr inbounds i64, i64* %150, i64 %157
  store i64 %149, i64* %158, align 8
  %159 = load i64, i64* %18, align 8
  store i64 %159, i64* %19, align 8
  %160 = load i64*, i64** %9, align 8
  %161 = load i64*, i64** %11, align 8
  %162 = load i64, i64* %19, align 8
  %163 = icmp ugt i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = load i64, i64* %19, align 8
  br label %167

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166, %164
  %168 = phi i64 [ %165, %164 ], [ 0, %166 ]
  %169 = getelementptr inbounds i64, i64* %161, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i64, i64* %160, i64 %170
  store i64* %171, i64** %15, align 8
  br label %172

172:                                              ; preds = %167, %136
  %173 = load i64, i64* %18, align 8
  %174 = icmp ugt i64 %173, 0
  br i1 %174, label %175, label %193

175:                                              ; preds = %172
  %176 = load i64, i64* %17, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %175
  %179 = load i64, i64* %17, align 8
  %180 = sub i64 %179, 1
  %181 = call i64 @chr(i64 %180)
  %182 = load i64, i64* %19, align 8
  %183 = icmp ugt i64 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %178, %175
  %185 = load i64, i64* %17, align 8
  %186 = xor i64 %185, -1
  br label %189

187:                                              ; preds = %178
  %188 = load i64, i64* %17, align 8
  br label %189

189:                                              ; preds = %187, %184
  %190 = phi i64 [ %186, %184 ], [ %188, %187 ]
  %191 = load i64*, i64** %15, align 8
  %192 = getelementptr inbounds i64, i64* %191, i32 -1
  store i64* %192, i64** %15, align 8
  store i64 %190, i64* %192, align 8
  br label %193

193:                                              ; preds = %189, %172
  br label %200

194:                                              ; preds = %130
  %195 = load i64, i64* %17, align 8
  %196 = xor i64 %195, -1
  %197 = load i64*, i64** %9, align 8
  %198 = load i64, i64* %16, align 8
  %199 = getelementptr inbounds i64, i64* %197, i64 %198
  store i64 %196, i64* %199, align 8
  br label %200

200:                                              ; preds = %194, %193
  br label %201

201:                                              ; preds = %200
  %202 = load i64, i64* %16, align 8
  %203 = add i64 %202, -1
  store i64 %203, i64* %16, align 8
  br label %127

204:                                              ; preds = %127
  ret void
}

declare dso_local i32 @getCounts(i8*, i64*, i64, i64, i64) #1

declare dso_local i32 @getBuckets(i64*, i64*, i64, i32) #1

declare dso_local i64 @chr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

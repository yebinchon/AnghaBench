; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_base64.c_base64_encode.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_base64.c_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POLARSSL_ERR_BASE64_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@base64_enc_map = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @base64_encode(i8* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %193

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = shl i64 %20, 3
  %22 = udiv i64 %21, 6
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %9, align 8
  %24 = shl i64 %23, 3
  %25 = load i64, i64* %11, align 8
  %26 = mul i64 %25, 6
  %27 = sub i64 %24, %26
  switch i64 %27, label %34 [
    i64 2, label %28
    i64 4, label %31
  ]

28:                                               ; preds = %19
  %29 = load i64, i64* %11, align 8
  %30 = add i64 %29, 3
  store i64 %30, i64* %11, align 8
  br label %35

31:                                               ; preds = %19
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, 2
  store i64 %33, i64* %11, align 8
  br label %35

34:                                               ; preds = %19
  br label %35

35:                                               ; preds = %34, %31, %28
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, 1
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i64, i64* %11, align 8
  %43 = add i64 %42, 1
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* @POLARSSL_ERR_BASE64_BUFFER_TOO_SMALL, align 4
  store i32 %45, i32* %5, align 4
  br label %193

46:                                               ; preds = %35
  %47 = load i64, i64* %9, align 8
  %48 = udiv i64 %47, 3
  %49 = mul i64 %48, 3
  store i64 %49, i64* %11, align 8
  store i64 0, i64* %10, align 8
  %50 = load i8*, i8** %6, align 8
  store i8* %50, i8** %15, align 8
  br label %51

51:                                               ; preds = %115, %46
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %118

55:                                               ; preds = %51
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  %58 = load i8, i8* %56, align 1
  %59 = zext i8 %58 to i32
  store i32 %59, i32* %12, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %8, align 8
  %62 = load i8, i8* %60, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  %66 = load i8, i8* %64, align 1
  %67 = zext i8 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load i8**, i8*** @base64_enc_map, align 8
  %69 = load i32, i32* %12, align 4
  %70 = ashr i32 %69, 2
  %71 = and i32 %70, 63
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %68, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = ptrtoint i8* %74 to i8
  %76 = load i8*, i8** %15, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %15, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i8**, i8*** @base64_enc_map, align 8
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, 3
  %81 = shl i32 %80, 4
  %82 = load i32, i32* %13, align 4
  %83 = ashr i32 %82, 4
  %84 = add nsw i32 %81, %83
  %85 = and i32 %84, 63
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %78, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %88 to i8
  %90 = load i8*, i8** %15, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %15, align 8
  store i8 %89, i8* %90, align 1
  %92 = load i8**, i8*** @base64_enc_map, align 8
  %93 = load i32, i32* %13, align 4
  %94 = and i32 %93, 15
  %95 = shl i32 %94, 2
  %96 = load i32, i32* %14, align 4
  %97 = ashr i32 %96, 6
  %98 = add nsw i32 %95, %97
  %99 = and i32 %98, 63
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %92, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = ptrtoint i8* %102 to i8
  %104 = load i8*, i8** %15, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %15, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i8**, i8*** @base64_enc_map, align 8
  %107 = load i32, i32* %14, align 4
  %108 = and i32 %107, 63
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %106, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = ptrtoint i8* %111 to i8
  %113 = load i8*, i8** %15, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %15, align 8
  store i8 %112, i8* %113, align 1
  br label %115

115:                                              ; preds = %55
  %116 = load i64, i64* %10, align 8
  %117 = add i64 %116, 3
  store i64 %117, i64* %10, align 8
  br label %51

118:                                              ; preds = %51
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %185

122:                                              ; preds = %118
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %8, align 8
  %125 = load i8, i8* %123, align 1
  %126 = zext i8 %125 to i32
  store i32 %126, i32* %12, align 4
  %127 = load i64, i64* %10, align 8
  %128 = add i64 %127, 1
  %129 = load i64, i64* %9, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %8, align 8
  %134 = load i8, i8* %132, align 1
  %135 = zext i8 %134 to i32
  br label %137

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %136, %131
  %138 = phi i32 [ %135, %131 ], [ 0, %136 ]
  store i32 %138, i32* %13, align 4
  %139 = load i8**, i8*** @base64_enc_map, align 8
  %140 = load i32, i32* %12, align 4
  %141 = ashr i32 %140, 2
  %142 = and i32 %141, 63
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %139, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = ptrtoint i8* %145 to i8
  %147 = load i8*, i8** %15, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %15, align 8
  store i8 %146, i8* %147, align 1
  %149 = load i8**, i8*** @base64_enc_map, align 8
  %150 = load i32, i32* %12, align 4
  %151 = and i32 %150, 3
  %152 = shl i32 %151, 4
  %153 = load i32, i32* %13, align 4
  %154 = ashr i32 %153, 4
  %155 = add nsw i32 %152, %154
  %156 = and i32 %155, 63
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %149, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = ptrtoint i8* %159 to i8
  %161 = load i8*, i8** %15, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %15, align 8
  store i8 %160, i8* %161, align 1
  %163 = load i64, i64* %10, align 8
  %164 = add i64 %163, 1
  %165 = load i64, i64* %9, align 8
  %166 = icmp ult i64 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %137
  %168 = load i8**, i8*** @base64_enc_map, align 8
  %169 = load i32, i32* %13, align 4
  %170 = and i32 %169, 15
  %171 = shl i32 %170, 2
  %172 = and i32 %171, 63
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %168, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = ptrtoint i8* %175 to i8
  %177 = load i8*, i8** %15, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %15, align 8
  store i8 %176, i8* %177, align 1
  br label %182

179:                                              ; preds = %137
  %180 = load i8*, i8** %15, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %15, align 8
  store i8 61, i8* %180, align 1
  br label %182

182:                                              ; preds = %179, %167
  %183 = load i8*, i8** %15, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %15, align 8
  store i8 61, i8* %183, align 1
  br label %185

185:                                              ; preds = %182, %118
  %186 = load i8*, i8** %15, align 8
  %187 = load i8*, i8** %6, align 8
  %188 = ptrtoint i8* %186 to i64
  %189 = ptrtoint i8* %187 to i64
  %190 = sub i64 %188, %189
  %191 = load i64*, i64** %7, align 8
  store i64 %190, i64* %191, align 8
  %192 = load i8*, i8** %15, align 8
  store i8 0, i8* %192, align 1
  store i32 0, i32* %5, align 4
  br label %193

193:                                              ; preds = %185, %41, %18
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

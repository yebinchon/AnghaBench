; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_canonical_huffman.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_canonical_huffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HUFFMAN_MAX_CODE_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @canonical_huffman(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i32, i32* @HUFFMAN_MAX_CODE_LENGTH, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* @HUFFMAN_MAX_CODE_LENGTH, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %28 = getelementptr inbounds i32, i32* %23, i64 1
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(i32* %28, i32 0, i32 %32)
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %48, %6
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %23, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %34

51:                                               ; preds = %34
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %79, %51
  %59 = load i32, i32* %13, align 4
  %60 = icmp sge i32 %59, 1
  br i1 %60, label %61, label %82

61:                                               ; preds = %58
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %23, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %67, %72
  %74 = ashr i32 %73, 1
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %61
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %13, align 4
  br label %58

82:                                               ; preds = %58
  %83 = getelementptr inbounds i32, i32* %27, i64 1
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memcpy(i32* %83, i32* %85, i32 %89)
  %91 = load i32*, i32** %11, align 8
  %92 = icmp ne i32* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %143

96:                                               ; preds = %82
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %139, %96
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %142

101:                                              ; preds = %97
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  br label %139

110:                                              ; preds = %101
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %27, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = load i32, i32* @HUFFMAN_MAX_CODE_LENGTH, align 4
  %122 = add nsw i32 %121, 1
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %27, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %126, %132
  %134 = mul nsw i32 %122, %133
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %120, i64 %137
  store i32 %119, i32* %138, align 4
  br label %139

139:                                              ; preds = %110, %109
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %97

142:                                              ; preds = %97
  br label %182

143:                                              ; preds = %82
  store i32 0, i32* %13, align 4
  br label %144

144:                                              ; preds = %178, %143
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %181

148:                                              ; preds = %144
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %148
  br label %178

157:                                              ; preds = %148
  %158 = load i32, i32* %13, align 4
  %159 = load i32*, i32** %12, align 8
  %160 = load i32, i32* @HUFFMAN_MAX_CODE_LENGTH, align 4
  %161 = add nsw i32 %160, 1
  %162 = load i32, i32* %18, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %27, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  %167 = load i32*, i32** %10, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %165, %171
  %173 = mul nsw i32 %161, %172
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %159, i64 %176
  store i32 %158, i32* %177, align 4
  br label %178

178:                                              ; preds = %157, %156
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %13, align 4
  br label %144

181:                                              ; preds = %144
  br label %182

182:                                              ; preds = %181, %142
  %183 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %183)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @unlikely(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

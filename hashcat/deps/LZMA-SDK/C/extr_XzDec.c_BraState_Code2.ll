; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_BraState_Code2.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_BraState_Code2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32* }

@CODER_STATUS_NOT_FINISHED = common dso_local global i32 0, align 4
@BRA_BUF_SIZE = common dso_local global i64 0, align 8
@CODER_STATUS_FINISHED_WITH_MARK = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64*, i32*, i64*, i32, i32, i32*)* @BraState_Code2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BraState_Code2(i8* %0, i32* %1, i64* %2, i32* %3, i64* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_2__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %17, align 8
  %24 = load i64*, i64** %11, align 8
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %18, align 8
  %26 = load i64*, i64** %13, align 8
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %19, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call i32 @UNUSED_VAR(i32 %28)
  %30 = load i64*, i64** %11, align 8
  store i64 0, i64* %30, align 8
  %31 = load i64*, i64** %13, align 8
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @CODER_STATUS_NOT_FINISHED, align 4
  %33 = load i32*, i32** %16, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %184, %58, %8
  %35 = load i64, i64* %18, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %185

37:                                               ; preds = %34
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %84

45:                                               ; preds = %37
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  store i64 %52, i64* %20, align 8
  %53 = load i64, i64* %20, align 8
  %54 = load i64, i64* %18, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i64, i64* %18, align 8
  store i64 %57, i64* %20, align 8
  br label %58

58:                                               ; preds = %56, %45
  %59 = load i32*, i32** %10, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i64, i64* %20, align 8
  %68 = call i32 @memcpy(i32* %59, i32* %66, i64 %67)
  %69 = load i64, i64* %20, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load i64, i64* %20, align 8
  %75 = load i64*, i64** %11, align 8
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %74
  store i64 %77, i64* %75, align 8
  %78 = load i64, i64* %20, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 %78
  store i32* %80, i32** %10, align 8
  %81 = load i64, i64* %20, align 8
  %82 = load i64, i64* %18, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %18, align 8
  br label %34

84:                                               ; preds = %37
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %91, %87
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @memmove(i32* %96, i32* %103, i32 %106)
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load i64, i64* @BRA_BUF_SIZE, align 8
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = sub i64 %112, %116
  store i64 %117, i64* %21, align 8
  %118 = load i64, i64* %21, align 8
  %119 = load i64, i64* %19, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %84
  %122 = load i64, i64* %19, align 8
  store i64 %122, i64* %21, align 8
  br label %123

123:                                              ; preds = %121, %84
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load i32*, i32** %12, align 8
  %133 = load i64, i64* %21, align 8
  %134 = call i32 @memcpy(i32* %131, i32* %132, i64 %133)
  %135 = load i64, i64* %21, align 8
  %136 = load i64*, i64** %13, align 8
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, %135
  store i64 %138, i64* %136, align 8
  %139 = load i64, i64* %21, align 8
  %140 = load i32*, i32** %12, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 %139
  store i32* %141, i32** %12, align 8
  %142 = load i64, i64* %21, align 8
  %143 = load i64, i64* %19, align 8
  %144 = sub i64 %143, %142
  store i64 %144, i64* %19, align 8
  %145 = load i64, i64* %21, align 8
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = add i64 %149, %145
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 8
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %123
  br label %185

157:                                              ; preds = %123
  %158 = load i8*, i8** %9, align 8
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = call i64 @BraState_Filter(i8* %158, i32* %161, i64 %165)
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %157
  %174 = load i32, i32* %14, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  br label %185

177:                                              ; preds = %173
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %177, %157
  br label %34

185:                                              ; preds = %176, %156, %34
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %189, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %185
  %195 = load i64, i64* %19, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load i32, i32* %14, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* @CODER_STATUS_FINISHED_WITH_MARK, align 4
  %202 = load i32*, i32** %16, align 8
  store i32 %201, i32* %202, align 4
  br label %203

203:                                              ; preds = %200, %197, %194, %185
  %204 = load i32, i32* @SZ_OK, align 4
  ret i32 %204
}

declare dso_local i32 @UNUSED_VAR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i64 @BraState_Filter(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

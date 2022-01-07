; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_buffer.c_git_buf_encode_base64.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_buffer.c_git_buf_encode_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@base64_encode = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_buf_encode_base64(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = urem i64 %15, 3
  store i64 %16, i64* %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %12, align 8
  %19 = load i64, i64* %6, align 8
  %20 = udiv i64 %19, 3
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = add i64 %20, %26
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %13, i64 %28, i32 1)
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64* %14, i64 %30, i32 4)
  %32 = load i64, i64* %14, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %14, i64 %32, i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @ENSURE_SIZE(%struct.TYPE_4__* %37, i64 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = bitcast i8* %47 to i32*
  store i32* %48, i32** %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %109, %3
  %53 = load i64, i64* %6, align 8
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %55, label %112

55:                                               ; preds = %52
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %12, align 8
  %58 = load i32, i32* %56, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %12, align 8
  %61 = load i32, i32* %59, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %12, align 8
  %64 = load i32, i32* %62, align 4
  store i32 %64, i32* %11, align 4
  %65 = load i8*, i8** @base64_encode, align 8
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  %74 = load i8*, i8** @base64_encode, align 8
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, 3
  %77 = shl i32 %76, 4
  %78 = load i32, i32* %10, align 4
  %79 = ashr i32 %78, 4
  %80 = or i32 %77, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %74, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i8*, i8** @base64_encode, align 8
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, 15
  %90 = shl i32 %89, 2
  %91 = load i32, i32* %11, align 4
  %92 = ashr i32 %91, 6
  %93 = or i32 %90, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %87, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = load i32*, i32** %8, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  %100 = load i8*, i8** @base64_encode, align 8
  %101 = load i32, i32* %11, align 4
  %102 = and i32 %101, 63
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %8, align 8
  store i32 %106, i32* %107, align 4
  br label %109

109:                                              ; preds = %55
  %110 = load i64, i64* %6, align 8
  %111 = sub i64 %110, 3
  store i64 %111, i64* %6, align 8
  br label %52

112:                                              ; preds = %52
  %113 = load i64, i64* %7, align 8
  %114 = icmp ugt i64 %113, 0
  br i1 %114, label %115, label %168

115:                                              ; preds = %112
  %116 = load i32*, i32** %12, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %12, align 8
  %118 = load i32, i32* %116, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i64, i64* %7, align 8
  %120 = icmp ugt i64 %119, 1
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32*, i32** %12, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %12, align 8
  %124 = load i32, i32* %122, align 4
  br label %126

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %121
  %127 = phi i32 [ %124, %121 ], [ 0, %125 ]
  store i32 %127, i32* %10, align 4
  %128 = load i8*, i8** @base64_encode, align 8
  %129 = load i32, i32* %9, align 4
  %130 = ashr i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %128, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = load i32*, i32** %8, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %8, align 8
  store i32 %134, i32* %135, align 4
  %137 = load i8*, i8** @base64_encode, align 8
  %138 = load i32, i32* %9, align 4
  %139 = and i32 %138, 3
  %140 = shl i32 %139, 4
  %141 = load i32, i32* %10, align 4
  %142 = ashr i32 %141, 4
  %143 = or i32 %140, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %137, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %8, align 8
  store i32 %147, i32* %148, align 4
  %150 = load i64, i64* %7, align 8
  %151 = icmp ugt i64 %150, 1
  br i1 %151, label %152, label %161

152:                                              ; preds = %126
  %153 = load i8*, i8** @base64_encode, align 8
  %154 = load i32, i32* %10, align 4
  %155 = and i32 %154, 15
  %156 = shl i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %153, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  br label %162

161:                                              ; preds = %126
  br label %162

162:                                              ; preds = %161, %152
  %163 = phi i32 [ %160, %152 ], [ 61, %161 ]
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %8, align 8
  store i32 %163, i32* %164, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %8, align 8
  store i32 61, i32* %166, align 4
  br label %168

168:                                              ; preds = %162, %112
  %169 = load i32*, i32** %8, align 8
  %170 = bitcast i32* %169 to i8*
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = ptrtoint i8* %170 to i64
  %175 = ptrtoint i8* %173 to i64
  %176 = sub i64 %174, %175
  %177 = trunc i64 %176 to i32
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  store i8 0, i8* %187, align 1
  ret i32 0
}

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64*, i64, i32) #1

declare dso_local i32 @ENSURE_SIZE(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

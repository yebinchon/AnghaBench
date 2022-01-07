; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_flatten_string.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_flatten_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@SIZE_MAX = common dso_local global i64 0, align 8
@H2O_HPACK_ENCODE_INT_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i64, i32, i32)* @flatten_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flatten_string(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @h2o_hpack_encode_huffman(i32* %26, i8* %27, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* @SIZE_MAX, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %17, %5
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 2, %33
  %35 = sub nsw i32 %34, 1
  %36 = xor i32 %35, -1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %36
  store i32 %46, i32* %44, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @flatten_int(%struct.TYPE_4__* %47, i64 %48, i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 (i32*, ...) @memcpy(i32* %58, i8* %59, i64 %60)
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 8
  br label %170

69:                                               ; preds = %17
  %70 = load i32, i32* @H2O_HPACK_ENCODE_INT_MAX_LENGTH, align 4
  %71 = zext i32 %70 to i64
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %12, align 8
  %73 = alloca i32, i64 %71, align 16
  store i64 %71, i64* %13, align 8
  store i32* %73, i32** %14, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = shl i32 1, %83
  %85 = sub nsw i32 %84, 1
  %86 = xor i32 %85, -1
  %87 = and i32 %82, %86
  %88 = load i32*, i32** %14, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %9, align 4
  %90 = shl i32 1, %89
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32* @h2o_hpack_encode_int(i32* %94, i64 %95, i32 %96)
  store i32* %97, i32** %14, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = ptrtoint i32* %98 to i64
  %100 = ptrtoint i32* %73 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 4
  %103 = icmp eq i64 %102, 1
  br i1 %103, label %104, label %115

104:                                              ; preds = %69
  %105 = getelementptr inbounds i32, i32* %73, i64 0
  %106 = load i32, i32* %105, align 16
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  store i32 %106, i32* %114, align 4
  br label %155

115:                                              ; preds = %69
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  %124 = load i32*, i32** %14, align 8
  %125 = ptrtoint i32* %124 to i64
  %126 = ptrtoint i32* %73 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 4
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i64, i64* %11, align 8
  %140 = call i32 @memmove(i32* %129, i32* %138, i64 %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  %149 = load i32*, i32** %14, align 8
  %150 = ptrtoint i32* %149 to i64
  %151 = ptrtoint i32* %73 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 4
  %154 = call i32 (i32*, ...) @memcpy(i32* %148, i32* %73, i64 %153)
  br label %155

155:                                              ; preds = %115, %104
  %156 = load i32*, i32** %14, align 8
  %157 = ptrtoint i32* %156 to i64
  %158 = ptrtoint i32* %73 to i64
  %159 = sub i64 %157, %158
  %160 = sdiv exact i64 %159, 4
  %161 = load i64, i64* %11, align 8
  %162 = add i64 %160, %161
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = add i64 %166, %162
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 8
  %169 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %169)
  br label %170

170:                                              ; preds = %155, %32
  ret void
}

declare dso_local i64 @h2o_hpack_encode_huffman(i32*, i8*, i64) #1

declare dso_local i32 @flatten_int(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i32 @memcpy(i32*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @h2o_hpack_encode_int(i32*, i64, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_ptls_hkdf_expand.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_ptls_hkdf_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32*, i32)*, i32 (%struct.TYPE_15__*, i32*, i32)* }

@PTLS_MAX_DIGEST_SIZE = common dso_local global i32 0, align 4
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@PTLS_HASH_FINAL_MODE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptls_hkdf_expand(%struct.TYPE_16__* %0, i8* %1, i64 %2, i32 %3, i32* %4, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = bitcast %struct.TYPE_14__* %8 to { i32, i32* }*
  %21 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %20, i32 0, i32 0
  store i32 %3, i32* %21, align 8
  %22 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %20, i32 0, i32 1
  store i32* %4, i32** %22, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %12, align 8
  %23 = load i32, i32* @PTLS_MAX_DIGEST_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  store i64 0, i64* %13, align 8
  br label %27

27:                                               ; preds = %106, %6
  %28 = load i64, i64* %13, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = mul i64 %28, %31
  %33 = load i64, i64* %11, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %109

35:                                               ; preds = %27
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %37 = icmp eq %struct.TYPE_15__* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.TYPE_15__* @ptls_hmac_create(%struct.TYPE_16__* %39, i32* %41, i32 %43)
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %12, align 8
  %45 = icmp eq %struct.TYPE_15__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %47, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %124

48:                                               ; preds = %38
  br label %59

49:                                               ; preds = %35
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_15__*, i32*, i32)*, i32 (%struct.TYPE_15__*, i32*, i32)** %51, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 %52(%struct.TYPE_15__* %53, i32* %26, i32 %57)
  br label %59

59:                                               ; preds = %49, %48
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i32 (%struct.TYPE_15__*, i32*, i32)*, i32 (%struct.TYPE_15__*, i32*, i32)** %61, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %62(%struct.TYPE_15__* %63, i32* %65, i32 %67)
  %69 = load i64, i64* %13, align 8
  %70 = add i64 %69, 1
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %17, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32 (%struct.TYPE_15__*, i32*, i32)*, i32 (%struct.TYPE_15__*, i32*, i32)** %73, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %76 = call i32 %74(%struct.TYPE_15__* %75, i32* %17, i32 1)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_15__*, i32*, i32)*, i32 (%struct.TYPE_15__*, i32*, i32)** %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %81 = call i32 %79(%struct.TYPE_15__* %80, i32* %26, i32 1)
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = mul i64 %82, %85
  store i64 %86, i64* %18, align 8
  %87 = load i64, i64* %18, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %87, %90
  store i64 %91, i64* %19, align 8
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %11, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %59
  %96 = load i64, i64* %11, align 8
  store i64 %96, i64* %19, align 8
  br label %97

97:                                               ; preds = %95, %59
  %98 = load i8*, i8** %10, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = load i64, i64* %18, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* %18, align 8
  %104 = sub i64 %102, %103
  %105 = call i32 @memcpy(i32* %101, i32* %26, i64 %104)
  br label %106

106:                                              ; preds = %97
  %107 = load i64, i64* %13, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %13, align 8
  br label %27

109:                                              ; preds = %27
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %111 = icmp ne %struct.TYPE_15__* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TYPE_15__*, i32*, i32)*, i32 (%struct.TYPE_15__*, i32*, i32)** %114, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %117 = load i32, i32* @PTLS_HASH_FINAL_MODE_FREE, align 4
  %118 = call i32 %115(%struct.TYPE_15__* %116, i32* null, i32 %117)
  br label %119

119:                                              ; preds = %112, %109
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @ptls_clear_memory(i32* %26, i64 %122)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %124

124:                                              ; preds = %119, %46
  %125 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_15__* @ptls_hmac_create(%struct.TYPE_16__*, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @ptls_clear_memory(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

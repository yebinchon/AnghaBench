; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_norx.c_decrypt_body.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_norx.c_decrypt_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@RATE_BYTES = common dso_local global i64 0, align 8
@DOMAIN_PAYLOAD = common dso_local global i32 0, align 4
@RATE_WORDS = common dso_local global i64 0, align 8
@WORD_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32*, i64)* @decrypt_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decrypt_body(%struct.TYPE_6__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %112

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %22, %17
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @RATE_BYTES, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = load i32, i32* @DOMAIN_PAYLOAD, align 4
  %25 = call i32 @switch_domain(%struct.TYPE_6__* %23, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* @RATE_WORDS, align 8
  %30 = call i32 @body_block_decrypt(%struct.TYPE_6__* %26, i32* %27, i32* %28, i64 0, i64 %29)
  %31 = load i64, i64* @RATE_BYTES, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 %31
  store i32* %33, i32** %7, align 8
  %34 = load i64, i64* @RATE_BYTES, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 %34
  store i32* %36, i32** %6, align 8
  %37 = load i64, i64* @RATE_BYTES, align 8
  %38 = load i64, i64* %8, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %8, align 8
  br label %18

40:                                               ; preds = %18
  store i64 0, i64* %9, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = load i32, i32* @DOMAIN_PAYLOAD, align 4
  %43 = call i32 @switch_domain(%struct.TYPE_6__* %41, i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @undo_padding(%struct.TYPE_6__* %44, i64 %45)
  br label %47

47:                                               ; preds = %51, %40
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @WORD_BYTES, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 1
  %58 = call i32 @body_block_decrypt(%struct.TYPE_6__* %52, i32* %53, i32* %54, i64 %55, i64 %57)
  %59 = load i64, i64* @WORD_BYTES, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 %59
  store i32* %61, i32** %7, align 8
  %62 = load i64, i64* @WORD_BYTES, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 %62
  store i32* %64, i32** %6, align 8
  %65 = load i64, i64* @WORD_BYTES, align 8
  %66 = load i64, i64* %8, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %9, align 8
  br label %47

70:                                               ; preds = %47
  %71 = load i64, i64* @WORD_BYTES, align 8
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %10, align 8
  %73 = alloca i32, i64 %71, align 16
  store i64 %71, i64* %11, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @write32_le(i32 %79, i32* %73)
  store i64 0, i64* %12, align 8
  br label %81

81:                                               ; preds = %101, %70
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load i32*, i32** %6, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %13, align 4
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds i32, i32* %73, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %13, align 4
  %94 = xor i32 %92, %93
  %95 = load i32*, i32** %7, align 8
  %96 = load i64, i64* %12, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds i32, i32* %73, i64 %99
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %85
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %12, align 8
  br label %81

104:                                              ; preds = %81
  %105 = call i32 @read32_le(i32* %73)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 %105, i32* %110, align 4
  %111 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %111)
  br label %112

112:                                              ; preds = %104, %16
  ret void
}

declare dso_local i32 @switch_domain(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @body_block_decrypt(%struct.TYPE_6__*, i32*, i32*, i64, i64) #1

declare dso_local i32 @undo_padding(%struct.TYPE_6__*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @write32_le(i32, i32*) #1

declare dso_local i32 @read32_le(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

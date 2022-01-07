; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_bgzf.c_bgzf_read_block.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_bgzf.c_bgzf_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i32, i64, i64 }

@BLOCK_HEADER_LENGTH = common dso_local global i32 0, align 4
@BGZF_ERR_HEADER = common dso_local global i32 0, align 4
@BGZF_ERR_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bgzf_read_block(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %13 = load i32, i32* @BLOCK_HEADER_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @_bgzf_tell(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @load_block_from_cache(%struct.TYPE_6__* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %113

27:                                               ; preds = %1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = mul nuw i64 4, %14
  %32 = trunc i64 %31 to i32
  %33 = call i32 @_bgzf_read(i64 %30, i32* %16, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %113

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = mul nuw i64 4, %14
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = call i32 @check_header(i32* %16)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* @BGZF_ERR_HEADER, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %113

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %8, align 4
  %55 = getelementptr inbounds i32, i32* %16, i64 16
  %56 = call i32 @unpackInt16(i32* %55)
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %6, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @BLOCK_HEADER_LENGTH, align 4
  %64 = call i32 @memcpy(i32* %62, i32* %16, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @BLOCK_HEADER_LENGTH, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* @BLOCK_HEADER_LENGTH, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @_bgzf_read(i64 %70, i32* %74, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %53
  %81 = load i32, i32* @BGZF_ERR_IO, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %113

86:                                               ; preds = %53
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @inflate_block(%struct.TYPE_6__* %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %113

95:                                               ; preds = %86
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @cache_block(%struct.TYPE_6__* %110, i32 %111)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %113

113:                                              ; preds = %103, %94, %80, %47, %36, %26
  %114 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_bgzf_tell(i32) #2

declare dso_local i64 @load_block_from_cache(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @_bgzf_read(i64, i32*, i32) #2

declare dso_local i32 @check_header(i32*) #2

declare dso_local i32 @unpackInt16(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @inflate_block(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @cache_block(%struct.TYPE_6__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

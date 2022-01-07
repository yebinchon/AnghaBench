; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_keyboard_layout.c_initialize_keyboard_layout_mapping.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_keyboard_layout.c_initialize_keyboard_layout_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32*, i32*, i32*, i8** }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@HCBUFSIZ_LARGE = common dso_local global i32 0, align 4
@TOKEN_ATTR_VERIFY_LENGTH = common dso_local global i8* null, align 8
@PARSER_OK = common dso_local global i64 0, align 8
@sort_by_src_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initialize_keyboard_layout_mapping(i8* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @hc_fopen(i32* %8, i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %137

17:                                               ; preds = %3
  %18 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %19 = call i64 @hcmalloc(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %124, %31, %17
  %22 = call i32 @hc_feof(i32* %8)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %127

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* @HCBUFSIZ_LARGE, align 4
  %28 = call i64 @fgetl(i32* %8, i8* %26, i32 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %21

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 2, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 1, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 4, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 9, i32* %42, align 4
  %43 = load i8*, i8** @TOKEN_ATTR_VERIFY_LENGTH, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 6
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  store i8* %43, i8** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 4, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 9, i32* %55, align 4
  %56 = load i8*, i8** @TOKEN_ATTR_VERIFY_LENGTH, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 6
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  store i8* %56, i8** %59, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i64, i64* %11, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i64 @input_tokenizer(i32* %61, i32 %63, %struct.TYPE_6__* %12)
  %65 = load i64, i64* @PARSER_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %32
  %68 = call i32 @hc_fclose(i32* %8)
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @hcfree(i8* %69)
  store i32 0, i32* %4, align 4
  br label %137

71:                                               ; preds = %32
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @memcpy(i32* %76, i32 %80, i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memcpy(i32* %90, i32 %94, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i32 %103, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp eq i32 %118, 256
  br i1 %119, label %120, label %124

120:                                              ; preds = %71
  %121 = call i32 @hc_fclose(i32* %8)
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @hcfree(i8* %122)
  store i32 0, i32* %4, align 4
  br label %137

124:                                              ; preds = %71
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %21

127:                                              ; preds = %21
  %128 = load i32, i32* %10, align 4
  %129 = load i32*, i32** %7, align 8
  store i32 %128, i32* %129, align 4
  %130 = call i32 @hc_fclose(i32* %8)
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 @hcfree(i8* %131)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @sort_by_src_len, align 4
  %136 = call i32 @qsort(%struct.TYPE_7__* %133, i32 %134, i32 16, i32 %135)
  store i32 1, i32* %4, align 4
  br label %137

137:                                              ; preds = %127, %120, %67, %16
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @hc_feof(i32*) #1

declare dso_local i64 @fgetl(i32*, i8*, i32) #1

declare dso_local i64 @input_tokenizer(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i32 @hcfree(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

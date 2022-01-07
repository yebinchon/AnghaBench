; ModuleID = '/home/carl/AnghaBench/git/extr_utf8.c_strbuf_utf8_replace.c'
source_filename = "/home/carl/AnghaBench/git/extr_utf8.c_strbuf_utf8_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_utf8_replace(%struct.strbuf* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.strbuf, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %17 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %18 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8* %26, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %29, %4
  %33 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @strbuf_grow(%struct.strbuf* %9, i32 %37)
  %39 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %12, align 8
  br label %41

41:                                               ; preds = %104, %98, %32
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ult i8* %42, %43
  br i1 %44, label %45, label %126

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %50, %45
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @display_mode_esc_sequence_len(i8* %47)
  store i64 %48, i64* %16, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i8*, i8** %12, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %16, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memcpy(i8* %51, i8* %52, i32 %54)
  %56 = load i64, i64* %16, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %10, align 8
  %59 = load i64, i64* %16, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %12, align 8
  br label %46

62:                                               ; preds = %46
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = icmp uge i8* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %126

67:                                               ; preds = %62
  %68 = load i8*, i8** %10, align 8
  store i8* %68, i8** %15, align 8
  %69 = call i64 @utf8_width(i8** %10, i32* null)
  store i64 %69, i64* %16, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %137

73:                                               ; preds = %67
  %74 = load i64, i64* %16, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %104

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %82, %83
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %80
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i8*, i8** %12, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @memcpy(i8* %90, i8* %91, i32 %92)
  %94 = load i32, i32* %14, align 4
  %95 = load i8*, i8** %12, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %12, align 8
  store i8* null, i8** %8, align 8
  br label %98

98:                                               ; preds = %89, %86
  %99 = load i64, i64* %16, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %13, align 4
  br label %41

104:                                              ; preds = %80, %76, %73
  %105 = load i8*, i8** %12, align 8
  %106 = load i8*, i8** %15, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @memcpy(i8* %105, i8* %106, i32 %112)
  %114 = load i8*, i8** %10, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 %118
  store i8* %120, i8** %12, align 8
  %121 = load i64, i64* %16, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %13, align 4
  br label %41

126:                                              ; preds = %66, %41
  %127 = load i8*, i8** %12, align 8
  %128 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = ptrtoint i8* %127 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = trunc i64 %132 to i32
  %134 = call i32 @strbuf_setlen(%struct.strbuf* %9, i32 %133)
  %135 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %136 = call i32 @strbuf_swap(%struct.strbuf* %135, %struct.strbuf* %9)
  br label %137

137:                                              ; preds = %126, %72
  %138 = call i32 @strbuf_release(%struct.strbuf* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #2

declare dso_local i64 @display_mode_esc_sequence_len(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @utf8_width(i8**, i32*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_swap(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

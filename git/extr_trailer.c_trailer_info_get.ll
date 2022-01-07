; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_trailer_info_get.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_trailer_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32* }
%struct.trailer_info = type { i8*, i8*, i8**, i64, i32 }
%struct.process_trailer_options = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@separators = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trailer_info_get(%struct.trailer_info* %0, i8* %1, %struct.process_trailer_options* %2) #0 {
  %4 = alloca %struct.trailer_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.process_trailer_options*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.strbuf**, align 8
  %11 = alloca %struct.strbuf**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8**, align 8
  %16 = alloca %struct.strbuf, align 8
  store %struct.trailer_info* %0, %struct.trailer_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.process_trailer_options* %2, %struct.process_trailer_options** %6, align 8
  store i8** null, i8*** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i8** null, i8*** %15, align 8
  %17 = call i32 (...) @ensure_configured()
  %18 = load %struct.process_trailer_options*, %struct.process_trailer_options** %6, align 8
  %19 = getelementptr inbounds %struct.process_trailer_options, %struct.process_trailer_options* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %7, align 4
  br label %28

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @find_patch_start(i8* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @find_trailer_end(i8* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @find_trailer_start(i8* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call %struct.strbuf** @strbuf_split_buf(i8* %38, i32 %41, i8 signext 10, i32 0)
  store %struct.strbuf** %42, %struct.strbuf*** %10, align 8
  %43 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  store %struct.strbuf** %43, %struct.strbuf*** %11, align 8
  br label %44

44:                                               ; preds = %104, %28
  %45 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %46 = load %struct.strbuf*, %struct.strbuf** %45, align 8
  %47 = icmp ne %struct.strbuf* %46, null
  br i1 %47, label %48, label %107

48:                                               ; preds = %44
  %49 = load i8**, i8*** %15, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %53 = load %struct.strbuf*, %struct.strbuf** %52, align 8
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @isspace(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %51
  %61 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %62 = load i8**, i8*** %15, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %15, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = load i8**, i8*** %15, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strlen(i8* %68)
  %70 = call i32 @strbuf_attach(%struct.strbuf* %16, i8* %63, i32 %66, i32 %69)
  %71 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %72 = load %struct.strbuf*, %struct.strbuf** %71, align 8
  %73 = call i32 @strbuf_addbuf(%struct.strbuf* %16, %struct.strbuf* %72)
  %74 = call i8* @strbuf_detach(%struct.strbuf* %16, i32* null)
  %75 = load i8**, i8*** %15, align 8
  store i8* %74, i8** %75, align 8
  br label %104

76:                                               ; preds = %51, %48
  %77 = load i8**, i8*** %12, align 8
  %78 = load i64, i64* %13, align 8
  %79 = add i64 %78, 1
  %80 = load i64, i64* %14, align 8
  %81 = call i32 @ALLOC_GROW(i8** %77, i64 %79, i64 %80)
  %82 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %83 = load %struct.strbuf*, %struct.strbuf** %82, align 8
  %84 = call i8* @strbuf_detach(%struct.strbuf* %83, i32* null)
  %85 = load i8**, i8*** %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  store i8* %84, i8** %87, align 8
  %88 = load i8**, i8*** %12, align 8
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds i8*, i8** %88, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* @separators, align 4
  %93 = call i32 @find_separator(i8* %91, i32 %92)
  %94 = icmp sge i32 %93, 1
  br i1 %94, label %95, label %99

95:                                               ; preds = %76
  %96 = load i8**, i8*** %12, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds i8*, i8** %96, i64 %97
  br label %100

99:                                               ; preds = %76
  br label %100

100:                                              ; preds = %99, %95
  %101 = phi i8** [ %98, %95 ], [ null, %99 ]
  store i8** %101, i8*** %15, align 8
  %102 = load i64, i64* %13, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %13, align 8
  br label %104

104:                                              ; preds = %100, %60
  %105 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %106 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %105, i32 1
  store %struct.strbuf** %106, %struct.strbuf*** %11, align 8
  br label %44

107:                                              ; preds = %44
  %108 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %109 = call i32 @strbuf_list_free(%struct.strbuf** %108)
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @ends_with_blank_line(i8* %110, i32 %111)
  %113 = load %struct.trailer_info*, %struct.trailer_info** %4, align 8
  %114 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load i8*, i8** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load %struct.trailer_info*, %struct.trailer_info** %4, align 8
  %120 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load %struct.trailer_info*, %struct.trailer_info** %4, align 8
  %126 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load i8**, i8*** %12, align 8
  %128 = load %struct.trailer_info*, %struct.trailer_info** %4, align 8
  %129 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %128, i32 0, i32 2
  store i8** %127, i8*** %129, align 8
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.trailer_info*, %struct.trailer_info** %4, align 8
  %132 = getelementptr inbounds %struct.trailer_info, %struct.trailer_info* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  ret void
}

declare dso_local i32 @ensure_configured(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @find_patch_start(i8*) #1

declare dso_local i32 @find_trailer_end(i8*, i32) #1

declare dso_local i32 @find_trailer_start(i8*, i32) #1

declare dso_local %struct.strbuf** @strbuf_split_buf(i8*, i32, i8 signext, i32) #1

declare dso_local i64 @isspace(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_attach(%struct.strbuf*, i8*, i32, i32) #1

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i32 @ALLOC_GROW(i8**, i64, i64) #1

declare dso_local i32 @find_separator(i8*, i32) #1

declare dso_local i32 @strbuf_list_free(%struct.strbuf**) #1

declare dso_local i32 @ends_with_blank_line(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

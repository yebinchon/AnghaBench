; ModuleID = '/home/carl/AnghaBench/git/extr_urlmatch.c_urlmatch_config_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_urlmatch.c_urlmatch_config_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.string_list_item = type { i64 }
%struct.urlmatch_config = type { i8*, i32 (i8*, i8*, i8*)*, i32 (i32, i8*, i32)*, i32, i32, i64, %struct.url_info }
%struct.url_info = type { i32 }
%struct.urlmatch_item = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @urlmatch_config_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.string_list_item*, align 8
  %9 = alloca %struct.urlmatch_config*, align 8
  %10 = alloca %struct.urlmatch_item, align 4
  %11 = alloca %struct.url_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.strbuf, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.url_info, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.urlmatch_config*
  store %struct.urlmatch_config* %20, %struct.urlmatch_config** %9, align 8
  %21 = bitcast %struct.urlmatch_item* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = load %struct.urlmatch_config*, %struct.urlmatch_config** %9, align 8
  %23 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %22, i32 0, i32 6
  store %struct.url_info* %23, %struct.url_info** %11, align 8
  %24 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.urlmatch_config*, %struct.urlmatch_config** %9, align 8
  %27 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @skip_prefix(i8* %25, i8* %28, i8** %12)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %12, align 8
  %34 = load i8, i8* %32, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 46
  br i1 %36, label %37, label %51

37:                                               ; preds = %31, %3
  %38 = load %struct.urlmatch_config*, %struct.urlmatch_config** %9, align 8
  %39 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %38, i32 0, i32 1
  %40 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %39, align 8
  %41 = icmp ne i32 (i8*, i8*, i8*)* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.urlmatch_config*, %struct.urlmatch_config** %9, align 8
  %44 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %43, i32 0, i32 1
  %45 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %44, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 %45(i8* %46, i8* %47, i8* %48)
  store i32 %49, i32* %4, align 4
  br label %141

50:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %141

51:                                               ; preds = %31
  %52 = load i8*, i8** %12, align 8
  %53 = call i8* @strrchr(i8* %52, i8 signext 46)
  store i8* %53, i8** %13, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @xmemdupz(i8* %57, i32 %63)
  store i8* %64, i8** %16, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = call i8* @url_normalize_1(i8* %65, %struct.url_info* %18, i32 1)
  store i8* %66, i8** %17, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i8*, i8** %17, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %141

72:                                               ; preds = %56
  %73 = load %struct.url_info*, %struct.url_info** %11, align 8
  %74 = call i32 @match_urls(%struct.url_info* %73, %struct.url_info* %18, %struct.urlmatch_item* %10)
  store i32 %74, i32* %15, align 4
  %75 = load i8*, i8** %17, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %141

80:                                               ; preds = %72
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %82, i8** %12, align 8
  br label %83

83:                                               ; preds = %80, %51
  %84 = load %struct.urlmatch_config*, %struct.urlmatch_config** %9, align 8
  %85 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i8*, i8** %12, align 8
  %90 = load %struct.urlmatch_config*, %struct.urlmatch_config** %9, align 8
  %91 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @strcmp(i8* %89, i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %141

96:                                               ; preds = %88, %83
  %97 = load %struct.urlmatch_config*, %struct.urlmatch_config** %9, align 8
  %98 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %97, i32 0, i32 4
  %99 = load i8*, i8** %12, align 8
  %100 = call %struct.string_list_item* @string_list_insert(i32* %98, i8* %99)
  store %struct.string_list_item* %100, %struct.string_list_item** %8, align 8
  %101 = load %struct.string_list_item*, %struct.string_list_item** %8, align 8
  %102 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %96
  %106 = call i64 @xcalloc(i32 1, i32 4)
  %107 = load %struct.string_list_item*, %struct.string_list_item** %8, align 8
  %108 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %117

109:                                              ; preds = %96
  %110 = load %struct.string_list_item*, %struct.string_list_item** %8, align 8
  %111 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @cmp_matches(%struct.urlmatch_item* %10, i64 %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %141

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %105
  %118 = load %struct.string_list_item*, %struct.string_list_item** %8, align 8
  %119 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @memcpy(i64 %120, %struct.urlmatch_item* %10, i32 4)
  %122 = load %struct.urlmatch_config*, %struct.urlmatch_config** %9, align 8
  %123 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %124)
  %126 = call i32 @strbuf_addch(%struct.strbuf* %14, i8 signext 46)
  %127 = load i8*, i8** %12, align 8
  %128 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %127)
  %129 = load %struct.urlmatch_config*, %struct.urlmatch_config** %9, align 8
  %130 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %129, i32 0, i32 2
  %131 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %130, align 8
  %132 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i8*, i8** %6, align 8
  %135 = load %struct.urlmatch_config*, %struct.urlmatch_config** %9, align 8
  %136 = getelementptr inbounds %struct.urlmatch_config, %struct.urlmatch_config* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i32 %131(i32 %133, i8* %134, i32 %137)
  store i32 %138, i32* %15, align 4
  %139 = call i32 @strbuf_release(%struct.strbuf* %14)
  %140 = load i32, i32* %15, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %117, %115, %95, %79, %71, %50, %42
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i8* @xmemdupz(i8*, i32) #2

declare dso_local i8* @url_normalize_1(i8*, %struct.url_info*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @match_urls(%struct.url_info*, %struct.url_info*, %struct.urlmatch_item*) #2

declare dso_local i64 @strcmp(i8*, i64) #2

declare dso_local %struct.string_list_item* @string_list_insert(i32*, i8*) #2

declare dso_local i64 @xcalloc(i32, i32) #2

declare dso_local i64 @cmp_matches(%struct.urlmatch_item*, i64) #2

declare dso_local i32 @memcpy(i64, %struct.urlmatch_item*, i32) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

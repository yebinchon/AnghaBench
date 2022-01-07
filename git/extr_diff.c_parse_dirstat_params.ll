; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_parse_dirstat_params.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_parse_dirstat_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.diff_options = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.strbuf = type { i32 }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"changes\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"noncumulative\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"cumulative\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"  Failed to parse dirstat cut-off percentage '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"  Unknown dirstat parameter '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_options*, i8*, %struct.strbuf*)* @parse_dirstat_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dirstat_params(%struct.diff_options* %0, i8* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.string_list, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.diff_options* %0, %struct.diff_options** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @xstrdup(i8* %14)
  store i8* %15, i8** %7, align 8
  %16 = bitcast %struct.string_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 16, i1 false)
  store i32 0, i32* %9, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @string_list_split_in_place(%struct.string_list* %8, i8* %21, i8 signext 44, i32 -1)
  br label %23

23:                                               ; preds = %20, %3
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %148, %23
  %25 = load i32, i32* %10, align 4
  %26 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %151

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %29
  %41 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %42 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %45 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  br label %147

47:                                               ; preds = %29
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %53 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %56 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  br label %146

58:                                               ; preds = %47
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %64 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %67 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %145

69:                                               ; preds = %58
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %75 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i32 0, i32* %76, align 4
  br label %144

77:                                               ; preds = %69
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %83 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i32 1, i32* %84, align 4
  br label %143

85:                                               ; preds = %77
  %86 = load i8*, i8** %11, align 8
  %87 = load i8, i8* %86, align 1
  %88 = call i64 @isdigit(i8 signext %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %135

90:                                               ; preds = %85
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 @strtoul(i8* %91, i8** %12, i32 10)
  %93 = mul nsw i32 %92, 10
  store i32 %93, i32* %13, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 46
  br i1 %97, label %98, label %119

98:                                               ; preds = %90
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %12, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call i64 @isdigit(i8 signext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = load i8*, i8** %12, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = sub nsw i32 %107, 48
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %117, %104
  %112 = load i8*, i8** %12, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %12, align 8
  %114 = load i8, i8* %113, align 1
  %115 = call i64 @isdigit(i8 signext %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %111

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %98, %90
  %120 = load i8*, i8** %12, align 8
  %121 = load i8, i8* %120, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %126 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  br label %134

127:                                              ; preds = %119
  %128 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %129 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 @strbuf_addf(%struct.strbuf* %128, i32 %129, i8* %130)
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %127, %123
  br label %142

135:                                              ; preds = %85
  %136 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %137 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 @strbuf_addf(%struct.strbuf* %136, i32 %137, i8* %138)
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %135, %134
  br label %143

143:                                              ; preds = %142, %81
  br label %144

144:                                              ; preds = %143, %73
  br label %145

145:                                              ; preds = %144, %62
  br label %146

146:                                              ; preds = %145, %51
  br label %147

147:                                              ; preds = %146, %40
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %24

151:                                              ; preds = %24
  %152 = call i32 @string_list_clear(%struct.string_list* %8, i32 0)
  %153 = load i8*, i8** %7, align 8
  %154 = call i32 @free(i8* %153)
  %155 = load i32, i32* %9, align 4
  ret i32 %155
}

declare dso_local i8* @xstrdup(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @string_list_split_in_place(%struct.string_list*, i8*, i8 signext, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

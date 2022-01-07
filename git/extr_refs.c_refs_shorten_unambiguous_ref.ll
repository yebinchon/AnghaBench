; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_refs_shorten_unambiguous_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_refs_shorten_unambiguous_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.ref_store = type { i32 }

@refs_shorten_unambiguous_ref.scanf_fmts = internal global i8** null, align 8
@refs_shorten_unambiguous_ref.nr_rules = internal global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@ref_rev_parse_rules = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @refs_shorten_unambiguous_ref(%struct.ref_store* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ref_store*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.strbuf, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %18 = load i32, i32* @refs_shorten_unambiguous_ref.nr_rules, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %91, label %20

20:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* @refs_shorten_unambiguous_ref.nr_rules, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i8**, i8*** @ref_rev_parse_rules, align 8
  %23 = load i32, i32* @refs_shorten_unambiguous_ref.nr_rules, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load i8**, i8*** @ref_rev_parse_rules, align 8
  %30 = load i32, i32* @refs_shorten_unambiguous_ref.nr_rules, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = sub nsw i32 %34, 2
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @refs_shorten_unambiguous_ref.nr_rules, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @refs_shorten_unambiguous_ref.nr_rules, align 4
  br label %21

43:                                               ; preds = %21
  %44 = load i32, i32* @refs_shorten_unambiguous_ref.nr_rules, align 4
  %45 = call i32 @st_mult(i32 8, i32 %44)
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @st_add(i32 %45, i64 %46)
  %48 = call i8** @xmalloc(i32 %47)
  store i8** %48, i8*** @refs_shorten_unambiguous_ref.scanf_fmts, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %87, %43
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @refs_shorten_unambiguous_ref.nr_rules, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %49
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp ult i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i8**, i8*** @refs_shorten_unambiguous_ref.scanf_fmts, align 8
  %60 = load i32, i32* @refs_shorten_unambiguous_ref.nr_rules, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = bitcast i8** %62 to i8*
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8**, i8*** @refs_shorten_unambiguous_ref.scanf_fmts, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  store i8* %65, i8** %69, align 8
  %70 = load i8**, i8*** @refs_shorten_unambiguous_ref.scanf_fmts, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = sub i64 %75, %76
  %78 = load i8**, i8*** @ref_rev_parse_rules, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @xsnprintf(i8* %74, i64 %77, i8* %82, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %84 = add nsw i64 %83, 1
  %85 = load i64, i64* %12, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %12, align 8
  br label %87

87:                                               ; preds = %53
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %49

90:                                               ; preds = %49
  br label %91

91:                                               ; preds = %90, %3
  %92 = load i32, i32* @refs_shorten_unambiguous_ref.nr_rules, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i8*, i8** %6, align 8
  %96 = call i8* @xstrdup(i8* %95)
  store i8* %96, i8** %4, align 8
  br label %172

97:                                               ; preds = %91
  %98 = load i8*, i8** %6, align 8
  %99 = call i8* @xstrdup(i8* %98)
  store i8* %99, i8** %9, align 8
  %100 = load i32, i32* @refs_shorten_unambiguous_ref.nr_rules, align 4
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %163, %97
  %103 = load i32, i32* %8, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %166

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %14, align 4
  %107 = load i8*, i8** %6, align 8
  %108 = load i8**, i8*** @refs_shorten_unambiguous_ref.scanf_fmts, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @sscanf(i8* %107, i8* %112, i8* %113)
  %115 = icmp ne i32 1, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  br label %163

117:                                              ; preds = %105
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @strlen(i8* %118)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @refs_shorten_unambiguous_ref.nr_rules, align 4
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %122, %117
  store i32 0, i32* %13, align 4
  br label %125

125:                                              ; preds = %152, %124
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %155

129:                                              ; preds = %125
  %130 = load i8**, i8*** @ref_rev_parse_rules, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %16, align 8
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %152

139:                                              ; preds = %129
  %140 = call i32 @strbuf_reset(%struct.strbuf* %10)
  %141 = load i8*, i8** %16, align 8
  %142 = load i32, i32* %15, align 4
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 @strbuf_addf(%struct.strbuf* %10, i8* %141, i32 %142, i8* %143)
  %145 = load %struct.ref_store*, %struct.ref_store** %5, align 8
  %146 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @refs_ref_exists(%struct.ref_store* %145, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %155

151:                                              ; preds = %139
  br label %152

152:                                              ; preds = %151, %138
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %125

155:                                              ; preds = %150, %125
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = call i32 @strbuf_release(%struct.strbuf* %10)
  %161 = load i8*, i8** %9, align 8
  store i8* %161, i8** %4, align 8
  br label %172

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162, %116
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %8, align 4
  br label %102

166:                                              ; preds = %102
  %167 = call i32 @strbuf_release(%struct.strbuf* %10)
  %168 = load i8*, i8** %9, align 8
  %169 = call i32 @free(i8* %168)
  %170 = load i8*, i8** %6, align 8
  %171 = call i8* @xstrdup(i8* %170)
  store i8* %171, i8** %4, align 8
  br label %172

172:                                              ; preds = %166, %159, %94
  %173 = load i8*, i8** %4, align 8
  ret i8* %173
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8** @xmalloc(i32) #2

declare dso_local i32 @st_add(i32, i64) #2

declare dso_local i32 @st_mult(i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @xsnprintf(i8*, i64, i8*, i32, i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @sscanf(i8*, i8*, i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #2

declare dso_local i64 @refs_ref_exists(%struct.ref_store*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_fill_metainfo.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_fill_metainfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.strbuf = type { i32 }
%struct.diff_filespec = type { i8*, i32 }
%struct.diff_options = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.diff_filepair = type { i32, i32 }

@DIFF_METAINFO = common dso_local global i32 0, align 4
@DIFF_RESET = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s%ssimilarity index %d%%\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s\0A%s%scopy from \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s\0A%s%scopy to \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%s\0A%s%srename from \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%s\0A%s%srename to \00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s%sdissimilarity index %d%%%s\0A\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"%s%sindex %s..%s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %06o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_options*, %struct.diff_filepair*, i32*, i32)* @fill_metainfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_metainfo(%struct.strbuf* %0, i8* %1, i8* %2, %struct.diff_filespec* %3, %struct.diff_filespec* %4, %struct.diff_options* %5, %struct.diff_filepair* %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.diff_filespec*, align 8
  %14 = alloca %struct.diff_filespec*, align 8
  %15 = alloca %struct.diff_options*, align 8
  %16 = alloca %struct.diff_filepair*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.diff_filespec* %3, %struct.diff_filespec** %13, align 8
  store %struct.diff_filespec* %4, %struct.diff_filespec** %14, align 8
  store %struct.diff_options* %5, %struct.diff_options** %15, align 8
  store %struct.diff_filepair* %6, %struct.diff_filepair** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* @DIFF_METAINFO, align 4
  %27 = call i8* @diff_get_color(i32 %25, i32 %26)
  store i8* %27, i8** %19, align 8
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* @DIFF_RESET, align 4
  %30 = call i8* @diff_get_color(i32 %28, i32 %29)
  store i8* %30, i8** %20, align 8
  %31 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %32 = call i8* @diff_line_prefix(%struct.diff_options* %31)
  store i8* %32, i8** %21, align 8
  %33 = load i32*, i32** %17, align 8
  store i32 1, i32* %33, align 4
  %34 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %35 = load i32, i32* @PATH_MAX, align 4
  %36 = mul nsw i32 %35, 2
  %37 = add nsw i32 %36, 300
  %38 = call i32 @strbuf_init(%struct.strbuf* %34, i32 %37)
  %39 = load %struct.diff_filepair*, %struct.diff_filepair** %16, align 8
  %40 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %108 [
    i32 130, label %42
    i32 128, label %68
    i32 129, label %94
  ]

42:                                               ; preds = %9
  %43 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %44 = load i8*, i8** %21, align 8
  %45 = load i8*, i8** %19, align 8
  %46 = load %struct.diff_filepair*, %struct.diff_filepair** %16, align 8
  %47 = call i32 @similarity_index(%struct.diff_filepair* %46)
  %48 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45, i32 %47)
  %49 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %50 = load i8*, i8** %20, align 8
  %51 = load i8*, i8** %21, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %51, i8* %52)
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %56 = call i32 @quote_c_style(i8* %54, %struct.strbuf* %55, i32* null, i32 0)
  %57 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %58 = load i8*, i8** %20, align 8
  %59 = load i8*, i8** %21, align 8
  %60 = load i8*, i8** %19, align 8
  %61 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %58, i8* %59, i8* %60)
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %64 = call i32 @quote_c_style(i8* %62, %struct.strbuf* %63, i32* null, i32 0)
  %65 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %66 = load i8*, i8** %20, align 8
  %67 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  br label %110

68:                                               ; preds = %9
  %69 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %70 = load i8*, i8** %21, align 8
  %71 = load i8*, i8** %19, align 8
  %72 = load %struct.diff_filepair*, %struct.diff_filepair** %16, align 8
  %73 = call i32 @similarity_index(%struct.diff_filepair* %72)
  %74 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %70, i8* %71, i32 %73)
  %75 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %76 = load i8*, i8** %20, align 8
  %77 = load i8*, i8** %21, align 8
  %78 = load i8*, i8** %19, align 8
  %79 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %76, i8* %77, i8* %78)
  %80 = load i8*, i8** %11, align 8
  %81 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %82 = call i32 @quote_c_style(i8* %80, %struct.strbuf* %81, i32* null, i32 0)
  %83 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %84 = load i8*, i8** %20, align 8
  %85 = load i8*, i8** %21, align 8
  %86 = load i8*, i8** %19, align 8
  %87 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %84, i8* %85, i8* %86)
  %88 = load i8*, i8** %12, align 8
  %89 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %90 = call i32 @quote_c_style(i8* %88, %struct.strbuf* %89, i32* null, i32 0)
  %91 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %92 = load i8*, i8** %20, align 8
  %93 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %92)
  br label %110

94:                                               ; preds = %9
  %95 = load %struct.diff_filepair*, %struct.diff_filepair** %16, align 8
  %96 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %101 = load i8*, i8** %21, align 8
  %102 = load i8*, i8** %19, align 8
  %103 = load %struct.diff_filepair*, %struct.diff_filepair** %16, align 8
  %104 = call i32 @similarity_index(%struct.diff_filepair* %103)
  %105 = load i8*, i8** %20, align 8
  %106 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %101, i8* %102, i32 %104, i8* %105)
  br label %110

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %9, %107
  %109 = load i32*, i32** %17, align 8
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %108, %99, %68, %42
  %111 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %112 = icmp ne %struct.diff_filespec* %111, null
  br i1 %112, label %113, label %204

113:                                              ; preds = %110
  %114 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %115 = icmp ne %struct.diff_filespec* %114, null
  br i1 %115, label %116, label %204

116:                                              ; preds = %113
  %117 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %118 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %117, i32 0, i32 1
  %119 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %120 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %119, i32 0, i32 1
  %121 = call i32 @oideq(i32* %118, i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %204, label %123

123:                                              ; preds = %116
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %22, align 4
  %127 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %128 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %123
  %133 = load i32, i32* %22, align 4
  br label %136

134:                                              ; preds = %123
  %135 = load i32, i32* @DEFAULT_ABBREV, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  store i32 %137, i32* %23, align 4
  %138 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %139 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %174

143:                                              ; preds = %136
  %144 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %145 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %148 = call i32 @fill_mmfile(i32 %146, i32* %24, %struct.diff_filespec* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %143
  %151 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %152 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %155 = call i64 @diff_filespec_is_binary(i32 %153, %struct.diff_filespec* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %171, label %157

157:                                              ; preds = %150, %143
  %158 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %159 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %162 = call i32 @fill_mmfile(i32 %160, i32* %24, %struct.diff_filespec* %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %157
  %165 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  %166 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %169 = call i64 @diff_filespec_is_binary(i32 %167, %struct.diff_filespec* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %164, %150
  %172 = load i32, i32* %22, align 4
  store i32 %172, i32* %23, align 4
  br label %173

173:                                              ; preds = %171, %164, %157
  br label %174

174:                                              ; preds = %173, %136
  %175 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %176 = load i8*, i8** %21, align 8
  %177 = load i8*, i8** %19, align 8
  %178 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %179 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %178, i32 0, i32 1
  %180 = load i32, i32* %23, align 4
  %181 = call i32 @diff_abbrev_oid(i32* %179, i32 %180)
  %182 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %183 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %182, i32 0, i32 1
  %184 = load i32, i32* %23, align 4
  %185 = call i32 @diff_abbrev_oid(i32* %183, i32 %184)
  %186 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %175, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %176, i8* %177, i32 %181, i32 %185)
  %187 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %188 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.diff_filespec*, %struct.diff_filespec** %14, align 8
  %191 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = icmp eq i8* %189, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %174
  %195 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %196 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %197 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %198)
  br label %200

200:                                              ; preds = %194, %174
  %201 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %202 = load i8*, i8** %20, align 8
  %203 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %201, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %202)
  br label %204

204:                                              ; preds = %200, %116, %113, %110
  ret void
}

declare dso_local i8* @diff_get_color(i32, i32) #1

declare dso_local i8* @diff_line_prefix(%struct.diff_options*) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #1

declare dso_local i32 @similarity_index(%struct.diff_filepair*) #1

declare dso_local i32 @quote_c_style(i8*, %struct.strbuf*, i32*, i32) #1

declare dso_local i32 @oideq(i32*, i32*) #1

declare dso_local i32 @fill_mmfile(i32, i32*, %struct.diff_filespec*) #1

declare dso_local i64 @diff_filespec_is_binary(i32, %struct.diff_filespec*) #1

declare dso_local i32 @diff_abbrev_oid(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

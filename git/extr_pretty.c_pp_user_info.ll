; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_pp_user_info.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_pp_user_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }
%struct.pretty_print_context = type { i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.ident_split = type { i8*, i8*, i8*, i8* }

@CMIT_FMT_ONELINE = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"From: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@RFC2047_ADDRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" <%.*s>\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s: %.*s%.*s <%.*s>\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Date:   %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Date: %s\0A\00", align 1
@RFC2822 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"%sDate: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_user_info(%struct.pretty_print_context* %0, i8* %1, %struct.strbuf* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.pretty_print_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ident_split, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.strbuf, align 8
  %19 = alloca %struct.strbuf, align 8
  store %struct.pretty_print_context* %0, %struct.pretty_print_context** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.strbuf* %2, %struct.strbuf** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 78, i32* %17, align 4
  %20 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %21 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CMIT_FMT_ONELINE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %227

26:                                               ; preds = %5
  %27 = load i8*, i8** %9, align 8
  %28 = call i8* @strchrnul(i8* %27, i8 signext 10)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = call i64 @split_ident_line(%struct.ident_split* %11, i8* %29, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %227

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %11, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %13, align 8
  %42 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %11, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %11, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %43 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  store i64 %48, i64* %16, align 8
  %49 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %11, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %14, align 8
  %51 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %11, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %11, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %52 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  store i64 %57, i64* %15, align 8
  %58 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %59 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %39
  %63 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %64 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @map_user(i64 %65, i8** %13, i64* %16, i8** %14, i64* %15)
  br label %67

67:                                               ; preds = %62, %39
  %68 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %69 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @cmit_fmt_is_mail(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %187

73:                                               ; preds = %67
  %74 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %75 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = icmp ne %struct.TYPE_2__* %76, null
  br i1 %77, label %78, label %127

78:                                               ; preds = %73
  %79 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %80 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = call i64 @ident_cmp(%struct.TYPE_2__* %81, %struct.ident_split* %11)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %127

84:                                               ; preds = %78
  %85 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %86 = call i32 @strbuf_addstr(%struct.strbuf* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %87 = load i8*, i8** %14, align 8
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @strbuf_add(%struct.strbuf* %18, i8* %87, i64 %88)
  %90 = call i32 @strbuf_addstr(%struct.strbuf* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i8*, i8** %13, align 8
  %92 = load i64, i64* %16, align 8
  %93 = call i32 @strbuf_add(%struct.strbuf* %18, i8* %91, i64 %92)
  %94 = call i32 @strbuf_addstr(%struct.strbuf* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %96 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %95, i32 0, i32 3
  %97 = call i32 @strbuf_detach(%struct.strbuf* %18, i32* null)
  %98 = call i32 @string_list_append(i32* %96, i32 %97)
  %99 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %100 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %99, i32 0, i32 2
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %13, align 8
  %104 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %105 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  store i64 %112, i64* %16, align 8
  %113 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %114 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %14, align 8
  %118 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %119 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %118, i32 0, i32 2
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  store i64 %126, i64* %15, align 8
  br label %127

127:                                              ; preds = %84, %78, %73
  %128 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %129 = call i32 @strbuf_addstr(%struct.strbuf* %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %130 = load i8*, i8** %14, align 8
  %131 = load i64, i64* %15, align 8
  %132 = call i64 @needs_rfc2047_encoding(i8* %130, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = load i64, i64* %15, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = load i32, i32* @RFC2047_ADDRESS, align 4
  %140 = call i32 @add_rfc2047(%struct.strbuf* %135, i8* %136, i64 %137, i8* %138, i32 %139)
  store i32 76, i32* %17, align 4
  br label %166

141:                                              ; preds = %127
  %142 = load i8*, i8** %14, align 8
  %143 = load i64, i64* %15, align 8
  %144 = call i64 @needs_rfc822_quoting(i8* %142, i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %141
  %147 = bitcast %struct.strbuf* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %148 = load i8*, i8** %14, align 8
  %149 = load i64, i64* %15, align 8
  %150 = call i32 @add_rfc822_quoted(%struct.strbuf* %19, i8* %148, i64 %149)
  %151 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %152 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @strbuf_add_wrapped_bytes(%struct.strbuf* %151, i8* %153, i64 %155, i32 -6, i32 1, i32 %156)
  %158 = call i32 @strbuf_release(%struct.strbuf* %19)
  br label %165

159:                                              ; preds = %141
  %160 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %161 = load i8*, i8** %14, align 8
  %162 = load i64, i64* %15, align 8
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @strbuf_add_wrapped_bytes(%struct.strbuf* %160, i8* %161, i64 %162, i32 -6, i32 1, i32 %163)
  br label %165

165:                                              ; preds = %159, %146
  br label %166

166:                                              ; preds = %165, %134
  %167 = load i32, i32* %17, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %170 = call i64 @last_line_length(%struct.strbuf* %169)
  %171 = call i64 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %172 = add i64 %170, %171
  %173 = load i64, i64* %16, align 8
  %174 = add i64 %172, %173
  %175 = call i64 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %176 = add i64 %174, %175
  %177 = icmp ult i64 %168, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %166
  %179 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %180 = call i32 @strbuf_addch(%struct.strbuf* %179, i8 signext 10)
  br label %181

181:                                              ; preds = %178, %166
  %182 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %183 = load i64, i64* %16, align 8
  %184 = trunc i64 %183 to i32
  %185 = load i8*, i8** %13, align 8
  %186 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %184, i8* %185)
  br label %203

187:                                              ; preds = %67
  %188 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %191 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp eq i32 %192, 130
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 4, i32 0
  %196 = load i64, i64* %15, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i8*, i8** %14, align 8
  %199 = load i64, i64* %16, align 8
  %200 = trunc i64 %199 to i32
  %201 = load i8*, i8** %13, align 8
  %202 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %188, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %189, i32 %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %197, i8* %198, i32 %200, i8* %201)
  br label %203

203:                                              ; preds = %187, %181
  %204 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %205 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  switch i32 %206, label %226 [
    i32 128, label %207
    i32 131, label %213
    i32 129, label %213
    i32 130, label %219
  ]

207:                                              ; preds = %203
  %208 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %209 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %210 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %209, i32 0, i32 1
  %211 = call i32 @show_ident_date(%struct.ident_split* %11, i32* %210)
  %212 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %208, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %211)
  br label %227

213:                                              ; preds = %203, %203
  %214 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %215 = load i32, i32* @RFC2822, align 4
  %216 = call i32* @DATE_MODE(i32 %215)
  %217 = call i32 @show_ident_date(%struct.ident_split* %11, i32* %216)
  %218 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %217)
  br label %227

219:                                              ; preds = %203
  %220 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %221 = load i8*, i8** %7, align 8
  %222 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %223 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %222, i32 0, i32 1
  %224 = call i32 @show_ident_date(%struct.ident_split* %11, i32* %223)
  %225 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %221, i32 %224)
  br label %227

226:                                              ; preds = %203
  br label %227

227:                                              ; preds = %25, %38, %226, %219, %213, %207
  ret void
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i64 @split_ident_line(%struct.ident_split*, i8*, i32) #1

declare dso_local i32 @map_user(i64, i8**, i64*, i8**, i64*) #1

declare dso_local i64 @cmit_fmt_is_mail(i32) #1

declare dso_local i64 @ident_cmp(%struct.TYPE_2__*, %struct.ident_split*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @string_list_append(i32*, i32) #1

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i64 @needs_rfc2047_encoding(i8*, i64) #1

declare dso_local i32 @add_rfc2047(%struct.strbuf*, i8*, i64, i8*, i32) #1

declare dso_local i64 @needs_rfc822_quoting(i8*, i64) #1

declare dso_local i32 @add_rfc822_quoted(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_add_wrapped_bytes(%struct.strbuf*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i64 @last_line_length(%struct.strbuf*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, ...) #1

declare dso_local i32 @show_ident_date(%struct.ident_split*, i32*) #1

declare dso_local i32* @DATE_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

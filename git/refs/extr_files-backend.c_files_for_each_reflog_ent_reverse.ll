; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_for_each_reflog_ent_reverse.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_for_each_reflog_ent_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.ref_store = type { i32 }
%struct.files_ref_store = type { i32 }

@REF_STORE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"for_each_reflog_ent_reverse\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot seek back reflog for %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"cannot read %d bytes from reflog for %s: %s\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"reverse reflog parser had leftover data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i8*, i32, i8*)* @files_for_each_reflog_ent_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_for_each_reflog_ent_reverse(%struct.ref_store* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_store*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.files_ref_store*, align 8
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %24 = load %struct.ref_store*, %struct.ref_store** %6, align 8
  %25 = load i32, i32* @REF_STORE_READ, align 4
  %26 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %24, i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %26, %struct.files_ref_store** %10, align 8
  %27 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %28 = load %struct.files_ref_store*, %struct.files_ref_store** %10, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @files_reflog_path(%struct.files_ref_store* %28, %struct.strbuf* %11, i8* %29)
  %31 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @fopen(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %33, i32** %12, align 8
  %34 = call i32 @strbuf_release(%struct.strbuf* %11)
  %35 = load i32*, i32** %12, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %194

38:                                               ; preds = %4
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* @SEEK_END, align 4
  %41 = call i64 @fseek(i32* %39, i64 0, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i8* @strerror(i32 %45)
  %47 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* %46)
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32*, i32** %12, align 8
  %50 = call i64 @ftell(i32* %49)
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %179, %48
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %13, align 8
  %56 = icmp slt i64 0, %55
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  br i1 %58, label %59, label %180

59:                                               ; preds = %57
  %60 = load i32, i32* @BUFSIZ, align 4
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %18, align 8
  %63 = alloca i8, i64 %61, align 16
  store i64 %61, i64* %19, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %69

67:                                               ; preds = %59
  %68 = load i64, i64* %13, align 8
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi i64 [ %61, %66 ], [ %68, %67 ]
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %16, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %73, %75
  %77 = load i32, i32* @SEEK_SET, align 4
  %78 = call i64 @fseek(i32* %72, i64 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* @errno, align 4
  %83 = call i8* @strerror(i32 %82)
  %84 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %81, i8* %83)
  store i32 %84, i32* %14, align 4
  store i32 3, i32* %22, align 4
  br label %176

85:                                               ; preds = %69
  %86 = load i32, i32* %16, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = call i64 @fread(i8* %63, i32 %86, i32 1, i32* %87)
  store i64 %88, i64* %17, align 8
  %89 = load i64, i64* %17, align 8
  %90 = icmp ne i64 %89, 1
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load i32, i32* %16, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* @errno, align 4
  %95 = call i8* @strerror(i32 %94)
  %96 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %92, i8* %93, i8* %95)
  store i32 %96, i32* %14, align 4
  store i32 3, i32* %22, align 4
  br label %176

97:                                               ; preds = %85
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %13, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %13, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %63, i64 %103
  store i8* %104, i8** %20, align 8
  store i8* %104, i8** %21, align 8
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %97
  %108 = load i8*, i8** %21, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 -1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 10
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i8*, i8** %21, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 -1
  store i8* %115, i8** %21, align 8
  br label %116

116:                                              ; preds = %113, %107, %97
  store i32 0, i32* %15, align 4
  br label %117

117:                                              ; preds = %174, %116
  %118 = load i8*, i8** %21, align 8
  %119 = icmp ult i8* %63, %118
  br i1 %119, label %120, label %175

120:                                              ; preds = %117
  %121 = load i8*, i8** %21, align 8
  %122 = call i8* @find_beginning_of_line(i8* %63, i8* %121)
  store i8* %122, i8** %23, align 8
  %123 = load i8*, i8** %23, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 10
  br i1 %126, label %127, label %149

127:                                              ; preds = %120
  %128 = load i8*, i8** %23, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8*, i8** %20, align 8
  %131 = load i8*, i8** %23, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = ptrtoint i8* %130 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = call i32 @strbuf_splice(%struct.strbuf* %11, i32 0, i32 0, i8* %129, i32 %136)
  %138 = load i8*, i8** %23, align 8
  store i8* %138, i8** %21, align 8
  %139 = load i8*, i8** %23, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  store i8* %140, i8** %20, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i8*, i8** %9, align 8
  %143 = call i32 @show_one_reflog_ent(%struct.strbuf* %11, i32 %141, i8* %142)
  store i32 %143, i32* %14, align 4
  %144 = call i32 @strbuf_reset(%struct.strbuf* %11)
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %127
  br label %175

148:                                              ; preds = %127
  br label %164

149:                                              ; preds = %120
  %150 = load i64, i64* %13, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %149
  %153 = load i8*, i8** %20, align 8
  %154 = ptrtoint i8* %153 to i64
  %155 = ptrtoint i8* %63 to i64
  %156 = sub i64 %154, %155
  %157 = trunc i64 %156 to i32
  %158 = call i32 @strbuf_splice(%struct.strbuf* %11, i32 0, i32 0, i8* %63, i32 %157)
  %159 = load i32, i32* %8, align 4
  %160 = load i8*, i8** %9, align 8
  %161 = call i32 @show_one_reflog_ent(%struct.strbuf* %11, i32 %159, i8* %160)
  store i32 %161, i32* %14, align 4
  %162 = call i32 @strbuf_reset(%struct.strbuf* %11)
  br label %175

163:                                              ; preds = %149
  br label %164

164:                                              ; preds = %163, %148
  %165 = load i8*, i8** %23, align 8
  %166 = icmp eq i8* %165, %63
  br i1 %166, label %167, label %174

167:                                              ; preds = %164
  %168 = load i8*, i8** %20, align 8
  %169 = ptrtoint i8* %168 to i64
  %170 = ptrtoint i8* %63 to i64
  %171 = sub i64 %169, %170
  %172 = trunc i64 %171 to i32
  %173 = call i32 @strbuf_splice(%struct.strbuf* %11, i32 0, i32 0, i8* %63, i32 %172)
  br label %175

174:                                              ; preds = %164
  br label %117

175:                                              ; preds = %167, %152, %147, %117
  store i32 0, i32* %22, align 4
  br label %176

176:                                              ; preds = %175, %91, %80
  %177 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %22, align 4
  switch i32 %178, label %196 [
    i32 0, label %179
    i32 3, label %180
  ]

179:                                              ; preds = %176
  br label %51

180:                                              ; preds = %176, %57
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %183
  %188 = call i32 @BUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %183, %180
  %190 = load i32*, i32** %12, align 8
  %191 = call i32 @fclose(i32* %190)
  %192 = call i32 @strbuf_release(%struct.strbuf* %11)
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %189, %37
  %195 = load i32, i32* %5, align 4
  ret i32 %195

196:                                              ; preds = %176
  unreachable
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @files_reflog_path(%struct.files_ref_store*, %struct.strbuf*, i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i64 @fseek(i32*, i64, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @ftell(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i8* @find_beginning_of_line(i8*, i8*) #1

declare dso_local i32 @strbuf_splice(%struct.strbuf*, i32, i32, i8*, i32) #1

declare dso_local i32 @show_one_reflog_ent(%struct.strbuf*, i32, i8*) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

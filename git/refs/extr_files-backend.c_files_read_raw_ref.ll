; ModuleID = '/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_read_raw_ref.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_files-backend.c_files_read_raw_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.ref_store = type { i32 }
%struct.object_id = type { i32 }
%struct.files_ref_store = type { i32 }
%struct.stat = type { i32, i32 }

@REF_STORE_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"read_raw_ref\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@REF_ISSYMREF = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"ref:\00", align 1
@REF_ISBROKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i8*, %struct.object_id*, %struct.strbuf*, i32*)* @files_read_raw_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @files_read_raw_ref(%struct.ref_store* %0, i8* %1, %struct.object_id* %2, %struct.strbuf* %3, i32* %4) #0 {
  %6 = alloca %struct.ref_store*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.files_ref_store*, align 8
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca %struct.strbuf, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.stat, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ref_store* %0, %struct.ref_store** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store %struct.strbuf* %3, %struct.strbuf** %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load %struct.ref_store*, %struct.ref_store** %6, align 8
  %24 = load i32, i32* @REF_STORE_READ, align 4
  %25 = call %struct.files_ref_store* @files_downcast(%struct.ref_store* %23, i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.files_ref_store* %25, %struct.files_ref_store** %11, align 8
  %26 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %27 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 -1, i32* %19, align 4
  store i32 3, i32* %21, align 4
  %28 = load i32*, i32** %10, align 8
  store i32 0, i32* %28, align 4
  %29 = call i32 @strbuf_reset(%struct.strbuf* %13)
  %30 = load %struct.files_ref_store*, %struct.files_ref_store** %11, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @files_ref_path(%struct.files_ref_store* %30, %struct.strbuf* %13, i8* %31)
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %14, align 8
  br label %35

35:                                               ; preds = %135, %82, %5
  %36 = load i32, i32* %21, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %21, align 4
  %38 = icmp sle i32 %36, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %199

40:                                               ; preds = %35
  %41 = load i8*, i8** %14, align 8
  %42 = call i64 @lstat(i8* %41, %struct.stat* %17)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = load i32, i32* @errno, align 4
  %46 = load i32, i32* @ENOENT, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %199

49:                                               ; preds = %44
  %50 = load %struct.files_ref_store*, %struct.files_ref_store** %11, align 8
  %51 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.object_id*, %struct.object_id** %8, align 8
  %55 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @refs_read_raw_ref(i32 %52, i8* %53, %struct.object_id* %54, %struct.strbuf* %55, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOENT, align 4
  store i32 %60, i32* @errno, align 4
  br label %199

61:                                               ; preds = %49
  store i32 0, i32* %19, align 4
  br label %199

62:                                               ; preds = %40
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @S_ISLNK(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %62
  %68 = call i32 @strbuf_reset(%struct.strbuf* %12)
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @strbuf_readlink(%struct.strbuf* %12, i8* %69, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load i32, i32* @errno, align 4
  %76 = load i32, i32* @ENOENT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @errno, align 4
  %80 = load i32, i32* @EINVAL, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %74
  br label %35

83:                                               ; preds = %78
  br label %199

84:                                               ; preds = %67
  %85 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @starts_with(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @check_refname_format(i8* %91, i32 0)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %96 = call i32 @strbuf_swap(%struct.strbuf* %12, %struct.strbuf* %95)
  %97 = load i32, i32* @REF_ISSYMREF, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %97
  store i32 %100, i32* %98, align 4
  store i32 0, i32* %19, align 4
  br label %199

101:                                              ; preds = %89, %84
  br label %102

102:                                              ; preds = %101, %62
  %103 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @S_ISDIR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = load %struct.files_ref_store*, %struct.files_ref_store** %11, align 8
  %109 = getelementptr inbounds %struct.files_ref_store, %struct.files_ref_store* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %7, align 8
  %112 = load %struct.object_id*, %struct.object_id** %8, align 8
  %113 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = call i64 @refs_read_raw_ref(i32 %110, i8* %111, %struct.object_id* %112, %struct.strbuf* %113, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %107
  %118 = load i32, i32* @EISDIR, align 4
  store i32 %118, i32* @errno, align 4
  br label %199

119:                                              ; preds = %107
  store i32 0, i32* %19, align 4
  br label %199

120:                                              ; preds = %102
  %121 = load i8*, i8** %14, align 8
  %122 = load i32, i32* @O_RDONLY, align 4
  %123 = call i32 @open(i8* %121, i32 %122)
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %18, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %120
  %127 = load i32, i32* @errno, align 4
  %128 = load i32, i32* @ENOENT, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @S_ISLNK(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  br label %35

136:                                              ; preds = %130, %126
  br label %199

137:                                              ; preds = %120
  %138 = call i32 @strbuf_reset(%struct.strbuf* %12)
  %139 = load i32, i32* %18, align 4
  %140 = call i64 @strbuf_read(%struct.strbuf* %12, i32 %139, i32 256)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load i32, i32* @errno, align 4
  store i32 %143, i32* %22, align 4
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @close(i32 %144)
  %146 = load i32, i32* %22, align 4
  store i32 %146, i32* @errno, align 4
  br label %199

147:                                              ; preds = %137
  %148 = load i32, i32* %18, align 4
  %149 = call i32 @close(i32 %148)
  %150 = call i32 @strbuf_rtrim(%struct.strbuf* %12)
  %151 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %15, align 8
  %153 = load i8*, i8** %15, align 8
  %154 = call i64 @starts_with(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %147
  %157 = load i8*, i8** %15, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 4
  store i8* %158, i8** %15, align 8
  br label %159

159:                                              ; preds = %164, %156
  %160 = load i8*, i8** %15, align 8
  %161 = load i8, i8* %160, align 1
  %162 = call i64 @isspace(i8 signext %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i8*, i8** %15, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %15, align 8
  br label %159

167:                                              ; preds = %159
  %168 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %169 = call i32 @strbuf_reset(%struct.strbuf* %168)
  %170 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %171 = load i8*, i8** %15, align 8
  %172 = call i32 @strbuf_addstr(%struct.strbuf* %170, i8* %171)
  %173 = load i32, i32* @REF_ISSYMREF, align 4
  %174 = load i32*, i32** %10, align 8
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %173
  store i32 %176, i32* %174, align 4
  store i32 0, i32* %19, align 4
  br label %199

177:                                              ; preds = %147
  %178 = load i8*, i8** %15, align 8
  %179 = load %struct.object_id*, %struct.object_id** %8, align 8
  %180 = call i64 @parse_oid_hex(i8* %178, %struct.object_id* %179, i8** %16)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %177
  %183 = load i8*, i8** %16, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %182
  %188 = load i8*, i8** %16, align 8
  %189 = load i8, i8* %188, align 1
  %190 = call i64 @isspace(i8 signext %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %187, %177
  %193 = load i32, i32* @REF_ISBROKEN, align 4
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %193
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* @EINVAL, align 4
  store i32 %197, i32* @errno, align 4
  br label %199

198:                                              ; preds = %187, %182
  store i32 0, i32* %19, align 4
  br label %199

199:                                              ; preds = %198, %192, %167, %142, %136, %119, %117, %94, %83, %61, %59, %48, %39
  %200 = load i32, i32* @errno, align 4
  store i32 %200, i32* %20, align 4
  %201 = call i32 @strbuf_release(%struct.strbuf* %13)
  %202 = call i32 @strbuf_release(%struct.strbuf* %12)
  %203 = load i32, i32* %20, align 4
  store i32 %203, i32* @errno, align 4
  %204 = load i32, i32* %19, align 4
  ret i32 %204
}

declare dso_local %struct.files_ref_store* @files_downcast(%struct.ref_store*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @files_ref_path(%struct.files_ref_store*, %struct.strbuf*, i8*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @refs_read_raw_ref(i32, i8*, %struct.object_id*, %struct.strbuf*, i32*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @strbuf_readlink(%struct.strbuf*, i8*, i32) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @check_refname_format(i8*, i32) #1

declare dso_local i32 @strbuf_swap(%struct.strbuf*, %struct.strbuf*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @strbuf_read(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i64 @parse_oid_hex(i8*, %struct.object_id*, i8**) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

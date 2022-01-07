; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_update_file_flags.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_update_file_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }
%struct.merge_options = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.diff_filespec = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"cannot read object %s '%s'\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"blob expected for %s '%s'\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@has_symlinks = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to open '%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to symlink '%s': %s\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"do not know what to do with %06o %s '%s'\00", align 1
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.diff_filespec*, i8*, i32, i32)* @update_file_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_file_flags(%struct.merge_options* %0, %struct.diff_filespec* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.merge_options*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.strbuf, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %7, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %21 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %26, %5
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %185

30:                                               ; preds = %27
  %31 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %32 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @S_ISGITLINK(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %186

37:                                               ; preds = %30
  %38 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %39 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %38, i32 0, i32 1
  %40 = call i8* @read_object_file(i32* %39, i32* %13, i64* %15)
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %45 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %47 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %46, i32 0, i32 1
  %48 = call i32 @oid_to_hex(i32* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 (%struct.merge_options*, i32, ...) @err(%struct.merge_options* %44, i32 %45, i32 %48, i8* %49)
  store i32 %50, i32* %12, align 4
  br label %182

51:                                               ; preds = %37
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @OBJ_BLOB, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %57 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %59 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %58, i32 0, i32 1
  %60 = call i32 @oid_to_hex(i32* %59)
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 (%struct.merge_options*, i32, ...) @err(%struct.merge_options* %56, i32 %57, i32 %60, i8* %61)
  store i32 %62, i32* %12, align 4
  br label %182

63:                                               ; preds = %51
  %64 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %65 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @S_ISREG(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %63
  %70 = bitcast %struct.strbuf* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %71 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %72 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = load i64, i64* %15, align 8
  %79 = call i64 @convert_to_working_tree(i32 %75, i8* %76, i8* %77, i64 %78, %struct.strbuf* %16)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %69
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 @free(i8* %82)
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %16, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %15, align 8
  %86 = call i8* @strbuf_detach(%struct.strbuf* %16, i32* null)
  store i8* %86, i8** %14, align 8
  br label %87

87:                                               ; preds = %81, %69
  br label %88

88:                                               ; preds = %87, %63
  %89 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i64 @make_room_for_path(%struct.merge_options* %89, i8* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, i32* %11, align 4
  br label %182

94:                                               ; preds = %88
  %95 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %96 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @S_ISREG(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* @has_symlinks, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %141, label %103

103:                                              ; preds = %100
  %104 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %105 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @S_ISLNK(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %141

109:                                              ; preds = %103, %94
  %110 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %111 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, 64
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 511, i32 438
  store i32 %116, i32* %18, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = load i32, i32* @O_WRONLY, align 4
  %119 = load i32, i32* @O_TRUNC, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @O_CREAT, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* %18, align 4
  %124 = call i32 @open(i8* %117, i32 %122, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* %17, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %109
  %128 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %129 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i8*, i8** %9, align 8
  %131 = load i32, i32* @errno, align 4
  %132 = call i32 @strerror(i32 %131)
  %133 = call i32 (%struct.merge_options*, i32, ...) @err(%struct.merge_options* %128, i32 %129, i8* %130, i32 %132)
  store i32 %133, i32* %12, align 4
  br label %182

134:                                              ; preds = %109
  %135 = load i32, i32* %17, align 4
  %136 = load i8*, i8** %14, align 8
  %137 = load i64, i64* %15, align 8
  %138 = call i32 @write_in_full(i32 %135, i8* %136, i64 %137)
  %139 = load i32, i32* %17, align 4
  %140 = call i32 @close(i32 %139)
  br label %181

141:                                              ; preds = %103, %100
  %142 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %143 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @S_ISLNK(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %169

147:                                              ; preds = %141
  %148 = load i8*, i8** %14, align 8
  %149 = load i64, i64* %15, align 8
  %150 = call i8* @xmemdupz(i8* %148, i64 %149)
  store i8* %150, i8** %19, align 8
  %151 = load i8*, i8** %9, align 8
  %152 = call i32 @safe_create_leading_directories_const(i8* %151)
  %153 = load i8*, i8** %9, align 8
  %154 = call i32 @unlink(i8* %153)
  %155 = load i8*, i8** %19, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = call i64 @symlink(i8* %155, i8* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %147
  %160 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %161 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %162 = load i8*, i8** %9, align 8
  %163 = load i32, i32* @errno, align 4
  %164 = call i32 @strerror(i32 %163)
  %165 = call i32 (%struct.merge_options*, i32, ...) @err(%struct.merge_options* %160, i32 %161, i8* %162, i32 %164)
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %159, %147
  %167 = load i8*, i8** %19, align 8
  %168 = call i32 @free(i8* %167)
  br label %180

169:                                              ; preds = %141
  %170 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %171 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %172 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %173 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %176 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %175, i32 0, i32 1
  %177 = call i32 @oid_to_hex(i32* %176)
  %178 = load i8*, i8** %9, align 8
  %179 = call i32 (%struct.merge_options*, i32, ...) @err(%struct.merge_options* %170, i32 %171, i32 %174, i32 %177, i8* %178)
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %169, %166
  br label %181

181:                                              ; preds = %180, %134
  br label %182

182:                                              ; preds = %181, %127, %93, %55, %43
  %183 = load i8*, i8** %14, align 8
  %184 = call i32 @free(i8* %183)
  br label %185

185:                                              ; preds = %182, %27
  br label %186

186:                                              ; preds = %185, %36
  %187 = load i32, i32* %12, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %202, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %189
  %193 = load %struct.merge_options*, %struct.merge_options** %7, align 8
  %194 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %198 = call i64 @add_cacheinfo(%struct.merge_options* %193, %struct.diff_filespec* %194, i8* %195, i32 0, i32 %196, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  store i32 -1, i32* %6, align 4
  br label %204

201:                                              ; preds = %192
  br label %202

202:                                              ; preds = %201, %189, %186
  %203 = load i32, i32* %12, align 4
  store i32 %203, i32* %6, align 4
  br label %204

204:                                              ; preds = %202, %200
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local i8* @read_object_file(i32*, i32*, i64*) #1

declare dso_local i32 @err(%struct.merge_options*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @convert_to_working_tree(i32, i8*, i8*, i64, %struct.strbuf*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #1

declare dso_local i64 @make_room_for_path(%struct.merge_options*, i8*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @write_in_full(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @xmemdupz(i8*, i64) #1

declare dso_local i32 @safe_create_leading_directories_const(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i64 @symlink(i8*, i8*) #1

declare dso_local i64 @add_cacheinfo(%struct.merge_options*, %struct.diff_filespec*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

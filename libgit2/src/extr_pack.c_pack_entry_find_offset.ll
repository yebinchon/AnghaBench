; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack.c_pack_entry_find_offset.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack.c_pack_entry_find_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_pack_file = type { i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_11__ = type { i32* }

@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"failed to find offset for pack entry\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"found multiple offsets for pack entry\00", align 1
@GIT_ERROR_ODB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"packfile index is corrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.git_pack_file*, %struct.TYPE_11__*, i64)* @pack_entry_find_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_entry_find_offset(i32* %0, %struct.TYPE_11__* %1, %struct.git_pack_file* %2, %struct.TYPE_11__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.git_pack_file*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store %struct.git_pack_file* %2, %struct.git_pack_file** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %18, align 4
  store i8* null, i8** %20, align 8
  %23 = load i32*, i32** %7, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %25 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %40

28:                                               ; preds = %5
  %29 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %30 = call i32 @pack_index_open(%struct.git_pack_file* %29)
  store i32 %30, i32* %21, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %21, align 4
  store i32 %33, i32* %6, align 4
  br label %197

34:                                               ; preds = %28
  %35 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %36 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @assert(i8* %38)
  br label %40

40:                                               ; preds = %34, %5
  %41 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %42 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %13, align 8
  %45 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %46 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %12, align 8
  %49 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %50 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 8
  store i8* %57, i8** %13, align 8
  br label %58

58:                                               ; preds = %53, %40
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1024
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %61, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @ntohl(i8 zeroext %69)
  store i32 %70, i32* %14, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %58
  br label %90

78:                                               ; preds = %58
  %79 = load i8*, i8** %12, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %79, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @ntohl(i8 zeroext %88)
  br label %90

90:                                               ; preds = %78, %77
  %91 = phi i32 [ 0, %77 ], [ %89, %78 ]
  store i32 %91, i32* %15, align 4
  %92 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %93 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 20, i32* %16, align 4
  br label %100

97:                                               ; preds = %90
  store i32 24, i32* %16, align 4
  %98 = load i8*, i8** %13, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 4
  store i8* %99, i8** %13, align 8
  br label %100

100:                                              ; preds = %97, %96
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @sha1_position(i8* %101, i32 %102, i32 %103, i32 %104, i32* %107)
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %100
  store i32 1, i32* %18, align 4
  %112 = load i8*, i8** %13, align 8
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %16, align 4
  %115 = mul i32 %113, %114
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %112, i64 %116
  store i8* %117, i8** %20, align 8
  br label %143

118:                                              ; preds = %100
  %119 = load i32, i32* %17, align 4
  %120 = sub nsw i32 -1, %119
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %123 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %118
  %128 = load i8*, i8** %13, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %16, align 4
  %131 = mul i32 %129, %130
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %128, i64 %132
  store i8* %133, i8** %20, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %135 = load i8*, i8** %20, align 8
  %136 = bitcast i8* %135 to %struct.TYPE_11__*
  %137 = load i64, i64* %11, align 8
  %138 = call i32 @git_oid_ncmp(%struct.TYPE_11__* %134, %struct.TYPE_11__* %136, i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %127
  store i32 1, i32* %18, align 4
  br label %141

141:                                              ; preds = %140, %127
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %111
  %144 = load i32, i32* %18, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %171

146:                                              ; preds = %143
  %147 = load i64, i64* %11, align 8
  %148 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %171

150:                                              ; preds = %146
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 1
  %153 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %154 = getelementptr inbounds %struct.git_pack_file, %struct.git_pack_file* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %150
  %159 = load i8*, i8** %20, align 8
  %160 = load i32, i32* %16, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8* %162, i8** %22, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %164 = load i8*, i8** %22, align 8
  %165 = bitcast i8* %164 to %struct.TYPE_11__*
  %166 = load i64, i64* %11, align 8
  %167 = call i32 @git_oid_ncmp(%struct.TYPE_11__* %163, %struct.TYPE_11__* %165, i64 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %158
  store i32 2, i32* %18, align 4
  br label %170

170:                                              ; preds = %169, %158
  br label %171

171:                                              ; preds = %170, %150, %146, %143
  %172 = load i32, i32* %18, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %171
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %176 = load i64, i64* %11, align 8
  %177 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %175, i64 %176)
  store i32 %177, i32* %6, align 4
  br label %197

178:                                              ; preds = %171
  %179 = load i32, i32* %18, align 4
  %180 = icmp sgt i32 %179, 1
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = call i32 @git_odb__error_ambiguous(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 %182, i32* %6, align 4
  br label %197

183:                                              ; preds = %178
  %184 = load %struct.git_pack_file*, %struct.git_pack_file** %9, align 8
  %185 = load i32, i32* %17, align 4
  %186 = call i32 @nth_packed_object_offset(%struct.git_pack_file* %184, i32 %185)
  store i32 %186, i32* %19, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load i32, i32* @GIT_ERROR_ODB, align 4
  %190 = call i32 @git_error_set(i32 %189, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %197

191:                                              ; preds = %183
  %192 = load i32, i32* %19, align 4
  %193 = load i32*, i32** %7, align 8
  store i32 %192, i32* %193, align 4
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %195 = load i8*, i8** %20, align 8
  %196 = call i32 @git_oid_fromraw(%struct.TYPE_11__* %194, i8* %195)
  store i32 0, i32* %6, align 4
  br label %197

197:                                              ; preds = %191, %188, %181, %174, %32
  %198 = load i32, i32* %6, align 4
  ret i32 %198
}

declare dso_local i32 @pack_index_open(%struct.git_pack_file*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @ntohl(i8 zeroext) #1

declare dso_local i32 @sha1_position(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @git_oid_ncmp(%struct.TYPE_11__*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @git_odb__error_notfound(i8*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @git_odb__error_ambiguous(i8*) #1

declare dso_local i32 @nth_packed_object_offset(%struct.git_pack_file*, i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_oid_fromraw(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

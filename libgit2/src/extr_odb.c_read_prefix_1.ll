; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_read_prefix_1.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_read_prefix_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_32__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { i8*, i32, i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32 (%struct.TYPE_32__*, i8**, i32*, i32*, %struct.TYPE_33__*, %struct.TYPE_32__*, i64)*, i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_35__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"multiple matches for prefix: %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@git_odb__strict_hash_verification = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_34__*, %struct.TYPE_32__*, i64, i32)* @read_prefix_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_prefix_1(i32** %0, %struct.TYPE_34__* %1, %struct.TYPE_32__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_32__, align 4
  %15 = alloca %struct.TYPE_31__, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_36__*, align 8
  %20 = alloca %struct.TYPE_33__*, align 8
  %21 = alloca %struct.TYPE_32__, align 4
  %22 = alloca %struct.TYPE_35__, align 4
  %23 = alloca %struct.TYPE_32__, align 4
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %8, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %24 = bitcast %struct.TYPE_32__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 4, i1 false)
  %25 = bitcast %struct.TYPE_31__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 24, i1 false)
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %12, align 8
  br label %26

26:                                               ; preds = %101, %5
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %27, %31
  br i1 %32, label %33, label %104

33:                                               ; preds = %26
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i32 0, i32 0
  %36 = load i64, i64* %12, align 8
  %37 = call %struct.TYPE_36__* @git_vector_get(%struct.TYPE_29__* %35, i64 %36)
  store %struct.TYPE_36__* %37, %struct.TYPE_36__** %19, align 8
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %39, align 8
  store %struct.TYPE_33__* %40, %struct.TYPE_33__** %20, align 8
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %101

49:                                               ; preds = %43, %33
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_32__*, i8**, i32*, i32*, %struct.TYPE_33__*, %struct.TYPE_32__*, i64)*, i32 (%struct.TYPE_32__*, i8**, i32*, i32*, %struct.TYPE_33__*, %struct.TYPE_32__*, i64)** %51, align 8
  %53 = icmp ne i32 (%struct.TYPE_32__*, i8**, i32*, i32*, %struct.TYPE_33__*, %struct.TYPE_32__*, i64)* %52, null
  br i1 %53, label %54, label %100

54:                                               ; preds = %49
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_32__*, i8**, i32*, i32*, %struct.TYPE_33__*, %struct.TYPE_32__*, i64)*, i32 (%struct.TYPE_32__*, i8**, i32*, i32*, %struct.TYPE_33__*, %struct.TYPE_32__*, i64)** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 1
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %62 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 %57(%struct.TYPE_32__* %21, i8** %58, i32* %59, i32* %60, %struct.TYPE_33__* %61, %struct.TYPE_32__* %62, i64 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @GIT_ENOTFOUND, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @GIT_PASSTHROUGH, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %54
  store i32 0, i32* %13, align 4
  br label %101

73:                                               ; preds = %68
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %138

77:                                               ; preds = %73
  %78 = load i8*, i8** %16, align 8
  %79 = call i32 @git__free(i8* %78)
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %16, align 8
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = call i64 @git_oid__cmp(%struct.TYPE_32__* %21, %struct.TYPE_32__* %14)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = bitcast %struct.TYPE_35__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 bitcast (%struct.TYPE_35__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %89 = call i32 @git_oid_tostr_s(%struct.TYPE_32__* %21)
  %90 = call i32 @git_buf_printf(%struct.TYPE_35__* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = call i32 @git_oid_tostr_s(%struct.TYPE_32__* %14)
  %92 = call i32 @git_buf_printf(%struct.TYPE_35__* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %22, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @git_odb__error_ambiguous(i32 %94)
  store i32 %95, i32* %13, align 4
  %96 = call i32 @git_buf_dispose(%struct.TYPE_35__* %22)
  br label %138

97:                                               ; preds = %84, %77
  %98 = bitcast %struct.TYPE_32__* %14 to i8*
  %99 = bitcast %struct.TYPE_32__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 4 %99, i64 4, i1 false)
  store i32 1, i32* %17, align 4
  br label %100

100:                                              ; preds = %97, %49
  br label %101

101:                                              ; preds = %100, %72, %48
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %12, align 8
  br label %26

104:                                              ; preds = %26
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %108, i32* %6, align 4
  br label %147

109:                                              ; preds = %104
  %110 = load i64, i64* @git_odb__strict_hash_verification, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @git_odb_hash(%struct.TYPE_32__* %23, i8* %114, i32 %116, i32 %118)
  store i32 %119, i32* %13, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %138

122:                                              ; preds = %112
  %123 = call i32 @git_oid_equal(%struct.TYPE_32__* %14, %struct.TYPE_32__* %23)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = call i32 @git_odb__error_mismatch(%struct.TYPE_32__* %14, %struct.TYPE_32__* %23)
  store i32 %126, i32* %13, align 4
  br label %138

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %109
  %129 = call i32* @odb_object__alloc(%struct.TYPE_32__* %14, %struct.TYPE_31__* %15)
  store i32* %129, i32** %18, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 -1, i32* %13, align 4
  br label %138

132:                                              ; preds = %128
  %133 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %134 = call i32 @odb_cache(%struct.TYPE_34__* %133)
  %135 = load i32*, i32** %18, align 8
  %136 = call i32* @git_cache_store_raw(i32 %134, i32* %135)
  %137 = load i32**, i32*** %7, align 8
  store i32* %136, i32** %137, align 8
  br label %138

138:                                              ; preds = %132, %131, %125, %121, %87, %76
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @git__free(i8* %143)
  br label %145

145:                                              ; preds = %141, %138
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %145, %107
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_36__* @git_vector_get(%struct.TYPE_29__*, i64) #2

declare dso_local i32 @git__free(i8*) #2

declare dso_local i64 @git_oid__cmp(%struct.TYPE_32__*, %struct.TYPE_32__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_printf(%struct.TYPE_35__*, i8*, i32) #2

declare dso_local i32 @git_oid_tostr_s(%struct.TYPE_32__*) #2

declare dso_local i32 @git_odb__error_ambiguous(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_35__*) #2

declare dso_local i32 @git_odb_hash(%struct.TYPE_32__*, i8*, i32, i32) #2

declare dso_local i32 @git_oid_equal(%struct.TYPE_32__*, %struct.TYPE_32__*) #2

declare dso_local i32 @git_odb__error_mismatch(%struct.TYPE_32__*, %struct.TYPE_32__*) #2

declare dso_local i32* @odb_object__alloc(%struct.TYPE_32__*, %struct.TYPE_31__*) #2

declare dso_local i32* @git_cache_store_raw(i32, i32*) #2

declare dso_local i32 @odb_cache(%struct.TYPE_34__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

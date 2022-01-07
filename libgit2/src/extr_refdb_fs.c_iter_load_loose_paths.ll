; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_iter_load_loose_paths.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_iter_load_loose_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i8*, i32, i32 }
%struct.TYPE_22__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@GIT_REFS_DIR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c".lock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @iter_load_loose_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_load_loose_paths(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_21__, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = bitcast %struct.TYPE_23__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_23__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32* null, i32** %8, align 8
  %18 = bitcast %struct.TYPE_21__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_21__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %10, align 8
  %19 = load i8*, i8** @GIT_REFS_DIR, align 8
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %12, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %160

27:                                               ; preds = %2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %70

36:                                               ; preds = %27
  store i8* null, i8** %13, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %14, align 8
  br label %40

40:                                               ; preds = %53, %36
  %41 = load i8*, i8** %14, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i8*, i8** %14, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  switch i32 %47, label %51 [
    i32 63, label %48
    i32 42, label %48
    i32 91, label %48
    i32 92, label %48
    i32 47, label %49
  ]

48:                                               ; preds = %44, %44, %44, %44
  br label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %14, align 8
  store i8* %50, i8** %13, align 8
  br label %51

51:                                               ; preds = %44, %49
  br label %53

52:                                               ; preds = %48
  br label %56

53:                                               ; preds = %51
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %14, align 8
  br label %40

56:                                               ; preds = %52, %40
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %59, %56
  br label %70

70:                                               ; preds = %69, %27
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @git_buf_printf(%struct.TYPE_23__* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load i8*, i8** %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @git_buf_put(%struct.TYPE_23__* %7, i8* %77, i64 %78)
  store i32 %79, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76, %70
  %82 = call i32 @git_buf_dispose(%struct.TYPE_23__* %7)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %160

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @git_iterator_for_filesystem(i32** %8, i32 %86, %struct.TYPE_21__* %9)
  store i32 %87, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = call i32 @git_buf_dispose(%struct.TYPE_23__* %7)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @GIT_ENOTFOUND, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %102

100:                                              ; preds = %95, %89
  %101 = load i32, i32* %6, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i32 [ 0, %99 ], [ %101, %100 ]
  store i32 %103, i32* %3, align 4
  br label %160

104:                                              ; preds = %84
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @git_buf_sets(%struct.TYPE_23__* %7, i8* %105)
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %154, %140, %104
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @git_iterator_advance(%struct.TYPE_22__** %10, i32* %111)
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  br label %115

115:                                              ; preds = %110, %107
  %116 = phi i1 [ false, %107 ], [ %114, %110 ]
  br i1 %116, label %117, label %155

117:                                              ; preds = %115
  %118 = load i64, i64* %12, align 8
  %119 = call i32 @git_buf_truncate(%struct.TYPE_23__* %7, i64 %118)
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @git_buf_puts(%struct.TYPE_23__* %7, i32 %122)
  %124 = call i8* @git_buf_cstr(%struct.TYPE_23__* %7)
  store i8* %124, i8** %15, align 8
  %125 = load i8*, i8** %15, align 8
  %126 = call i64 @git__suffixcmp(i8* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %117
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i8*, i8** %15, align 8
  %138 = call i64 @wildmatch(i8* %136, i8* %137, i32 0)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133, %117
  br label %107

141:                                              ; preds = %133, %128
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 2
  %144 = load i8*, i8** %15, align 8
  %145 = call i8* @git_pool_strdup(i32* %143, i8* %144)
  store i8* %145, i8** %16, align 8
  %146 = load i8*, i8** %16, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %141
  store i32 -1, i32* %6, align 4
  br label %154

149:                                              ; preds = %141
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = load i8*, i8** %16, align 8
  %153 = call i32 @git_vector_insert(i32* %151, i8* %152)
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %149, %148
  br label %107

155:                                              ; preds = %115
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @git_iterator_free(i32* %156)
  %158 = call i32 @git_buf_dispose(%struct.TYPE_23__* %7)
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %155, %102, %81, %26
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_23__*, i8*, i32) #2

declare dso_local i32 @git_buf_put(%struct.TYPE_23__*, i8*, i64) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_23__*) #2

declare dso_local i32 @git_iterator_for_filesystem(i32**, i32, %struct.TYPE_21__*) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_23__*, i8*) #2

declare dso_local i32 @git_iterator_advance(%struct.TYPE_22__**, i32*) #2

declare dso_local i32 @git_buf_truncate(%struct.TYPE_23__*, i64) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_23__*, i32) #2

declare dso_local i8* @git_buf_cstr(%struct.TYPE_23__*) #2

declare dso_local i64 @git__suffixcmp(i8*, i8*) #2

declare dso_local i64 @wildmatch(i8*, i8*, i32) #2

declare dso_local i8* @git_pool_strdup(i32*, i8*) #2

declare dso_local i32 @git_vector_insert(i32*, i8*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

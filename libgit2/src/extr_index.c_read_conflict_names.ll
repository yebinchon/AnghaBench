; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_read_conflict_names.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_read_conflict_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__* }

@conflict_name_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"reading conflict name entries\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i64)* @read_conflict_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_conflict_names(%struct.TYPE_13__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* @conflict_name_cmp, align 4
  %19 = call i64 @git_vector_init(%struct.TYPE_14__* %17, i32 16, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %176

22:                                               ; preds = %15, %3
  br label %23

23:                                               ; preds = %156, %22
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %172

26:                                               ; preds = %23
  %27 = call %struct.TYPE_12__* @git__calloc(i32 1, i32 24)
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %9, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 (i8*, i64, ...) bitcast (i32 (...)* @p_strnlen to i32 (i8*, i64, ...)*)(i8* %30, i64 %31)
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = call i32 (i8*, ...) bitcast (i32 (...)* @index_error_invalid to i32 (i8*, ...)*)(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %157

40:                                               ; preds = %26
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %45, align 8
  br label %63

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  %48 = call i32 (i64, ...) bitcast (i32 (...)* @git__malloc to i32 (i64, ...)*)(i64 %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_12__*
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__* %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = bitcast %struct.TYPE_12__* %59 to i8*
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 1 %61, i64 %62, i1 false)
  br label %63

63:                                               ; preds = %46, %43
  %64 = load i64, i64* %8, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8* %66, i8** %6, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %7, align 8
  %69 = sub i64 %68, %67
  store i64 %69, i64* %7, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 (i8*, i64, ...) bitcast (i32 (...)* @p_strnlen to i32 (i8*, i64, ...)*)(i8* %70, i64 %71)
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = call i32 (i8*, ...) bitcast (i32 (...)* @index_error_invalid to i32 (i8*, ...)*)(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %157

80:                                               ; preds = %63
  %81 = load i64, i64* %8, align 8
  %82 = icmp eq i64 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %85, align 8
  br label %103

86:                                               ; preds = %80
  %87 = load i64, i64* %8, align 8
  %88 = call i32 (i64, ...) bitcast (i32 (...)* @git__malloc to i32 (i64, ...)*)(i64 %87)
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to %struct.TYPE_12__*
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store %struct.TYPE_12__* %90, %struct.TYPE_12__** %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__* %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = bitcast %struct.TYPE_12__* %99 to i8*
  %101 = load i8*, i8** %6, align 8
  %102 = load i64, i64* %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 1 %101, i64 %102, i1 false)
  br label %103

103:                                              ; preds = %86, %83
  %104 = load i64, i64* %8, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %6, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %7, align 8
  %109 = sub i64 %108, %107
  store i64 %109, i64* %7, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = call i32 (i8*, i64, ...) bitcast (i32 (...)* @p_strnlen to i32 (i8*, i64, ...)*)(i8* %110, i64 %111)
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  store i64 %114, i64* %8, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %103
  %119 = call i32 (i8*, ...) bitcast (i32 (...)* @index_error_invalid to i32 (i8*, ...)*)(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %157

120:                                              ; preds = %103
  %121 = load i64, i64* %8, align 8
  %122 = icmp eq i64 %121, 1
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %125, align 8
  br label %143

126:                                              ; preds = %120
  %127 = load i64, i64* %8, align 8
  %128 = call i32 (i64, ...) bitcast (i32 (...)* @git__malloc to i32 (i64, ...)*)(i64 %127)
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to %struct.TYPE_12__*
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__* %135)
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = bitcast %struct.TYPE_12__* %139 to i8*
  %141 = load i8*, i8** %6, align 8
  %142 = load i64, i64* %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 1 %141, i64 %142, i1 false)
  br label %143

143:                                              ; preds = %126, %123
  %144 = load i64, i64* %8, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 %144
  store i8* %146, i8** %6, align 8
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* %7, align 8
  %149 = sub i64 %148, %147
  store i64 %149, i64* %7, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %153 = call i64 @git_vector_insert(%struct.TYPE_14__* %151, %struct.TYPE_12__* %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %143
  br label %157

156:                                              ; preds = %143
  br label %23

157:                                              ; preds = %155, %118, %78, %38
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = call i32 @git__free(%struct.TYPE_12__* %160)
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %163, align 8
  %165 = call i32 @git__free(%struct.TYPE_12__* %164)
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = call i32 @git__free(%struct.TYPE_12__* %168)
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %171 = call i32 @git__free(%struct.TYPE_12__* %170)
  store i32 -1, i32* %4, align 4
  br label %176

172:                                              ; preds = %23
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = call i32 @git_vector_set_sorted(%struct.TYPE_14__* %174, i32 1)
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %172, %157, %21
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i64 @git_vector_init(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_12__*) #1

declare dso_local i32 @p_strnlen(...) #1

declare dso_local i32 @index_error_invalid(...) #1

declare dso_local i32 @git__malloc(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @git_vector_insert(%struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @git__free(%struct.TYPE_12__*) #1

declare dso_local i32 @git_vector_set_sorted(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

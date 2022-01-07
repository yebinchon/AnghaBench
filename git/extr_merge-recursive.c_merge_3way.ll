; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_3way.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_merge_3way.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i32, i8*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.diff_filespec = type { i64, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.ll_merge_options = type { i32, i32, i64, i32, i32, i32 }

@XDL_MERGE_FAVOR_OURS = common dso_local global i64 0, align 8
@XDL_MERGE_FAVOR_THEIRS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, i32*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.diff_filespec*, i8*, i8*, i32)* @merge_3way to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_3way(%struct.merge_options* %0, i32* %1, %struct.diff_filespec* %2, %struct.diff_filespec* %3, %struct.diff_filespec* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.merge_options*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.diff_filespec*, align 8
  %12 = alloca %struct.diff_filespec*, align 8
  %13 = alloca %struct.diff_filespec*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__, align 8
  %18 = alloca %struct.TYPE_10__, align 8
  %19 = alloca %struct.TYPE_10__, align 8
  %20 = alloca %struct.ll_merge_options, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %11, align 8
  store %struct.diff_filespec* %3, %struct.diff_filespec** %12, align 8
  store %struct.diff_filespec* %4, %struct.diff_filespec** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %25 = bitcast %struct.ll_merge_options* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 32, i1 false)
  %26 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %27 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %20, i32 0, i32 4
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %16, align 4
  %31 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %20, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %33 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %20, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %37 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %36, i32 0, i32 3
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %8
  %43 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %20, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %20, i32 0, i32 2
  store i64 0, i64* %44, align 8
  br label %58

45:                                               ; preds = %8
  %46 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %47 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %55 [
    i32 129, label %49
    i32 128, label %52
  ]

49:                                               ; preds = %45
  %50 = load i64, i64* @XDL_MERGE_FAVOR_OURS, align 8
  %51 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %20, i32 0, i32 2
  store i64 %50, i64* %51, align 8
  br label %57

52:                                               ; preds = %45
  %53 = load i64, i64* @XDL_MERGE_FAVOR_THEIRS, align 8
  %54 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %20, i32 0, i32 2
  store i64 %53, i64* %54, align 8
  br label %57

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.ll_merge_options, %struct.ll_merge_options* %20, i32 0, i32 2
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %55, %52, %49
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %60 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %65 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %70 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %75 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br label %78

78:                                               ; preds = %73, %68, %63, %58
  %79 = phi i1 [ false, %68 ], [ false, %63 ], [ false, %58 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %83 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %86 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @strcmp(i64 %84, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %78
  %91 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %92 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %95 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @strcmp(i64 %93, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %90, %78
  %100 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %101 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %104 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i8* (i8*, i8*, ...) @mkpathdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %102, i64 %105)
  store i8* %106, i8** %21, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %109 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i8* (i8*, i8*, ...) @mkpathdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %107, i64 %110)
  store i8* %111, i8** %22, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %114 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i8* (i8*, i8*, ...) @mkpathdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %112, i64 %115)
  store i8* %116, i8** %23, align 8
  br label %126

117:                                              ; preds = %90
  %118 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %119 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i8* (i8*, i8*, ...) @mkpathdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %120)
  store i8* %121, i8** %21, align 8
  %122 = load i8*, i8** %14, align 8
  %123 = call i8* (i8*, i8*, ...) @mkpathdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %122)
  store i8* %123, i8** %22, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = call i8* (i8*, i8*, ...) @mkpathdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %124)
  store i8* %125, i8** %23, align 8
  br label %126

126:                                              ; preds = %117, %99
  %127 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %128 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %127, i32 0, i32 1
  %129 = call i32 @read_mmblob(%struct.TYPE_10__* %17, i32* %128)
  %130 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %131 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %130, i32 0, i32 1
  %132 = call i32 @read_mmblob(%struct.TYPE_10__* %18, i32* %131)
  %133 = load %struct.diff_filespec*, %struct.diff_filespec** %13, align 8
  %134 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %133, i32 0, i32 1
  %135 = call i32 @read_mmblob(%struct.TYPE_10__* %19, i32* %134)
  %136 = load i32*, i32** %10, align 8
  %137 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %138 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i8*, i8** %21, align 8
  %141 = load i8*, i8** %22, align 8
  %142 = load i8*, i8** %23, align 8
  %143 = load %struct.merge_options*, %struct.merge_options** %9, align 8
  %144 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %143, i32 0, i32 2
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ll_merge(i32* %136, i64 %139, %struct.TYPE_10__* %17, i8* %140, %struct.TYPE_10__* %18, i8* %141, %struct.TYPE_10__* %19, i8* %142, i32 %147, %struct.ll_merge_options* %20)
  store i32 %148, i32* %24, align 4
  %149 = load i8*, i8** %21, align 8
  %150 = call i32 @free(i8* %149)
  %151 = load i8*, i8** %22, align 8
  %152 = call i32 @free(i8* %151)
  %153 = load i8*, i8** %23, align 8
  %154 = call i32 @free(i8* %153)
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @free(i8* %156)
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @free(i8* %159)
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @free(i8* %162)
  %164 = load i32, i32* %24, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @strcmp(i64, i64) #2

declare dso_local i8* @mkpathdup(i8*, i8*, ...) #2

declare dso_local i32 @read_mmblob(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @ll_merge(i32*, i64, %struct.TYPE_10__*, i8*, %struct.TYPE_10__*, i8*, %struct.TYPE_10__*, i8*, i32, %struct.ll_merge_options*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

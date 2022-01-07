; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-progress.c_cmd__progress.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-progress.c_cmd__progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.progress = type { i32 }
%struct.option = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [50 x i8] c"test-tool progress [--total=<n>] <progress-title>\00", align 1
@__const.cmd__progress.usage = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"total number of items\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"need a title for the progress output\00", align 1
@progress_testing = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"progress \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"invalid input: '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"throughput \00", align 1
@progress_test_ns = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"update\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__progress(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.progress*, align 8
  %9 = alloca [2 x i8*], align 16
  %10 = alloca [2 x %struct.option], align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = bitcast [2 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([2 x i8*]* @__const.cmd__progress.usage to i8*), i64 16, i1 false)
  %17 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %10, i64 0, i64 0
  %18 = call i32 @OPT_INTEGER(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %17, i64 1
  %21 = call i32 (...) @OPT_END()
  %22 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i8**, i8*** %4, align 8
  %25 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %10, i64 0, i64 0
  %26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %27 = call i32 @parse_options(i32 %23, i8** %24, i32* null, %struct.option* %25, i8** %26, i32 0)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %2
  %33 = load i8**, i8*** %4, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %6, align 8
  store i32 1, i32* @progress_testing, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.progress* @start_progress(i8* %36, i32 %37)
  store %struct.progress* %38, %struct.progress** %8, align 8
  br label %39

39:                                               ; preds = %112, %32
  %40 = load i32, i32* @stdin, align 4
  %41 = call i64 @strbuf_getline(%struct.strbuf* %7, i32 %40)
  %42 = load i64, i64* @EOF, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %113

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @skip_prefix(i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %11)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @strtoull(i8* %50, i8** %11, i32 10)
  store i32 %51, i32* %12, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.progress*, %struct.progress** %8, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @display_progress(%struct.progress* %61, i32 %62)
  br label %112

64:                                               ; preds = %44
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @skip_prefix(i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %11)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %64
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @strtoull(i8* %70, i8** %11, i32 10)
  store i32 %71, i32* %13, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 32
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %69
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = call i32 @strtoull(i8* %82, i8** %11, i32 10)
  store i32 %83, i32* %14, align 4
  %84 = load i8*, i8** %11, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %80
  %93 = load i32, i32* %14, align 4
  %94 = mul nsw i32 %93, 1000
  %95 = mul nsw i32 %94, 1000
  store i32 %95, i32* @progress_test_ns, align 4
  %96 = load %struct.progress*, %struct.progress** %8, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @display_throughput(%struct.progress* %96, i32 %97)
  br label %111

99:                                               ; preds = %64
  %100 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strcmp(i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = call i32 (...) @progress_test_force_update()
  br label %110

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %104
  br label %111

111:                                              ; preds = %110, %92
  br label %112

112:                                              ; preds = %111, %60
  br label %39

113:                                              ; preds = %39
  %114 = call i32 @stop_progress(%struct.progress** %8)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_INTEGER(i32, i8*, i32*, i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i8**, i32) #2

declare dso_local i32 @die(i8*, ...) #2

declare dso_local %struct.progress* @start_progress(i8*, i32) #2

declare dso_local i64 @strbuf_getline(%struct.strbuf*, i32) #2

declare dso_local i64 @skip_prefix(i32, i8*, i8**) #2

declare dso_local i32 @strtoull(i8*, i8**, i32) #2

declare dso_local i32 @display_progress(%struct.progress*, i32) #2

declare dso_local i32 @display_throughput(%struct.progress*, i32) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @progress_test_force_update(...) #2

declare dso_local i32 @stop_progress(%struct.progress**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

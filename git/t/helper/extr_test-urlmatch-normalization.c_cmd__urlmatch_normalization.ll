; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-urlmatch-normalization.c_cmd__urlmatch_normalization.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-urlmatch-normalization.c_cmd__urlmatch_normalization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.url_info = type { i64 }

@__const.cmd__urlmatch_normalization.usage = private unnamed_addr constant [66 x i8] c"test-tool urlmatch-normalization [-p | -l] <url1> | <url1> <url2>\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__urlmatch_normalization(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [66 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.url_info, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast [66 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([66 x i8], [66 x i8]* @__const.cmd__urlmatch_normalization.usage, i32 0, i32 0), i64 66, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  store i32 1, i32* %9, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i32 1
  store i8** %25, i8*** %5, align 8
  br label %41

26:                                               ; preds = %15, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %4, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %5, align 8
  br label %40

40:                                               ; preds = %35, %29, %26
  br label %41

41:                                               ; preds = %40, %21
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 2
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 3
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %41
  %48 = getelementptr inbounds [66 x i8], [66 x i8]* %6, i64 0, i64 0
  %49 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %4, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i8* @url_normalize(i8* %56, %struct.url_info* %11)
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %109

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.url_info, %struct.url_info* %11, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %70, %67
  store i32 0, i32* %3, align 4
  br label %109

76:                                               ; preds = %50
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79, %76
  %83 = getelementptr inbounds [66 x i8], [66 x i8]* %6, i64 0, i64 0
  %84 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @url_normalize(i8* %88, %struct.url_info* null)
  store i8* %89, i8** %7, align 8
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @url_normalize(i8* %92, %struct.url_info* null)
  store i8* %93, i8** %8, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %85
  %97 = load i8*, i8** %8, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @strcmp(i8* %100, i8* %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %99, %96, %85
  %106 = phi i1 [ false, %96 ], [ false, %85 ], [ %104, %99 ]
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 0, i32 1
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %75, %60
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local i8* @url_normalize(i8*, %struct.url_info*) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

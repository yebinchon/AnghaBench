; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_parse_ident.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_parse_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Missing < in ident string: %s\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Missing space before < in ident string: %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Missing > in ident string: %s\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Missing space after > in ident string: %s\00", align 1
@whenspec = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Invalid raw date \22%s\22 in ident: %s\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Invalid rfc2822 date \22%s\22 in ident: %s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Date in ident must be 'now': %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @parse_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_ident(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %2, align 8
  %6 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 60
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %13, i8** %2, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i8*, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @strcspn(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 60
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %14
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = icmp ne i8* %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 32
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %31, %27
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = call i32 @strcspn(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  store i8* %47, i8** %3, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 62
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %40
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %3, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 32
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %55
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %3, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = load i8*, i8** %2, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  store i64 %72, i64* %4, align 8
  %73 = load i8*, i8** %2, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @strbuf_add(%struct.strbuf* %5, i8* %73, i64 %74)
  %76 = load i32, i32* @whenspec, align 4
  switch i32 %76, label %104 [
    i32 129, label %77
    i32 128, label %86
    i32 130, label %95
  ]

77:                                               ; preds = %65
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @validate_raw_date(i8* %78, %struct.strbuf* %5)
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i8*, i8** %3, align 8
  %83 = load i8*, i8** %2, align 8
  %84 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %82, i8* %83)
  br label %85

85:                                               ; preds = %81, %77
  br label %104

86:                                               ; preds = %65
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @parse_date(i8* %87, %struct.strbuf* %5)
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i8*, i8** %3, align 8
  %92 = load i8*, i8** %2, align 8
  %93 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %91, i8* %92)
  br label %94

94:                                               ; preds = %90, %86
  br label %104

95:                                               ; preds = %65
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i8*, i8** %2, align 8
  %101 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %99, %95
  %103 = call i32 @datestamp(%struct.strbuf* %5)
  br label %104

104:                                              ; preds = %65, %102, %94, %85
  %105 = call i8* @strbuf_detach(%struct.strbuf* %5, i32* null)
  ret i8* %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcspn(i8*, i8*) #2

declare dso_local i32 @die(i8*, i8*, ...) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i64) #2

declare dso_local i32 @validate_raw_date(i8*, %struct.strbuf*) #2

declare dso_local i32 @parse_date(i8*, %struct.strbuf*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @datestamp(%struct.strbuf*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

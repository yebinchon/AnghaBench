; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_mailinfo.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_mailinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.mailinfo = type { i32, i32*, %struct.TYPE_2__, i8*, i32, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@MAX_HDR_PARSED = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"empty patch: '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mailinfo(%struct.mailinfo* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mailinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.strbuf, align 4
  store %struct.mailinfo* %0, %struct.mailinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %12 = load i8*, i8** %6, align 8
  %13 = call i8* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @perror(i8* %18)
  store i32 -1, i32* %4, align 4
  br label %105

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %25 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %27 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %20
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @perror(i8* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @fclose(i32* %33)
  store i32 -1, i32* %4, align 4
  br label %105

35:                                               ; preds = %20
  %36 = load i32, i32* @MAX_HDR_PARSED, align 4
  %37 = call i8* @xcalloc(i32 %36, i32 1)
  %38 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %39 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @MAX_HDR_PARSED, align 4
  %41 = call i8* @xcalloc(i32 %40, i32 1)
  %42 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %43 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %58, %35
  %45 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %46 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @fgetc(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @EOF, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @fclose(i32* %53)
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  store i32 %56, i32* %4, align 4
  br label %105

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @isspace(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %44, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %65 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ungetc(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %74, %62
  %69 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %70 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @read_one_header_line(%struct.strbuf* %10, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %76 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %77 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @check_header(%struct.mailinfo* %75, %struct.strbuf* %10, i8* %78, i32 1)
  br label %68

80:                                               ; preds = %68
  %81 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %82 = call i32 @handle_body(%struct.mailinfo* %81, %struct.strbuf* %10)
  %83 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %84 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %88 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @fwrite(i32 %86, i32 1, i32 %90, i32* %91)
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @fclose(i32* %93)
  %95 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %96 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @fclose(i32* %97)
  %99 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %100 = call i32 @handle_info(%struct.mailinfo* %99)
  %101 = call i32 @strbuf_release(%struct.strbuf* %10)
  %102 = load %struct.mailinfo*, %struct.mailinfo** %5, align 8
  %103 = getelementptr inbounds %struct.mailinfo, %struct.mailinfo* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %80, %52, %30, %17
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i8* @xcalloc(i32, i32) #2

declare dso_local i32 @fgetc(i32) #2

declare dso_local i32 @error(i8*, i8*) #2

declare dso_local i64 @isspace(i32) #2

declare dso_local i32 @ungetc(i32, i32) #2

declare dso_local i64 @read_one_header_line(%struct.strbuf*, i32) #2

declare dso_local i32 @check_header(%struct.mailinfo*, %struct.strbuf*, i8*, i32) #2

declare dso_local i32 @handle_body(%struct.mailinfo*, %struct.strbuf*) #2

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #2

declare dso_local i32 @handle_info(%struct.mailinfo*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

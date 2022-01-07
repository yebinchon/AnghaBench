; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_parse_req.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_parse_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**, i8**)* @parse_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_req(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @extract_method(i8* %15)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @xstrdup(i8* %20)
  store i8* %21, i8** %9, align 8
  br label %78

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strrchr(i8* %28, i8 signext 32)
  store i8* %29, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %11, align 8
  %34 = call i8* @extract_protocol(i8* %33)
  store i8* %34, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %31, %22
  %37 = call i8* @alloc_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %4, align 8
  br label %98

38:                                               ; preds = %31
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = call i8* @alloc_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %49, i8** %4, align 8
  br label %98

50:                                               ; preds = %38
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i8* @xmalloc(i32 %52)
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @strncpy(i8* %54, i8* %55, i32 %56)
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load i8*, i8** %12, align 8
  %66 = call i8* @xstrdup(i8* %65)
  %67 = call i8* @strtoupper(i8* %66)
  %68 = load i8**, i8*** %6, align 8
  store i8* %67, i8** %68, align 8
  br label %69

69:                                               ; preds = %64, %50
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i8*, i8** %13, align 8
  %74 = call i8* @xstrdup(i8* %73)
  %75 = call i8* @strtoupper(i8* %74)
  %76 = load i8**, i8*** %7, align 8
  store i8* %75, i8** %76, align 8
  br label %77

77:                                               ; preds = %72, %69
  br label %78

78:                                               ; preds = %77, %19
  %79 = load i8*, i8** %9, align 8
  %80 = call i8* @decode_url(i8* %79)
  store i8* %80, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  store i8* %83, i8** %4, align 8
  br label %98

84:                                               ; preds = %78
  %85 = load i8*, i8** %10, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i8*, i8** %9, align 8
  store i8* %92, i8** %4, align 8
  br label %98

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i8*, i8** %10, align 8
  store i8* %97, i8** %4, align 8
  br label %98

98:                                               ; preds = %94, %89, %82, %48, %36
  %99 = load i8*, i8** %4, align 8
  ret i8* %99
}

declare dso_local i8* @extract_method(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @extract_protocol(i8*) #1

declare dso_local i8* @alloc_string(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strtoupper(i8*) #1

declare dso_local i8* @decode_url(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

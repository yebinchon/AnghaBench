; ModuleID = '/home/carl/AnghaBench/http-parser/contrib/extr_url_parser.c_main.c'
source_filename = "/home/carl/AnghaBench/http-parser/contrib/extr_url_parser.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_parser_url = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Syntax : %s connect|get url\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Parsing %s, connect %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Parse error : %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Parse ok, result : \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.http_parser_url, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i32 1, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  store i32 %28, i32* %8, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %31, i32 %32)
  %34 = call i32 @http_parser_url_init(%struct.http_parser_url* %6)
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @http_parser_parse_url(i8* %37, i32 %38, i32 %39, %struct.http_parser_url* %6)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %17
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %53

47:                                               ; preds = %17
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @dump_url(i8* %51, %struct.http_parser_url* %6)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %43, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @http_parser_url_init(%struct.http_parser_url*) #1

declare dso_local i32 @http_parser_parse_url(i8*, i32, i32, %struct.http_parser_url*) #1

declare dso_local i32 @dump_url(i8*, %struct.http_parser_url*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

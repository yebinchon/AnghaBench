; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_dgfirmware.c_read_img.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_dgfirmware.c_read_img.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@app_name = common dso_local global i8* null, align 8
@SEEK_END = common dso_local global i32 0, align 4
@IMG_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: image file has wrong size\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: can't read image file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_img(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** @app_name, align 8
  %12 = call i32 @perror(i8* %11)
  %13 = call i32 @exit(i32 -1) #3
  unreachable

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @SEEK_END, align 4
  %17 = call i32 @fseek(i32* %15, i32 0, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @ftell(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IMG_SIZE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** @app_name, align 8
  %26 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @fclose(i32* %27)
  %29 = call i32 @exit(i32 -1) #3
  unreachable

30:                                               ; preds = %14
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @rewind(i32* %31)
  %33 = load i32, i32* @IMG_SIZE, align 4
  %34 = call i8* @malloc(i32 %33)
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i8*, i8** @app_name, align 8
  %39 = call i32 @perror(i8* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @fclose(i32* %40)
  %42 = call i32 @exit(i32 -1) #3
  unreachable

43:                                               ; preds = %30
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @IMG_SIZE, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @fread(i8* %44, i32 1, i32 %45, i32* %46)
  %48 = load i32, i32* @IMG_SIZE, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** @app_name, align 8
  %53 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @fclose(i32* %54)
  %56 = call i32 @exit(i32 -1) #3
  unreachable

57:                                               ; preds = %43
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @fclose(i32* %58)
  %60 = load i8*, i8** %5, align 8
  ret i8* %60
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

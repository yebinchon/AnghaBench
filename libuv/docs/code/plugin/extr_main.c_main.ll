; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/plugin/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/plugin/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Usage: %s [plugin1] [plugin2] ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Loading %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"dlsym error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32 (...)*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 0, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = call i64 @malloc(i32 4)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %6, align 8
  br label %19

19:                                               ; preds = %54, %49, %39, %16
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @uv_dlopen(i8* %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %23
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i8* @uv_dlerror(i32* %41)
  %43 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %19

44:                                               ; preds = %23
  %45 = load i32*, i32** %6, align 8
  %46 = bitcast i32 (...)** %7 to i8**
  %47 = call i64 @uv_dlsym(i32* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @stderr, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i8* @uv_dlerror(i32* %51)
  %53 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  br label %19

54:                                               ; preds = %44
  %55 = load i32 (...)*, i32 (...)** %7, align 8
  %56 = call i32 (...) %55()
  br label %19

57:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %10
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @uv_dlopen(i8*, i32*) #1

declare dso_local i8* @uv_dlerror(i32*) #1

declare dso_local i64 @uv_dlsym(i32*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

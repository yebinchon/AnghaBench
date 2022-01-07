; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-port/default/extr_default-module.c_jerry_port_normalize_path.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-port/default/extr_default-module.c_jerry_port_normalize_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MAX_JERRY_PATH_SIZE = common dso_local global i32 0, align 4
@_MAX_DIR = common dso_local global i32 0, align 4
@_MAX_DRIVE = common dso_local global i32 0, align 4
@_MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @jerry_port_normalize_path(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = call i64 @malloc(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %10, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = call i64 @malloc(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i8* @dirname(i8* %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @strncpy(i8* %23, i8* %24, i64 256)
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 (i8*, ...) @strncat(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 (i8*, ...) @strncat(i8* %28, i8* %29, i32 256)
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i8* @realpath(i8* %31, i8* %32)
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %4
  %39 = load i8*, i8** %13, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i8* @strnlen(i8* %39, i64 %40)
  %42 = ptrtoint i8* %41 to i64
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @strncpy(i8* %47, i8* %48, i64 %49)
  %51 = load i64, i64* %14, align 8
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %46, %38
  br label %53

53:                                               ; preds = %52, %4
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i64, i64* %9, align 8
  ret i64 %56
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @strncat(i8*, ...) #1

declare dso_local i8* @realpath(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strnlen(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

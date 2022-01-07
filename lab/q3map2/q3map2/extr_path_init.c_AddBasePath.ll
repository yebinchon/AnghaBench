; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_path_init.c_AddBasePath.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_path_init.c_AddBasePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numBasePaths = common dso_local global i64 0, align 8
@MAX_BASE_PATHS = common dso_local global i64 0, align 8
@basePaths = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddBasePath(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = load i64, i64* @numBasePaths, align 8
  %13 = load i64, i64* @MAX_BASE_PATHS, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %5, %1
  br label %37

16:                                               ; preds = %11
  %17 = load i8*, i8** %2, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add nsw i64 %18, 1
  %20 = call i32 @safe_malloc(i64 %19)
  %21 = load i32*, i32** @basePaths, align 8
  %22 = load i64, i64* @numBasePaths, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 %20, i32* %23, align 4
  %24 = load i32*, i32** @basePaths, align 8
  %25 = load i64, i64* @numBasePaths, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %2, align 8
  %29 = call i32 @strcpy(i32 %27, i8* %28)
  %30 = load i32*, i32** @basePaths, align 8
  %31 = load i64, i64* @numBasePaths, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CleanPath(i32 %33)
  %35 = load i64, i64* @numBasePaths, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* @numBasePaths, align 8
  br label %37

37:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @safe_malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @CleanPath(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

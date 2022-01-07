; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_indexer.c_crc_object.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_indexer.c_crc_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Z_NULL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*, i32, i32)* @crc_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc_object(i64* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %14, align 8
  %15 = load i8*, i8** @Z_NULL, align 8
  %16 = call i64 @crc32(i64 0, i8* %15, i32 0)
  store i64 %16, i64* %11, align 8
  br label %17

17:                                               ; preds = %29, %4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @git_mwindow_open(i32* %21, i32** %14, i32 %22, i64 %24, i32* %12)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %48

29:                                               ; preds = %20
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @min(i32 %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i64, i64* %11, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i64 @crc32(i64 %33, i8* %34, i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sub i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = call i32 @git_mwindow_close(i32** %14)
  br label %17

44:                                               ; preds = %17
  %45 = load i64, i64* %11, align 8
  %46 = call i64 @htonl(i64 %45)
  %47 = load i64*, i64** %6, align 8
  store i64 %46, i64* %47, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %28
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i64 @crc32(i64, i8*, i32) #1

declare dso_local i8* @git_mwindow_open(i32*, i32**, i32, i64, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @git_mwindow_close(i32**) #1

declare dso_local i64 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

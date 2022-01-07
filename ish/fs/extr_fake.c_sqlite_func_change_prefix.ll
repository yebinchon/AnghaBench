; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_sqlite_func_change_prefix.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_sqlite_func_change_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @sqlite_func_change_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite_func_change_prefix(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 3
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32**, i32*** %6, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i8* @sqlite3_value_blob(i32* %20)
  store i8* %21, i8** %7, align 8
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @sqlite3_value_bytes(i32* %24)
  store i64 %25, i64* %8, align 8
  %26 = load i32**, i32*** %6, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @sqlite3_value_int64(i32* %28)
  store i64 %29, i64* %9, align 8
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i8* @sqlite3_value_blob(i32* %32)
  store i8* %33, i8** %10, align 8
  %34 = load i32**, i32*** %6, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @sqlite3_value_bytes(i32* %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %38, %39
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %40, %41
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i8* @sqlite3_malloc(i64 %43)
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @memcpy(i8* %45, i8* %46, i64 %47)
  %49 = load i8*, i8** %13, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr i8, i8* %52, i64 %53
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %55, %56
  %58 = call i32 @memcpy(i8* %51, i8* %54, i64 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* @sqlite3_free, align 4
  %63 = call i32 @sqlite3_result_blob(i32* %59, i8* %60, i64 %61, i32 %62)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3_value_blob(i32*) #1

declare dso_local i64 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

declare dso_local i8* @sqlite3_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

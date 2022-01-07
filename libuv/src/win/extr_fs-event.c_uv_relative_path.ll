; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs-event.c_uv_relative_path.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs-event.c_uv_relative_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"uv__malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @uv_relative_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_relative_path(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @wcslen(i8* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @wcslen(i8* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @_wcsnicmp(i8* %14, i8* %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %9, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %9, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 92
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %32, %24, %3
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = sub i64 %36, %37
  %39 = sub i64 %38, 1
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  %42 = mul i64 %41, 1
  %43 = call i8* @uv__malloc(i64 %42)
  %44 = load i8**, i8*** %6, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i8**, i8*** %6, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %50 = call i32 @uv_fatal_error(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %35
  %52 = load i8**, i8*** %6, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @wcsncpy(i8* %53, i8* %57, i64 %58)
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 0, i8* %63, align 1
  ret void
}

declare dso_local i64 @wcslen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_wcsnicmp(i8*, i8*, i64) #1

declare dso_local i8* @uv__malloc(i64) #1

declare dso_local i32 @uv_fatal_error(i32, i8*) #1

declare dso_local i32 @wcsncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

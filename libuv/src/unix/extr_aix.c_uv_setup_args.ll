; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_setup_args.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_setup_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@process_argv = common dso_local global i8** null, align 8
@process_argc = common dso_local global i32 0, align 4
@args_mem = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @uv_setup_args(i32 %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  store i8** %13, i8*** %3, align 8
  br label %94

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  store i8** %15, i8*** @process_argv, align 8
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* @process_argc, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %32, %14
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i8**, i8*** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %17

35:                                               ; preds = %17
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i8** @uv__malloc(i64 %42)
  store i8** %43, i8*** %6, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = icmp eq i8** %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i8**, i8*** %5, align 8
  store i8** %47, i8*** %3, align 8
  br label %94

48:                                               ; preds = %35
  %49 = load i8**, i8*** %6, align 8
  store i8** %49, i8*** @args_mem, align 8
  %50 = load i8**, i8*** %6, align 8
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  %55 = bitcast i8** %54 to i8*
  store i8* %55, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %85, %48
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %56
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %7, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @memcpy(i8* %69, i8* %74, i64 %75)
  %77 = load i8*, i8** %8, align 8
  %78 = load i8**, i8*** %6, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %77, i8** %81, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 %82
  store i8* %84, i8** %8, align 8
  br label %85

85:                                               ; preds = %60
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %56

88:                                               ; preds = %56
  %89 = load i8**, i8*** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  store i8* null, i8** %92, align 8
  %93 = load i8**, i8*** %6, align 8
  store i8** %93, i8*** %3, align 8
  br label %94

94:                                               ; preds = %88, %46, %12
  %95 = load i8**, i8*** %3, align 8
  ret i8** %95
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8** @uv__malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

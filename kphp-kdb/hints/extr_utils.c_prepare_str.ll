; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_utils.c_prepare_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_utils.c_prepare_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_NAME_SIZE = common dso_local global i32 0, align 4
@prep_ibuf = common dso_local global i32 0, align 4
@prep_buf = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @prepare_str(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = load i32, i32* @MAX_NAME_SIZE, align 4
  %10 = sdiv i32 %9, 4
  %11 = icmp sge i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %68

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @prep_ibuf, align 4
  %16 = call i32 @string_to_utf8(i8* %14, i32 %15)
  %17 = load i32, i32* @prep_ibuf, align 4
  %18 = call i32* @prepare_str_UTF8(i32 %17)
  store i32* %18, i32** %4, align 8
  %19 = load i8*, i8** @prep_buf, align 8
  store i8* %19, i8** %5, align 8
  br label %20

20:                                               ; preds = %24, %13
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %4, align 8
  %27 = load i32, i32* %25, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @put_char_utf8(i32 %27, i8* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %5, align 8
  br label %20

33:                                               ; preds = %20
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  store i8 0, i8* %34, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** @prep_buf, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = load i32, i32* @MAX_NAME_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** @prep_buf, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call i8* @dl_malloc(i32 %51)
  store i8* %52, i8** %6, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %33
  %56 = load i8*, i8** %6, align 8
  store i8* %56, i8** %2, align 8
  br label %68

57:                                               ; preds = %33
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** @prep_buf, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** @prep_buf, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(i8* %58, i8* %59, i32 %65)
  %67 = load i8*, i8** %6, align 8
  store i8* %67, i8** %2, align 8
  br label %68

68:                                               ; preds = %57, %55, %12
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @string_to_utf8(i8*, i32) #1

declare dso_local i32* @prepare_str_UTF8(i32) #1

declare dso_local i32 @put_char_utf8(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @dl_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

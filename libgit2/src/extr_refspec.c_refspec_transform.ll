; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refspec.c_refspec_transform.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refspec.c_refspec_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*)* @refspec_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refspec_transform(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @git_buf_sanitize(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @git_buf_clear(i32* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 42)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 42)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br label %26

26:                                               ; preds = %23, %4
  %27 = phi i1 [ false, %4 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  store i64 %34, i64* %12, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = call i32 @git_buf_put(i32* %35, i8* %36, i64 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = call i64 @strlen(i8* %45)
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i64 @strlen(i8* %48)
  %50 = sub i64 %46, %49
  store i64 %50, i64* %11, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @git_buf_put(i32* %51, i8* %54, i64 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i32 @git_buf_puts(i32* %57, i8* %59)
  ret i32 %60
}

declare dso_local i32 @git_buf_sanitize(i32*) #1

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_buf_put(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @git_buf_puts(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

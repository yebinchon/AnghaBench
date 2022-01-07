; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_commit.c_format_header_field.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_commit.c_format_header_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @format_header_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_header_field(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br label %16

16:                                               ; preds = %13, %10, %3
  %17 = phi i1 [ false, %10 ], [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @git_buf_puts(i32* %20, i8* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @git_buf_putc(i32* %23, i8 signext 32)
  br label %25

25:                                               ; preds = %29, %16
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 10)
  store i8* %27, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @git_buf_put(i32* %30, i8* %31, i32 %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @git_buf_puts(i32* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %6, align 8
  br label %25

43:                                               ; preds = %25
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @git_buf_puts(i32* %44, i8* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @git_buf_putc(i32* %47, i8 signext 10)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_buf_puts(i32*, i8*) #1

declare dso_local i32 @git_buf_putc(i32*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @git_buf_put(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_config_file.c_escape_value.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_config_file.c_escape_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@git_config_escaped = common dso_local global i8* null, align 8
@git_config_escapes = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @escape_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @escape_value(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @assert(i8* %7)
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i8* @git__calloc(i32 1, i32 1)
  store i8* %14, i8** %2, align 8
  br label %56

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @git_buf_init(i32* %4, i64 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i8* null, i8** %2, align 8
  br label %56

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %47, %20
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %21
  %27 = load i8*, i8** @git_config_escaped, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i8* @strchr(i8* %27, i8 signext %29)
  store i8* %30, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = call i32 @git_buf_putc(i32* %4, i8 signext 92)
  %34 = load i8*, i8** @git_config_escapes, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** @git_config_escaped, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @git_buf_putc(i32* %4, i8 signext %41)
  br label %47

43:                                               ; preds = %26
  %44 = load i8*, i8** %3, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @git_buf_putc(i32* %4, i8 signext %45)
  br label %47

47:                                               ; preds = %43, %32
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %3, align 8
  br label %21

50:                                               ; preds = %21
  %51 = call i64 @git_buf_oom(i32* %4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i8* null, i8** %2, align 8
  br label %56

54:                                               ; preds = %50
  %55 = call i8* @git_buf_detach(i32* %4)
  store i8* %55, i8** %2, align 8
  br label %56

56:                                               ; preds = %54, %53, %19, %13
  %57 = load i8*, i8** %2, align 8
  ret i8* %57
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @git__calloc(i32, i32) #1

declare dso_local i64 @git_buf_init(i32*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @git_buf_putc(i32*, i8 signext) #1

declare dso_local i64 @git_buf_oom(i32*) #1

declare dso_local i8* @git_buf_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

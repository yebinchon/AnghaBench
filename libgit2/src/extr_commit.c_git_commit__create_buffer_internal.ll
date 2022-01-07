; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit__create_buffer_internal.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit__create_buffer_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"tree \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"parent \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"author \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"committer \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"encoding %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*, i8*, i32*, i32*)* @git_commit__create_buffer_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_commit__create_buffer_internal(i32* %0, i32* %1, i32* %2, i8* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i64 0, i64* %16, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load i32*, i32** %14, align 8
  %22 = icmp ne i32* %21, null
  br label %23

23:                                               ; preds = %20, %7
  %24 = phi i1 [ false, %7 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = call i32 @git_oid__writebuf(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %28)
  store i64 0, i64* %16, align 8
  br label %30

30:                                               ; preds = %44, %23
  %31 = load i64, i64* %16, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @git_array_size(i32 %33)
  %35 = icmp ult i64 %31, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %16, align 8
  %40 = call i32* @git_array_get(i32 %38, i64 %39)
  store i32* %40, i32** %17, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @git_oid__writebuf(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i64, i64* %16, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %16, align 8
  br label %30

47:                                               ; preds = %30
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @git_signature__writebuf(i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %49)
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @git_signature__writebuf(i32* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %52)
  %54 = load i8*, i8** %12, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32*, i32** %9, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @git_buf_printf(i32* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %47
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @git_buf_putc(i32* %61, i8 signext 10)
  %63 = load i32*, i32** %9, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = call i64 @git_buf_puts(i32* %63, i8* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %69

68:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %72

69:                                               ; preds = %67
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @git_buf_dispose(i32* %70)
  store i32 -1, i32* %8, align 4
  br label %72

72:                                               ; preds = %69, %68
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_oid__writebuf(i32*, i8*, i32*) #1

declare dso_local i64 @git_array_size(i32) #1

declare dso_local i32* @git_array_get(i32, i64) #1

declare dso_local i32 @git_signature__writebuf(i32*, i8*, i32*) #1

declare dso_local i32 @git_buf_printf(i32*, i8*, i8*) #1

declare dso_local i32 @git_buf_putc(i32*, i8 signext) #1

declare dso_local i64 @git_buf_puts(i32*, i8*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

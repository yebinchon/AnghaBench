; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_pipe_fixed_length.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_pipe_fixed_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Reading request failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64)* @pipe_fixed_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_fixed_length(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [8192 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %8, align 8
  br label %12

12:                                               ; preds = %30, %3
  %13 = load i64, i64* %8, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %12
  %16 = load i64, i64* %8, align 8
  %17 = icmp ugt i64 %16, 8192
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %21

19:                                               ; preds = %15
  %20 = load i64, i64* %8, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i64 [ 8192, %18 ], [ %20, %19 ]
  store i64 %22, i64* %9, align 8
  %23 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @xread(i32 0, i8* %23, i64 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @die_errno(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %33 = load i64, i64* %10, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @write_to_child(i32 %31, i8* %32, i64 %33, i8* %34)
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %8, align 8
  br label %12

39:                                               ; preds = %12
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @close(i32 %40)
  ret void
}

declare dso_local i64 @xread(i32, i8*, i64) #1

declare dso_local i32 @die_errno(i8*) #1

declare dso_local i32 @write_to_child(i32, i8*, i64, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

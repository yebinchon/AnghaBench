; ModuleID = '/home/carl/AnghaBench/jq/src/extr_parser.c_gen_binop.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_parser.c_gen_binop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"_plus\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_minus\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"_multiply\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"_divide\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_mod\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"_equal\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"_notequal\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"_less\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"_greater\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"_lesseq\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"_greatereq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @gen_binop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_binop(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @constant_fold(i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @block_is_noop(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %42

19:                                               ; preds = %3
  store i8* null, i8** %9, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %32 [
    i32 43, label %21
    i32 45, label %22
    i32 42, label %23
    i32 47, label %24
    i32 37, label %25
    i32 131, label %26
    i32 128, label %27
    i32 60, label %28
    i32 62, label %29
    i32 129, label %30
    i32 130, label %31
  ]

21:                                               ; preds = %19
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %32

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %32

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %32

24:                                               ; preds = %19
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %32

25:                                               ; preds = %19
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %32

26:                                               ; preds = %19
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %32

27:                                               ; preds = %19
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %32

28:                                               ; preds = %19
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %32

29:                                               ; preds = %19
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %32

30:                                               ; preds = %19
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %32

31:                                               ; preds = %19
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %32

32:                                               ; preds = %19, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @assert(i8* %33)
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @gen_lambda(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @gen_lambda(i32 %38)
  %40 = call i32 @BLOCK(i32 %37, i32 %39)
  %41 = call i32 @gen_call(i8* %35, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %32, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @constant_fold(i32, i32, i32) #1

declare dso_local i32 @block_is_noop(i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @gen_call(i8*, i32) #1

declare dso_local i32 @BLOCK(i32, i32) #1

declare dso_local i32 @gen_lambda(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

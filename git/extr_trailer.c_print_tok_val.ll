; ModuleID = '/home/carl/AnghaBench/git/extr_trailer.c_print_tok_val.c'
source_filename = "/home/carl/AnghaBench/git/extr_trailer.c_print_tok_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@separators = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s%c %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @print_tok_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_tok_val(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %38

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call signext i8 @last_non_space_char(i8* %15)
  store i8 %16, i8* %7, align 1
  %17 = load i8, i8* %7, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %38

20:                                               ; preds = %14
  %21 = load i8**, i8*** @separators, align 8
  %22 = load i8, i8* %7, align 1
  %23 = call i64 @strchr(i8** %21, i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32*, i32** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  br label %38

30:                                               ; preds = %20
  %31 = load i32*, i32** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8**, i8*** @separators, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %32, i8* %35, i8* %36)
  br label %38

38:                                               ; preds = %10, %19, %30, %25
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local signext i8 @last_non_space_char(i8*) #1

declare dso_local i64 @strchr(i8**, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

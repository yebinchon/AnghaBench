; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_token_is_variable_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_token_is_variable_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_token = type { i8* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tl_token_is_variable_type: %s\0A\00", align 1
@reserved_words_polymorhic = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tl_token*)* @tl_token_is_variable_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tl_token_is_variable_type(%struct.tl_token* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_token*, align 8
  %4 = alloca i32, align 4
  store %struct.tl_token* %0, %struct.tl_token** %3, align 8
  %5 = load i32, i32* @verbosity, align 4
  %6 = icmp sge i32 %5, 4
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* @stderr, align 4
  %9 = load %struct.tl_token*, %struct.tl_token** %3, align 8
  %10 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %7, %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %36, %13
  %15 = load i64*, i64** @reserved_words_polymorhic, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %14
  %22 = load i64*, i64** @reserved_words_polymorhic, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.tl_token*, %struct.tl_token** %3, align 8
  %28 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i64 %26, i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %40

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %14

39:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

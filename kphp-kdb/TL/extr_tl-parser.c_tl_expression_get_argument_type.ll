; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_get_argument_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_get_argument_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_expression = type { %struct.tl_token* }
%struct.tl_token = type { i8*, %struct.tl_token* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tl_expression_get_argument_type(%struct.tl_expression* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tl_expression*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tl_token*, align 8
  %7 = alloca i32, align 4
  store %struct.tl_expression* %0, %struct.tl_expression** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.tl_expression*, %struct.tl_expression** %4, align 8
  %9 = icmp eq %struct.tl_expression* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i8* null, i8** %3, align 8
  br label %61

14:                                               ; preds = %10
  %15 = load %struct.tl_expression*, %struct.tl_expression** %4, align 8
  %16 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %15, i32 0, i32 0
  %17 = load %struct.tl_token*, %struct.tl_token** %16, align 8
  store %struct.tl_token* %17, %struct.tl_token** %6, align 8
  %18 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  %19 = icmp eq %struct.tl_token* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %61

21:                                               ; preds = %14
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  %25 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %24, i32 0, i32 1
  %26 = load %struct.tl_token*, %struct.tl_token** %25, align 8
  store %struct.tl_token* %26, %struct.tl_token** %6, align 8
  br label %27

27:                                               ; preds = %56, %21
  %28 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  %29 = icmp ne %struct.tl_token* %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  %31 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  %32 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @strncmp(i8* %33, i8* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %30
  %39 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  %40 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 58
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  %50 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8* %55, i8** %3, align 8
  br label %61

56:                                               ; preds = %38, %30
  %57 = load %struct.tl_token*, %struct.tl_token** %6, align 8
  %58 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %57, i32 0, i32 1
  %59 = load %struct.tl_token*, %struct.tl_token** %58, align 8
  store %struct.tl_token* %59, %struct.tl_token** %6, align 8
  br label %27

60:                                               ; preds = %27
  store i8* null, i8** %3, align 8
  br label %61

61:                                               ; preds = %60, %48, %20, %13
  %62 = load i8*, i8** %3, align 8
  ret i8* %62
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

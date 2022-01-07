; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_parse_signed_int_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_parse_signed_int_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R = common dso_local global i64* null, align 8
@MAX_USERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_signed_int_list(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %9, align 8
  br label %16

16:                                               ; preds = %52, %2
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %8, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 44
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %56

30:                                               ; preds = %23, %20
  %31 = load i8*, i8** %8, align 8
  %32 = call i64 @strtol(i8* %31, i8** %10, i32 10)
  store i64 %32, i64* %7, align 8
  %33 = load i64*, i64** @R, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  store i64 %32, i64* %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MAX_USERS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %7, align 8
  %47 = icmp sle i64 %46, -2147483647
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %7, align 8
  %50 = icmp sge i64 %49, 2147483647
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %45, %41, %30
  store i32 -1, i32* %3, align 4
  br label %56

52:                                               ; preds = %48
  %53 = load i8*, i8** %10, align 8
  store i8* %53, i8** %8, align 8
  br label %16

54:                                               ; preds = %16
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %51, %29
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

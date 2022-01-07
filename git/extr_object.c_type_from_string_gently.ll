; ModuleID = '/home/carl/AnghaBench/git/extr_object.c_type_from_string_gently.c'
source_filename = "/home/carl/AnghaBench/git/extr_object.c_type_from_string_gently.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@object_type_strings = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [25 x i8] c"invalid object type \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @type_from_string_gently(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = icmp ult i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %11, %3
  store i32 1, i32* %8, align 4
  br label %15

15:                                               ; preds = %44, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i8**, i8*** @object_type_strings, align 8
  %18 = call i32 @ARRAY_SIZE(i8** %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = load i8**, i8*** @object_type_strings, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @strncmp(i8* %21, i8* %26, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %20
  %31 = load i8**, i8*** @object_type_strings, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %30, %20
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %15

47:                                               ; preds = %15
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 -1, i32* %4, align 4
  br label %55

51:                                               ; preds = %47
  %52 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @die(i32 %52, i8* %53)
  br label %55

55:                                               ; preds = %51, %50, %41
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

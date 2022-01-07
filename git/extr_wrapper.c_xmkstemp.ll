; ModuleID = '/home/carl/AnghaBench/git/extr_wrapper.c_xmkstemp.c'
source_filename = "/home/carl/AnghaBench/git/extr_wrapper.c_xmkstemp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to create temporary file '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmkstemp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = trunc i64 %9 to i32
  %14 = call i32 @strlcpy(i8* %11, i8* %12, i32 %13)
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @mkstemp(i8* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = call i64 @strlen(i8* %11)
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i8* %11, i8** %2, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i8*, i8** %2, align 8
  %28 = call i8* @absolute_path(i8* %27)
  store i8* %28, i8** %7, align 8
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* @errno, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @die_errno(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %26, %1
  %33 = load i32, i32* %3, align 4
  %34 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %34)
  ret i32 %33
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @absolute_path(i8*) #2

declare dso_local i32 @die_errno(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

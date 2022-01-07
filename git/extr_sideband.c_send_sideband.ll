; ModuleID = '/home/carl/AnghaBench/git/extr_sideband.c_send_sideband.c'
source_filename = "/home/carl/AnghaBench/git/extr_sideband.c_send_sideband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_sideband(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [5 x i8], align 1
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %11, align 8
  br label %15

15:                                               ; preds = %49, %5
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sub nsw i32 %20, 5
  %22 = load i32, i32* %12, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = sub nsw i32 %25, 5
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp sle i32 0, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %32 = load i32, i32* %12, align 4
  %33 = add i32 %32, 5
  %34 = call i32 @xsnprintf(i8* %31, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 4
  store i8 %36, i8* %37, align 1
  %38 = load i32, i32* %6, align 4
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %40 = call i32 @write_or_die(i32 %38, i8* %39, i32 5)
  br label %49

41:                                               ; preds = %27
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %43 = load i32, i32* %12, align 4
  %44 = add i32 %43, 4
  %45 = call i32 @xsnprintf(i8* %42, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %48 = call i32 @write_or_die(i32 %46, i8* %47, i32 4)
  br label %49

49:                                               ; preds = %41, %30
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @write_or_die(i32 %50, i8* %51, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %15

61:                                               ; preds = %15
  ret void
}

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @write_or_die(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

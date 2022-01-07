; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_mkcpustr.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_mkcpustr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"static const char x86_cap_strs[] =\0A\00", align 1
@NCAPINTS = common dso_local global i32 0, align 4
@x86_cap_flags = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\09\22\\x%02x\\x%02x\22\22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"#if REQUIRED_MASK%d & (1 << %d)\0A\09\22\\x%02x\\x%02x\22\22%s\\0\22\0A#endif\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\09;\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %55, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @NCAPINTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %58

10:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %51, %10
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  %15 = load i8**, i8*** @x86_cap_flags, align 8
  %16 = load i32, i32* %2, align 4
  %17 = mul nsw i32 %16, 32
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %15, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %4, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @NCAPINTS, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %14
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 31
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %36, i8* %37)
  br label %50

39:                                               ; preds = %27, %14
  %40 = load i8*, i8** %4, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32 %44, i32 %45, i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %42, %39
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %11

54:                                               ; preds = %11
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %6

58:                                               ; preds = %6
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

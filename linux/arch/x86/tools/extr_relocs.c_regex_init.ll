; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_regex_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/tools/extr_relocs.c_regex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sym_regex_realmode = common dso_local global i32* null, align 8
@sym_regex = common dso_local global i32* null, align 8
@sym_regex_kernel = common dso_local global i32* null, align 8
@S_NSYMTYPES = common dso_local global i32 0, align 4
@sym_regex_c = common dso_local global i32* null, align 8
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NOSUB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @regex_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regex_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32*, i32** @sym_regex_realmode, align 8
  store i32* %9, i32** @sym_regex, align 8
  br label %12

10:                                               ; preds = %1
  %11 = load i32*, i32** @sym_regex_kernel, align 8
  store i32* %11, i32** @sym_regex, align 8
  br label %12

12:                                               ; preds = %10, %8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %52, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @S_NSYMTYPES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load i32*, i32** @sym_regex, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %52

25:                                               ; preds = %17
  %26 = load i32*, i32** @sym_regex_c, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32*, i32** @sym_regex, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @REG_EXTENDED, align 4
  %36 = load i32, i32* @REG_NOSUB, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @regcomp(i32* %29, i32 %34, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %25
  %42 = load i32, i32* %4, align 4
  %43 = load i32*, i32** @sym_regex_c, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %48 = call i32 @regerror(i32 %42, i32* %46, i8* %47, i32 128)
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %50 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %41, %25
  br label %52

52:                                               ; preds = %51, %24
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %13

55:                                               ; preds = %13
  ret void
}

declare dso_local i32 @regcomp(i32*, i32, i32) #1

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @die(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

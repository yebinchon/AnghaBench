; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_opt_break_rewrites.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_opt_break_rewrites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s expects <n>/<m> form\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @diff_opt_break_rewrites to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_opt_break_rewrites(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.option*, %struct.option** %5, align 8
  %12 = getelementptr inbounds %struct.option, %struct.option* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @BUG_ON_OPT_NEG(i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %19

19:                                               ; preds = %18, %3
  %20 = call i32 @parse_rename_score(i8** %6)
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %42

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 47
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.option*, %struct.option** %5, align 8
  %34 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @error(i32 %32, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %59

37:                                               ; preds = %26
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  %40 = call i32 @parse_rename_score(i8** %6)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.option*, %struct.option** %5, align 8
  %50 = getelementptr inbounds %struct.option, %struct.option* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @error(i32 %48, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %59

53:                                               ; preds = %42
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 %55, 16
  %57 = or i32 %54, %56
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %47, %31
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @parse_rename_score(i8**) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

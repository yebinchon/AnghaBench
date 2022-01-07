; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_is_rfc2047_special.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_is_rfc2047_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RFC2047_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32)* @is_rfc2047_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_rfc2047_special(i8 signext %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32 %1, i32* %5, align 4
  %6 = load i8, i8* %4, align 1
  %7 = call i64 @non_ascii(i8 signext %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i8, i8* %4, align 1
  %11 = call i32 @isprint(i8 signext %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %2
  store i32 1, i32* %3, align 4
  br label %64

14:                                               ; preds = %9
  %15 = load i8, i8* %4, align 1
  %16 = call i64 @isspace(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = load i8, i8* %4, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 61
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i8, i8* %4, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 63
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i8, i8* %4, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 95
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22, %18, %14
  store i32 1, i32* %3, align 4
  br label %64

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @RFC2047_ADDRESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %64

36:                                               ; preds = %31
  %37 = load i8, i8* %4, align 1
  %38 = call i64 @isalnum(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %36
  %41 = load i8, i8* %4, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 33
  br i1 %43, label %60, label %44

44:                                               ; preds = %40
  %45 = load i8, i8* %4, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 42
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load i8, i8* %4, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 43
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i8, i8* %4, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 45
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8, i8* %4, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 47
  br label %60

60:                                               ; preds = %56, %52, %48, %44, %40, %36
  %61 = phi i1 [ true, %52 ], [ true, %48 ], [ true, %44 ], [ true, %40 ], [ true, %36 ], [ %59, %56 ]
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %35, %30, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @non_ascii(i8 signext) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isalnum(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

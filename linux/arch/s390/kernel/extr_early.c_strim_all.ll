; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_early.c_strim_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_early.c_strim_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @strim_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strim_all(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @strim(i8* %4)
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = call i32 @memmove(i8* %10, i8* %11, i64 %13)
  br label %15

15:                                               ; preds = %9, %1
  br label %16

16:                                               ; preds = %41, %26, %15
  %17 = load i8*, i8** %2, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %2, align 8
  %23 = load i8, i8* %21, align 1
  %24 = call i64 @isspace(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %16

27:                                               ; preds = %20
  %28 = load i8*, i8** %2, align 8
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isspace(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i8*, i8** %2, align 8
  %34 = call i8* @skip_spaces(i8* %33)
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = add nsw i64 %38, 1
  %40 = call i32 @memmove(i8* %35, i8* %36, i64 %39)
  br label %41

41:                                               ; preds = %32, %27
  br label %16

42:                                               ; preds = %16
  ret void
}

declare dso_local i8* @strim(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @skip_spaces(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

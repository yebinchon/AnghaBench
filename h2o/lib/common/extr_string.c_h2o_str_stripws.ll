; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_string.c_h2o_str_stripws.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_string.c_h2o_str_stripws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_str_stripws(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  store i8* %8, i8** %5, align 8
  br label %9

9:                                                ; preds = %19, %2
  %10 = load i8*, i8** %3, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i32 @is_ws(i8 signext %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %3, align 8
  br label %9

22:                                               ; preds = %18, %9
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 -1
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @is_ws(i8 signext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %37

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %36, i8** %5, align 8
  br label %23

37:                                               ; preds = %33, %23
  %38 = load i8*, i8** %3, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @h2o_iovec_init(i8* %38, i32 %44)
  ret i32 %45
}

declare dso_local i32 @is_ws(i8 signext) #1

declare dso_local i32 @h2o_iovec_init(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

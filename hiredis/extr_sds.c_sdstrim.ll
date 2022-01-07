; ModuleID = '/home/carl/AnghaBench/hiredis/extr_sds.c_sdstrim.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_sds.c_sdstrim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sdstrim(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @sdslen(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  store i8* %16, i8** %6, align 8
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %29, %2
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ule i8* %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @strchr(i8* %22, i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi i1 [ false, %17 ], [ %26, %21 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %7, align 8
  br label %17

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %45, %32
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ugt i8* %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @strchr(i8* %38, i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i1 [ false, %33 ], [ %42, %37 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %8, align 8
  br label %33

48:                                               ; preds = %43
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ugt i8* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %60

53:                                               ; preds = %48
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = add nsw i64 %58, 1
  br label %60

60:                                               ; preds = %53, %52
  %61 = phi i64 [ 0, %52 ], [ %59, %53 ]
  store i64 %61, i64* %9, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** %3, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @memmove(i8* %66, i8* %67, i64 %68)
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i8*, i8** %3, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %3, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @sdssetlen(i8* %74, i64 %75)
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @sdssetlen(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

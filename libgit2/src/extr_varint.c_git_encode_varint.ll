; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_varint.c_git_encode_varint.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_varint.c_git_encode_varint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_encode_varint(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 15, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 127
  %12 = trunc i32 %11 to i8
  %13 = load i32, i32* %9, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %14
  store i8 %12, i8* %15, align 1
  br label %16

16:                                               ; preds = %20, %3
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 7
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %7, align 4
  %23 = and i32 %22, 127
  %24 = or i32 128, %23
  %25 = trunc i32 %24 to i8
  %26 = load i32, i32* %9, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %28
  store i8 %25, i8* %29, align 1
  br label %16

30:                                               ; preds = %16
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = sub i64 16, %36
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %56

40:                                               ; preds = %33
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = sub i64 16, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memcpy(i8* %41, i8* %45, i32 %49)
  br label %51

51:                                               ; preds = %40, %30
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = sub i64 16, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %39
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_varint.c_encode_varint.c'
source_filename = "/home/carl/AnghaBench/git/extr_varint.c_encode_varint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encode_varint(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 15, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 127
  %9 = trunc i32 %8 to i8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %11
  store i8 %9, i8* %12, align 1
  br label %13

13:                                               ; preds = %17, %2
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 7
  store i32 %15, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %3, align 4
  %20 = and i32 %19, 127
  %21 = or i32 128, %20
  %22 = trunc i32 %21 to i8
  %23 = load i32, i32* %6, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 %25
  store i8 %22, i8* %26, align 1
  br label %13

27:                                               ; preds = %13
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = sub i64 16, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memcpy(i8* %31, i8* %35, i32 %39)
  br label %41

41:                                               ; preds = %30, %27
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = sub i64 16, %43
  %45 = trunc i64 %44 to i32
  ret i32 %45
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

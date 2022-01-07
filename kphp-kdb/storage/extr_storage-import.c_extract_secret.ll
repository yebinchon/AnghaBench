; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_extract_secret.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-import.c_extract_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%c_%llx.%3s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%llx.%3s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*)* @extract_secret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_secret(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca [4 x i8], align 1
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i32 0, i32 4)
  %12 = load i64*, i64** %5, align 8
  store i64 0, i64* %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %15 = call i32 (i8*, i8*, ...) @sscanf(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %8, i64* %7, i8* %14)
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = shl i64 %18, 32
  %20 = load i64*, i64** %5, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i8, i8* %8, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 %22, 24
  %24 = zext i32 %23 to i64
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  %27 = or i64 %26, %24
  store i64 %27, i64* %25, align 8
  br label %41

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %31 = call i32 (i8*, i8*, ...) @sscanf(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64* %7, i8* %30)
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* %7, align 8
  %35 = shl i64 %34, 24
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  br label %40

37:                                               ; preds = %28
  %38 = call i64 (...) @make_secret()
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  store i32 1, i32* %3, align 4
  br label %63

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %17
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 2, %51
  %53 = mul nsw i32 8, %52
  %54 = shl i32 %50, %53
  %55 = zext i32 %54 to i64
  %56 = load i64*, i64** %5, align 8
  %57 = load i64, i64* %56, align 8
  %58 = or i64 %57, %55
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %42

62:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %37
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i64 @make_secret(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_seama.c_write_meta_data.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_seama.c_write_meta_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"SEAMA META data : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8**, i64)* @write_meta_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @write_meta_data(i32* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %47, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %11
  %16 = load i8**, i8*** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @verbose(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i8**, i8*** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i8*, i8** %21, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = add nsw i32 %29, 1
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @fwrite(i8* %24, i32 1, i32 %30, i32* %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %33, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %15
  store i64 0, i64* %4, align 8
  br label %67

43:                                               ; preds = %15
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %11

50:                                               ; preds = %11
  %51 = load i64, i64* %10, align 8
  %52 = add i64 %51, 3
  %53 = udiv i64 %52, 4
  %54 = mul i64 %53, 4
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %62, %50
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @fwrite(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 1, i32* %60)
  br label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %10, align 8
  br label %55

65:                                               ; preds = %55
  %66 = load i64, i64* %10, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %65, %42
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i32 @verbose(i8*, i8*) #1

declare dso_local i64 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

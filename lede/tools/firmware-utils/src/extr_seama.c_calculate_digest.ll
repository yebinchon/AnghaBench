; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_seama.c_calculate_digest.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_seama.c_calculate_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SEAMA_META_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32*)* @calculate_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calculate_digest(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @MAX_SEAMA_META_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %11, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %12, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  br label %23

21:                                               ; preds = %3
  %22 = mul nuw i64 4, %14
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  store i64 %24, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %25 = call i32 @MD5_Init(i32* %7)
  br label %26

26:                                               ; preds = %67, %23
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @feof(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ferror(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = icmp ugt i64 %35, 0
  br label %37

37:                                               ; preds = %34, %30, %26
  %38 = phi i1 [ false, %30 ], [ false, %26 ], [ %36, %34 ]
  br i1 %38, label %39, label %68

39:                                               ; preds = %37
  %40 = load i64, i64* %8, align 8
  %41 = mul nuw i64 4, %14
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  br label %47

45:                                               ; preds = %39
  %46 = mul nuw i64 4, %14
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i64 [ %44, %43 ], [ %46, %45 ]
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @fread(i32* %16, i32 1, i64 %49, i32* %50)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @MD5_Update(i32* %7, i32* %16, i64 %55)
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %54, %47
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %8, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %63, %60
  br label %26

68:                                               ; preds = %37
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @MD5_Final(i32* %69, i32* %7)
  %71 = load i64, i64* %9, align 8
  %72 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %72)
  ret i64 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MD5_Init(i32*) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i32 @ferror(i32*) #2

declare dso_local i64 @fread(i32*, i32, i64, i32*) #2

declare dso_local i32 @MD5_Update(i32*, i32*, i64) #2

declare dso_local i32 @MD5_Final(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

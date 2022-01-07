; ModuleID = '/home/carl/AnghaBench/libuv/src/extr_idna.c_uv__idna_toascii.c'
source_filename = "/home/carl/AnghaBench/libuv/src/extr_idna.c_uv__idna_toascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uv__idna_toascii(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %13, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %10, align 8
  br label %17

17:                                               ; preds = %57, %36, %4
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %17
  %22 = load i8*, i8** %10, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @uv__utf8_decode1(i8** %10, i8* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 46
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 12290
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 65294
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 65377
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %17

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %30
  br label %39

39:                                               ; preds = %38, %27
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @uv__idna_toascii_label(i8* %41, i8* %42, i8** %8, i8* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %5, align 8
  br label %87

50:                                               ; preds = %40
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  store i8 46, i8* %55, align 1
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i8*, i8** %10, align 8
  store i8* %58, i8** %6, align 8
  br label %17

59:                                               ; preds = %17
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ult i8* %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @uv__idna_toascii_label(i8* %64, i8* %65, i8** %8, i8* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %5, align 8
  br label %87

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %59
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = icmp ult i8* %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  store i8 0, i8* %79, align 1
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %81, %70, %47
  %88 = load i64, i64* %5, align 8
  ret i64 %88
}

declare dso_local i32 @uv__utf8_decode1(i8**, i8*) #1

declare dso_local i32 @uv__idna_toascii_label(i8*, i8*, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/libui/common/extr_utf.c_uiprivUTF8EncodeRune.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_utf.c_uiprivUTF8EncodeRune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@badrune = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uiprivUTF8EncodeRune(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 1114111
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @badrune, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* %3, align 4
  %16 = icmp sge i32 %15, 55296
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 57344
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @badrune, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %17, %14
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 128
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 255
  store i32 %27, i32* %5, align 4
  store i64 1, i64* %9, align 8
  br label %85

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 2048
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 63
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 128
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %3, align 4
  %37 = ashr i32 %36, 6
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, 31
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, 192
  store i32 %41, i32* %5, align 4
  store i64 2, i64* %9, align 8
  br label %85

42:                                               ; preds = %28
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 65536
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 63
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, 128
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %3, align 4
  %51 = ashr i32 %50, 6
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, 63
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, 128
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %3, align 4
  %57 = ashr i32 %56, 6
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, 15
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, 224
  store i32 %61, i32* %5, align 4
  store i64 3, i64* %9, align 8
  br label %85

62:                                               ; preds = %42
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, 63
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, 128
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %3, align 4
  %68 = ashr i32 %67, 6
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = and i32 %69, 63
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, 128
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %3, align 4
  %74 = ashr i32 %73, 6
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = and i32 %75, 63
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, 128
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %3, align 4
  %80 = ashr i32 %79, 6
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, 7
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, 240
  store i32 %84, i32* %5, align 4
  store i64 4, i64* %9, align 8
  br label %85

85:                                               ; preds = %62, %45, %31, %25
  %86 = load i32, i32* %5, align 4
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  store i8 %87, i8* %89, align 1
  %90 = load i64, i64* %9, align 8
  %91 = icmp ugt i64 %90, 1
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i32, i32* %6, align 4
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  store i8 %94, i8* %96, align 1
  br label %97

97:                                               ; preds = %92, %85
  %98 = load i64, i64* %9, align 8
  %99 = icmp ugt i64 %98, 2
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  store i8 %102, i8* %104, align 1
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i64, i64* %9, align 8
  %107 = icmp ugt i64 %106, 3
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 3
  store i8 %110, i8* %112, align 1
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i64, i64* %9, align 8
  ret i64 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

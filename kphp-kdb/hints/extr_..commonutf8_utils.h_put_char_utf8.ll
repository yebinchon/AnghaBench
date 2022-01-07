; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_..commonutf8_utils.h_put_char_utf8.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_..commonutf8_utils.h_put_char_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @put_char_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_char_utf8(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp ule i32 %6, 127
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 %10, i8* %12, align 1
  store i32 1, i32* %3, align 4
  br label %90

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ule i32 %14, 2047
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = lshr i32 %17, 6
  %19 = or i32 %18, 192
  %20 = and i32 %19, 223
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 %21, i8* %23, align 1
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, 128
  %26 = and i32 %25, 191
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 %27, i8* %29, align 1
  store i32 2, i32* %3, align 4
  br label %90

30:                                               ; preds = %13
  %31 = load i32, i32* %4, align 4
  %32 = icmp ule i32 %31, 65535
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = lshr i32 %34, 12
  %36 = or i32 %35, 224
  %37 = and i32 %36, 239
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 %38, i8* %40, align 1
  %41 = load i32, i32* %4, align 4
  %42 = lshr i32 %41, 6
  %43 = or i32 %42, 128
  %44 = and i32 %43, 191
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 %45, i8* %47, align 1
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, 128
  %50 = and i32 %49, 191
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8 %51, i8* %53, align 1
  store i32 3, i32* %3, align 4
  br label %90

54:                                               ; preds = %30
  %55 = load i32, i32* %4, align 4
  %56 = icmp ule i32 %55, 2097151
  br i1 %56, label %57, label %85

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = lshr i32 %58, 18
  %60 = or i32 %59, 240
  %61 = and i32 %60, 247
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 %62, i8* %64, align 1
  %65 = load i32, i32* %4, align 4
  %66 = lshr i32 %65, 12
  %67 = or i32 %66, 128
  %68 = and i32 %67, 191
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  store i8 %69, i8* %71, align 1
  %72 = load i32, i32* %4, align 4
  %73 = lshr i32 %72, 6
  %74 = or i32 %73, 128
  %75 = and i32 %74, 191
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8 %76, i8* %78, align 1
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, 128
  %81 = and i32 %80, 191
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  store i8 %82, i8* %84, align 1
  store i32 4, i32* %3, align 4
  br label %90

85:                                               ; preds = %54
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %57, %33, %16, %8
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

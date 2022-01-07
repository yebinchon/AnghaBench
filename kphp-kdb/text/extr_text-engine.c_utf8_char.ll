; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_utf8_char.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_utf8_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @utf8_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @utf8_char(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ult i32 %6, 128
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i8*, i8** %4, align 8
  store i8 %10, i8* %11, align 1
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %13, i8** %3, align 8
  br label %91

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, 2048
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = lshr i32 %18, 6
  %20 = add i32 192, %19
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8 %21, i8* %23, align 1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 63
  %26 = add i32 128, %25
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 %27, i8* %29, align 1
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8* %31, i8** %3, align 8
  br label %91

32:                                               ; preds = %14
  %33 = load i32, i32* %5, align 4
  %34 = icmp ult i32 %33, 65536
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = lshr i32 %36, 12
  %38 = add i32 224, %37
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 %39, i8* %41, align 1
  %42 = load i32, i32* %5, align 4
  %43 = lshr i32 %42, 6
  %44 = and i32 %43, 63
  %45 = add i32 128, %44
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 %46, i8* %48, align 1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 63
  %51 = add i32 128, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8 %52, i8* %54, align 1
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 3
  store i8* %56, i8** %3, align 8
  br label %91

57:                                               ; preds = %32
  %58 = load i32, i32* %5, align 4
  %59 = icmp ult i32 %58, 2097152
  br i1 %59, label %60, label %89

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = lshr i32 %61, 18
  %63 = add i32 240, %62
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 %64, i8* %66, align 1
  %67 = load i32, i32* %5, align 4
  %68 = lshr i32 %67, 12
  %69 = and i32 %68, 63
  %70 = add i32 128, %69
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8 %71, i8* %73, align 1
  %74 = load i32, i32* %5, align 4
  %75 = lshr i32 %74, 6
  %76 = and i32 %75, 63
  %77 = add i32 128, %76
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  store i8 %78, i8* %80, align 1
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 63
  %83 = add i32 128, %82
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  store i8 %84, i8* %86, align 1
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  store i8* %88, i8** %3, align 8
  br label %91

89:                                               ; preds = %57
  %90 = load i8*, i8** %4, align 8
  store i8* %90, i8** %3, align 8
  br label %91

91:                                               ; preds = %89, %60, %35, %17, %8
  %92 = load i8*, i8** %3, align 8
  ret i8* %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

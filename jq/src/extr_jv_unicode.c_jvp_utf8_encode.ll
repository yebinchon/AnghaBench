; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_unicode.c_jvp_utf8_encode.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_unicode.c_jvp_utf8_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jvp_utf8_encode(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 1114111
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 127
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  store i8 %20, i8* %21, align 1
  br label %94

23:                                               ; preds = %11
  %24 = load i32, i32* %3, align 4
  %25 = icmp sle i32 %24, 2047
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 1984
  %29 = ashr i32 %28, 6
  %30 = add nsw i32 192, %29
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  store i8 %31, i8* %32, align 1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 63
  %36 = add nsw i32 128, %35
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  store i8 %37, i8* %38, align 1
  br label %93

40:                                               ; preds = %23
  %41 = load i32, i32* %3, align 4
  %42 = icmp sle i32 %41, 65535
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 61440
  %46 = ashr i32 %45, 12
  %47 = add nsw i32 224, %46
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %4, align 8
  store i8 %48, i8* %49, align 1
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, 4032
  %53 = ashr i32 %52, 6
  %54 = add nsw i32 128, %53
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  store i8 %55, i8* %56, align 1
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, 63
  %60 = add nsw i32 128, %59
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  store i8 %61, i8* %62, align 1
  br label %92

64:                                               ; preds = %40
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 1835008
  %67 = ashr i32 %66, 18
  %68 = add nsw i32 240, %67
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  store i8 %69, i8* %70, align 1
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, 258048
  %74 = ashr i32 %73, 12
  %75 = add nsw i32 128, %74
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, 4032
  %81 = ashr i32 %80, 6
  %82 = add nsw i32 128, %81
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %4, align 8
  store i8 %83, i8* %84, align 1
  %86 = load i32, i32* %3, align 4
  %87 = and i32 %86, 63
  %88 = add nsw i32 128, %87
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %4, align 8
  store i8 %89, i8* %90, align 1
  br label %92

92:                                               ; preds = %64, %43
  br label %93

93:                                               ; preds = %92, %26
  br label %94

94:                                               ; preds = %93, %18
  %95 = load i8*, i8** %4, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @jvp_utf8_encode_length(i32 %100)
  %102 = sext i32 %101 to i64
  %103 = icmp eq i64 %99, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i8*, i8** %4, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  ret i32 %111
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jvp_utf8_encode_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

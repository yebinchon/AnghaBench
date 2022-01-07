; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_bcode_encode_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_bcode_encode_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcode_encode_list(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %22

22:                                               ; preds = %26, %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %22

32:                                               ; preds = %22
  store i32 8, i32* %12, align 4
  %33 = load i8*, i8** %9, align 8
  store i8 0, i8* %33, align 1
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %87, %32
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %90

38:                                               ; preds = %34
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %49, %38
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %15, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = ashr i32 %53, %54
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 8, %56
  %58 = shl i32 %55, %57
  %59 = trunc i32 %58 to i8
  %60 = zext i8 %59 to i32
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %63, %60
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %61, align 1
  store i32 8, i32* %12, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %9, align 8
  store i8 0, i8* %67, align 1
  br label %45

68:                                               ; preds = %45
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = shl i32 1, %70
  %72 = sub nsw i32 %71, 1
  %73 = and i32 %69, %72
  %74 = load i32, i32* %12, align 4
  %75 = sub nsw i32 8, %74
  %76 = shl i32 %73, %75
  %77 = trunc i32 %76 to i8
  %78 = zext i8 %77 to i32
  %79 = load i8*, i8** %9, align 8
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = add nsw i32 %81, %78
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %68
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %34

90:                                               ; preds = %34
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = add nsw i64 %97, 1
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @bcode_iter_init(i32* %16, i8* %91, i32 %92, i32 %99, i32 %100)
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %117, %90
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @bcode_iter_get_val(i32* %16, i32 %107)
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %108, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  br label %117

117:                                              ; preds = %106
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %102

120:                                              ; preds = %102
  %121 = load i8*, i8** %9, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = add nsw i64 %125, 1
  %127 = trunc i64 %126 to i32
  ret i32 %127
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bcode_iter_init(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @bcode_iter_get_val(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

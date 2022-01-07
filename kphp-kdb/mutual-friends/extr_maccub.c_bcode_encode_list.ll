; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_maccub.c_bcode_encode_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_maccub.c_bcode_encode_list.c"
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
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %18

18:                                               ; preds = %22, %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  br label %18

28:                                               ; preds = %18
  store i32 8, i32* %12, align 4
  %29 = load i8*, i8** %9, align 8
  store i8 0, i8* %29, align 1
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %83, %28
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %86

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %45, %34
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %15, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = ashr i32 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = sub nsw i32 8, %52
  %54 = shl i32 %51, %53
  %55 = trunc i32 %54 to i8
  %56 = zext i8 %55 to i32
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %59, %56
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %57, align 1
  store i32 8, i32* %12, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %9, align 8
  store i8 0, i8* %63, align 1
  br label %41

64:                                               ; preds = %41
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = shl i32 1, %66
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %65, %68
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 8, %70
  %72 = shl i32 %69, %71
  %73 = trunc i32 %72 to i8
  %74 = zext i8 %73 to i32
  %75 = load i8*, i8** %9, align 8
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %77, %74
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %75, align 1
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %64
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %30

86:                                               ; preds = %30
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = ptrtoint i8* %89 to i64
  %92 = ptrtoint i8* %90 to i64
  %93 = sub i64 %91, %92
  %94 = add nsw i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @bcode_iter_init(i32* %16, i8* %87, i32 %88, i32 %95, i32 %96)
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %113, %86
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @bcode_iter_get_val(i32* %16, i32 %103)
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %104, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  br label %113

113:                                              ; preds = %102
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %98

116:                                              ; preds = %98
  %117 = load i8*, i8** %9, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = add nsw i64 %121, 1
  %123 = trunc i64 %122 to i32
  ret i32 %123
}

declare dso_local i32 @bcode_iter_init(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bcode_iter_get_val(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

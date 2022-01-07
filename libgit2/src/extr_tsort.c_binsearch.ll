; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tsort.c_binsearch.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tsort.c_binsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i64, i64 (i8*, i8*, i8*)*, i8*)* @binsearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binsearch(i8** %0, i8* %1, i64 %2, i64 (i8*, i8*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64 (i8*, i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 (i8*, i8*, i8*)* %3, i64 (i8*, i8*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ugt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store i32 0, i32* %12, align 4
  %23 = load i64, i64* %9, align 8
  %24 = trunc i64 %23 to i32
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %13, align 4
  %28 = load i8**, i8*** %7, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %15, align 8
  %33 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %10, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 %33(i8* %34, i8* %35, i8* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %133

40:                                               ; preds = %5
  %41 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %10, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 %41(i8* %42, i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  store i32 1, i32* %17, align 4
  br label %48

48:                                               ; preds = %59, %47
  %49 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %10, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8**, i8*** %7, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = call i64 %49(i8* %50, i8* %55, i8* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %17, align 4
  br label %48

62:                                               ; preds = %48
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %6, align 4
  br label %133

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %64
  %66 = load i8**, i8*** %7, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %16, align 8
  br label %71

71:                                               ; preds = %65, %121
  %72 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %10, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i64 %72(i8* %73, i8* %74, i8* %75)
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %71
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = sub nsw i32 %81, %82
  %84 = icmp sle i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %6, align 4
  br label %133

87:                                               ; preds = %80
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %14, align 4
  br label %121

89:                                               ; preds = %71
  %90 = load i32, i32* %18, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %93, %94
  %96 = icmp sle i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %133

100:                                              ; preds = %92
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %12, align 4
  %102 = load i8*, i8** %16, align 8
  store i8* %102, i8** %15, align 8
  br label %120

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %111, %103
  %105 = load i8**, i8*** %7, align 8
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %16, align 8
  br label %111

111:                                              ; preds = %104
  %112 = load i64 (i8*, i8*, i8*)*, i64 (i8*, i8*, i8*)** %10, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = call i64 %112(i8* %113, i8* %114, i8* %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %104, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %6, align 4
  br label %133

120:                                              ; preds = %100
  br label %121

121:                                              ; preds = %120, %87
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* %12, align 4
  %125 = sub nsw i32 %123, %124
  %126 = ashr i32 %125, 1
  %127 = add nsw i32 %122, %126
  store i32 %127, i32* %13, align 4
  %128 = load i8**, i8*** %7, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %16, align 8
  br label %71

133:                                              ; preds = %118, %97, %85, %62, %39
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

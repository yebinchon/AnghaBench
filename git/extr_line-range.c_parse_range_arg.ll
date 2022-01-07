; ModuleID = '/home/carl/AnghaBench/git/extr_line-range.c_parse_range_arg.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-range.c_parse_range_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_range_arg(i8* %0, i32 %1, i8* %2, i64 %3, i64 %4, i64* %5, i64* %6, i8* %7, %struct.index_state* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.index_state*, align 8
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64* %5, i64** %16, align 8
  store i64* %6, i64** %17, align 8
  store i8* %7, i8** %18, align 8
  store %struct.index_state* %8, %struct.index_state** %19, align 8
  %20 = load i64*, i64** %17, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** %16, align 8
  store i64 0, i64* %21, align 8
  %22 = load i64, i64* %15, align 8
  %23 = icmp slt i64 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  store i64 1, i64* %15, align 8
  br label %25

25:                                               ; preds = %24, %9
  %26 = load i64, i64* %15, align 8
  %27 = load i64, i64* %14, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* %14, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %15, align 8
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 58
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 94
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 58
  br i1 %47, label %48, label %68

48:                                               ; preds = %42, %32
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64*, i64** %16, align 8
  %55 = load i64*, i64** %17, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = load %struct.index_state*, %struct.index_state** %19, align 8
  %58 = call i8* @parse_range_funcname(i8* %49, i32 %50, i8* %51, i64 %52, i64 %53, i64* %54, i64* %55, i8* %56, %struct.index_state* %57)
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %48
  %62 = load i8*, i8** %11, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %48
  store i32 -1, i32* %10, align 4
  br label %118

67:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %118

68:                                               ; preds = %42, %37
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i8*, i8** %13, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %15, align 8
  %74 = sub nsw i64 0, %73
  %75 = load i64*, i64** %16, align 8
  %76 = call i8* @parse_loc(i8* %69, i32 %70, i8* %71, i64 %72, i64 %74, i64* %75)
  store i8* %76, i8** %11, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 44
  br i1 %80, label %81, label %92

81:                                               ; preds = %68
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i32, i32* %12, align 4
  %85 = load i8*, i8** %13, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i64*, i64** %16, align 8
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  %90 = load i64*, i64** %17, align 8
  %91 = call i8* @parse_loc(i8* %83, i32 %84, i8* %85, i64 %86, i64 %89, i64* %90)
  store i8* %91, i8** %11, align 8
  br label %92

92:                                               ; preds = %81, %68
  %93 = load i8*, i8** %11, align 8
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 -1, i32* %10, align 4
  br label %118

97:                                               ; preds = %92
  %98 = load i64*, i64** %16, align 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = load i64*, i64** %17, align 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i64*, i64** %17, align 8
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** %16, align 8
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %107, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load i64*, i64** %17, align 8
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %16, align 8
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @SWAP(i64 %113, i64 %115)
  br label %117

117:                                              ; preds = %111, %105, %101, %97
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %117, %96, %67, %66
  %119 = load i32, i32* %10, align 4
  ret i32 %119
}

declare dso_local i8* @parse_range_funcname(i8*, i32, i8*, i64, i64, i64*, i64*, i8*, %struct.index_state*) #1

declare dso_local i8* @parse_loc(i8*, i32, i8*, i64, i64, i64*) #1

declare dso_local i32 @SWAP(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

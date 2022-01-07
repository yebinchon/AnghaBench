; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_find_subpos.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_find_subpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i64*, i8**, i64*, i64*, i8**, i64*)* @find_subpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_subpos(i8* %0, i8** %1, i64* %2, i8** %3, i64* %4, i64* %5, i8** %6, i64* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i64* %2, i64** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i64* %7, i64** %16, align 8
  br label %18

18:                                               ; preds = %39, %8
  %19 = load i8*, i8** %9, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8*, i8** %9, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 10
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  br i1 %29, label %30, label %41

30:                                               ; preds = %28
  %31 = load i8*, i8** %9, align 8
  %32 = call i8* @strchrnul(i8* %31, i8 signext 10)
  store i8* %32, i8** %17, align 8
  %33 = load i8*, i8** %17, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i8*, i8** %17, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %17, align 8
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i8*, i8** %17, align 8
  store i8* %40, i8** %9, align 8
  br label %18

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %47, %41
  %43 = load i8*, i8** %9, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %9, align 8
  br label %42

50:                                               ; preds = %42
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i64 @strlen(i8* %53)
  %55 = call i32 @parse_signature(i8* %52, i64 %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %51, i64 %56
  %58 = load i8**, i8*** %15, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i8**, i8*** %15, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = load i64*, i64** %16, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i8**, i8*** %10, align 8
  store i8* %63, i8** %64, align 8
  br label %65

65:                                               ; preds = %91, %50
  %66 = load i8*, i8** %9, align 8
  %67 = load i8**, i8*** %15, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ult i8* %66, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** %9, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 10
  br label %80

80:                                               ; preds = %75, %70, %65
  %81 = phi i1 [ false, %70 ], [ false, %65 ], [ %79, %75 ]
  br i1 %81, label %82, label %93

82:                                               ; preds = %80
  %83 = load i8*, i8** %9, align 8
  %84 = call i8* @strchrnul(i8* %83, i8 signext 10)
  store i8* %84, i8** %17, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i8*, i8** %17, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %17, align 8
  br label %91

91:                                               ; preds = %88, %82
  %92 = load i8*, i8** %17, align 8
  store i8* %92, i8** %9, align 8
  br label %65

93:                                               ; preds = %80
  %94 = load i8*, i8** %9, align 8
  %95 = load i8**, i8*** %10, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = ptrtoint i8* %94 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = load i64*, i64** %11, align 8
  store i64 %99, i64* %100, align 8
  %101 = load i64*, i64** %11, align 8
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %93
  %105 = load i8**, i8*** %10, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i64*, i64** %11, align 8
  %108 = load i64, i64* %107, align 8
  %109 = sub i64 %108, 1
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 10
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load i64*, i64** %11, align 8
  %116 = load i64, i64* %115, align 8
  %117 = sub i64 %116, 1
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %114, %104, %93
  br label %119

119:                                              ; preds = %124, %118
  %120 = load i8*, i8** %9, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 10
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %9, align 8
  br label %119

127:                                              ; preds = %119
  %128 = load i8*, i8** %9, align 8
  %129 = load i8**, i8*** %12, align 8
  store i8* %128, i8** %129, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = call i64 @strlen(i8* %130)
  %132 = load i64*, i64** %13, align 8
  store i64 %131, i64* %132, align 8
  %133 = load i8**, i8*** %15, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = load i64*, i64** %14, align 8
  store i64 %138, i64* %139, align 8
  ret void
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @parse_signature(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_t_skipspc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_t_skipspc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @t_skipspc(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %6

6:                                                ; preds = %2, %55, %94, %129
  br label %7

7:                                                ; preds = %35, %6
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ult i8* %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 13
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 10
  br label %31

31:                                               ; preds = %26, %21, %16, %11
  %32 = phi i1 [ true, %21 ], [ true, %16 ], [ true, %11 ], [ %30, %26 ]
  br label %33

33:                                               ; preds = %31, %7
  %34 = phi i1 [ false, %7 ], [ %32, %31 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  br label %7

38:                                               ; preds = %33
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ule i8* %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 42
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 47
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  store i8* %57, i8** %4, align 8
  br label %6

58:                                               ; preds = %49, %43, %38
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8*, i8** %5, align 8
  %62 = icmp ugt i8* %60, %61
  br i1 %62, label %75, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 47
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 42
  br i1 %74, label %75, label %76

75:                                               ; preds = %69, %63, %58
  br label %132

76:                                               ; preds = %69
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %78, i8** %4, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = icmp ult i8* %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %76
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 33
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 63
  br i1 %93, label %94, label %97

94:                                               ; preds = %88, %82
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %4, align 8
  br label %6

97:                                               ; preds = %88, %76
  br label %98

98:                                               ; preds = %119, %97
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = load i8*, i8** %5, align 8
  %102 = icmp ule i8* %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 42
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 47
  br label %115

115:                                              ; preds = %109, %103
  %116 = phi i1 [ true, %103 ], [ %114, %109 ]
  br label %117

117:                                              ; preds = %115, %98
  %118 = phi i1 [ false, %98 ], [ %116, %115 ]
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %4, align 8
  br label %98

122:                                              ; preds = %117
  %123 = load i8*, i8** %4, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 2
  %125 = load i8*, i8** %5, align 8
  %126 = icmp ugt i8* %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i8*, i8** %5, align 8
  store i8* %128, i8** %3, align 8
  br label %134

129:                                              ; preds = %122
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  store i8* %131, i8** %4, align 8
  br label %6

132:                                              ; preds = %75
  %133 = load i8*, i8** %4, align 8
  store i8* %133, i8** %3, align 8
  br label %134

134:                                              ; preds = %132, %127
  %135 = load i8*, i8** %3, align 8
  ret i8* %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

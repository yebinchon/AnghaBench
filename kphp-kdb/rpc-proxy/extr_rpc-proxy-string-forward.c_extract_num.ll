; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-string-forward.c_extract_num.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-string-forward.c_extract_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i8**)* @extract_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @extract_num(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %35, %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp slt i32 %24, 48
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp sgt i32 %29, 57
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ true, %21 ], [ %30, %26 ]
  br label %33

33:                                               ; preds = %31, %17
  %34 = phi i1 [ false, %17 ], [ %32, %31 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  br label %17

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i8**, i8*** %7, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %8, align 8
  %47 = load i8**, i8*** %7, align 8
  store i8* %46, i8** %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  store i64 -1, i64* %4, align 8
  br label %125

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %115, %49
  %51 = load i8*, i8** %8, align 8
  store i8* %51, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %52

52:                                               ; preds = %78, %50
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sge i32 %59, 48
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8*, i8** %8, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp sle i32 %64, 57
  br label %66

66:                                               ; preds = %61, %56, %52
  %67 = phi i1 [ false, %56 ], [ false, %52 ], [ %65, %61 ]
  br i1 %67, label %68, label %89

68:                                               ; preds = %66
  %69 = load i64, i64* %11, align 8
  %70 = icmp uge i64 %69, 922337203685477580
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i8**, i8*** %7, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8*, i8** %8, align 8
  %76 = load i8**, i8*** %7, align 8
  store i8* %75, i8** %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  store i64 -1, i64* %4, align 8
  br label %125

78:                                               ; preds = %68
  %79 = load i64, i64* %11, align 8
  %80 = mul i64 %79, 10
  %81 = load i8*, i8** %8, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = sub nsw i32 %83, 48
  %85 = sext i32 %84 to i64
  %86 = add i64 %80, %85
  store i64 %86, i64* %11, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %8, align 8
  br label %52

89:                                               ; preds = %66
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i8**, i8*** %7, align 8
  %95 = icmp ne i8** %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i8*, i8** %8, align 8
  %98 = load i8**, i8*** %7, align 8
  store i8* %97, i8** %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  store i64 -1, i64* %4, align 8
  br label %125

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = icmp eq i8* %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = load i8*, i8** %8, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = icmp ult i8* %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %8, align 8
  %112 = load i8, i8* %110, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 126
  br label %115

115:                                              ; preds = %109, %105, %101
  %116 = phi i1 [ false, %105 ], [ false, %101 ], [ %114, %109 ]
  br i1 %116, label %50, label %117

117:                                              ; preds = %115
  %118 = load i8**, i8*** %7, align 8
  %119 = icmp ne i8** %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i8*, i8** %8, align 8
  %122 = load i8**, i8*** %7, align 8
  store i8* %121, i8** %122, align 8
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i64, i64* %11, align 8
  store i64 %124, i64* %4, align 8
  br label %125

125:                                              ; preds = %123, %99, %77, %48
  %126 = load i64, i64* %4, align 8
  ret i64 %126
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

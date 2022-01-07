; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_convert.c_printable_utf8.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_convert.c_printable_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.printable_utf8.cp_types = private unnamed_addr constant [256 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 5, i32 5, i32 6, i32 7, i32 7, i32 7, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@__const.printable_utf8.cp_lens = private unnamed_addr constant [9 x i64] [i64 1, i64 2, i64 3, i64 3, i64 3, i64 3, i64 4, i64 4, i64 4], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @printable_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printable_utf8(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [256 x i32], align 16
  %7 = alloca [9 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = bitcast [256 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([256 x i32]* @__const.printable_utf8.cp_types to i8*), i64 1024, i1 false)
  %16 = bitcast [9 x i64]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([9 x i64]* @__const.printable_utf8.cp_lens to i8*), i64 72, i1 false)
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %118, %2
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %121

21:                                               ; preds = %17
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %122

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [9 x i64], [9 x i64]* %7, i64 0, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* %5, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %122

43:                                               ; preds = %32
  %44 = load i64, i64* %11, align 8
  %45 = icmp uge i64 %44, 2
  br i1 %45, label %46, label %117

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  %49 = load i64*, i64** %4, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %86 [
    i32 2, label %54
    i32 4, label %62
    i32 6, label %70
    i32 8, label %78
  ]

54:                                               ; preds = %46
  %55 = load i64, i64* %12, align 8
  %56 = icmp ult i64 %55, 160
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %12, align 8
  %59 = icmp ugt i64 %58, 191
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %54
  store i32 0, i32* %3, align 4
  br label %122

61:                                               ; preds = %57
  br label %94

62:                                               ; preds = %46
  %63 = load i64, i64* %12, align 8
  %64 = icmp ult i64 %63, 128
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %12, align 8
  %67 = icmp ugt i64 %66, 159
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %62
  store i32 0, i32* %3, align 4
  br label %122

69:                                               ; preds = %65
  br label %94

70:                                               ; preds = %46
  %71 = load i64, i64* %12, align 8
  %72 = icmp ult i64 %71, 144
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8
  %75 = icmp ugt i64 %74, 191
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %70
  store i32 0, i32* %3, align 4
  br label %122

77:                                               ; preds = %73
  br label %94

78:                                               ; preds = %46
  %79 = load i64, i64* %12, align 8
  %80 = icmp ult i64 %79, 128
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %12, align 8
  %83 = icmp ugt i64 %82, 143
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %78
  store i32 0, i32* %3, align 4
  br label %122

85:                                               ; preds = %81
  br label %94

86:                                               ; preds = %46
  %87 = load i64, i64* %12, align 8
  %88 = icmp ult i64 %87, 128
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8
  %91 = icmp ugt i64 %90, 191
  br i1 %91, label %92, label %93

92:                                               ; preds = %89, %86
  store i32 0, i32* %3, align 4
  br label %122

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %85, %77, %69, %61
  store i64 2, i64* %13, align 8
  br label %95

95:                                               ; preds = %113, %94
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* %11, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %95
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %8, align 8
  %102 = load i64*, i64** %4, align 8
  %103 = load i64, i64* %8, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %14, align 8
  %106 = load i64, i64* %14, align 8
  %107 = icmp ult i64 %106, 128
  br i1 %107, label %111, label %108

108:                                              ; preds = %99
  %109 = load i64, i64* %14, align 8
  %110 = icmp ugt i64 %109, 191
  br i1 %110, label %111, label %112

111:                                              ; preds = %108, %99
  store i32 0, i32* %3, align 4
  br label %122

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %13, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %13, align 8
  br label %95

116:                                              ; preds = %95
  br label %117

117:                                              ; preds = %116, %43
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %8, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %8, align 8
  br label %17

121:                                              ; preds = %17
  store i32 1, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %111, %92, %84, %76, %68, %60, %42, %31
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

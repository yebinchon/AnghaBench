; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_bitops_incr.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_testaes.c_test_bitops_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_bitops_incr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bitops_incr() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %11 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @write32_be to i32 (i32, i32*, ...)*)(i32 0, i32* %10)
  store i64 0, i64* %2, align 8
  br label %12

12:                                               ; preds = %18, %0
  %13 = load i64, i64* %2, align 8
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %17 = call i32 (i32*, i64, ...) bitcast (i32 (...)* @incr_be to i32 (i32*, i64, ...)*)(i32* %16, i64 16)
  br label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %2, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %2, align 8
  br label %12

21:                                               ; preds = %12
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %23 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %22)
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %25)
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %28 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @write32_be to i32 (i32, i32*, ...)*)(i32 0, i32* %27)
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %35, %21
  %30 = load i64, i64* %3, align 8
  %31 = icmp ult i64 %30, 256
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %34 = call i32 (i32*, i64, ...) bitcast (i32 (...)* @incr_be to i32 (i32*, i64, ...)*)(i32* %33, i64 16)
  br label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %29

38:                                               ; preds = %29
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %40 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %39)
  %41 = icmp eq i32 %40, 256
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %42)
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %45 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @write32_be to i32 (i32, i32*, ...)*)(i32 256, i32* %44)
  store i64 0, i64* %4, align 8
  br label %46

46:                                               ; preds = %52, %38
  %47 = load i64, i64* %4, align 8
  %48 = icmp ult i64 %47, 256
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %51 = call i32 (i32*, i64, ...) bitcast (i32 (...)* @incr_be to i32 (i32*, i64, ...)*)(i32* %50, i64 16)
  br label %52

52:                                               ; preds = %49
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %46

55:                                               ; preds = %46
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %57 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %56)
  %58 = icmp eq i32 %57, 512
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %59)
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %62 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @write32_be to i32 (i32, i32*, ...)*)(i32 -1, i32* %61)
  store i64 0, i64* %5, align 8
  br label %63

63:                                               ; preds = %69, %55
  %64 = load i64, i64* %5, align 8
  %65 = icmp ult i64 %64, 1
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %68 = call i32 (i32*, i64, ...) bitcast (i32 (...)* @incr_be to i32 (i32*, i64, ...)*)(i32* %67, i64 16)
  br label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %5, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %5, align 8
  br label %63

72:                                               ; preds = %63
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %74 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_be to i32 (i32*, ...)*)(i32* %73)
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %76)
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %79 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @write32_le to i32 (i32, i32*, ...)*)(i32 0, i32* %78)
  store i64 0, i64* %6, align 8
  br label %80

80:                                               ; preds = %86, %72
  %81 = load i64, i64* %6, align 8
  %82 = icmp ult i64 %81, 1
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %85 = call i32 (i32*, i64, ...) bitcast (i32 (...)* @incr_le to i32 (i32*, i64, ...)*)(i32* %84, i64 16)
  br label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %6, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %6, align 8
  br label %80

89:                                               ; preds = %80
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %91 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_le to i32 (i32*, ...)*)(i32* %90)
  %92 = icmp eq i32 %91, 1
  %93 = zext i1 %92 to i32
  %94 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %93)
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %96 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @write32_le to i32 (i32, i32*, ...)*)(i32 0, i32* %95)
  store i64 0, i64* %7, align 8
  br label %97

97:                                               ; preds = %103, %89
  %98 = load i64, i64* %7, align 8
  %99 = icmp ult i64 %98, 256
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %102 = call i32 (i32*, i64, ...) bitcast (i32 (...)* @incr_le to i32 (i32*, i64, ...)*)(i32* %101, i64 16)
  br label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %7, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %7, align 8
  br label %97

106:                                              ; preds = %97
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %108 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_le to i32 (i32*, ...)*)(i32* %107)
  %109 = icmp eq i32 %108, 256
  %110 = zext i1 %109 to i32
  %111 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %110)
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %113 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @write32_le to i32 (i32, i32*, ...)*)(i32 2147483647, i32* %112)
  store i64 0, i64* %8, align 8
  br label %114

114:                                              ; preds = %120, %106
  %115 = load i64, i64* %8, align 8
  %116 = icmp ult i64 %115, 1
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %119 = call i32 (i32*, i64, ...) bitcast (i32 (...)* @incr_le to i32 (i32*, i64, ...)*)(i32* %118, i64 16)
  br label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %8, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %8, align 8
  br label %114

123:                                              ; preds = %114
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %125 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_le to i32 (i32*, ...)*)(i32* %124)
  %126 = icmp eq i32 %125, -2147483648
  %127 = zext i1 %126 to i32
  %128 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %127)
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %130 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @write32_le to i32 (i32, i32*, ...)*)(i32 -1, i32* %129)
  store i64 0, i64* %9, align 8
  br label %131

131:                                              ; preds = %137, %123
  %132 = load i64, i64* %9, align 8
  %133 = icmp ult i64 %132, 1
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %136 = call i32 (i32*, i64, ...) bitcast (i32 (...)* @incr_le to i32 (i32*, i64, ...)*)(i32* %135, i64 16)
  br label %137

137:                                              ; preds = %134
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %9, align 8
  br label %131

140:                                              ; preds = %131
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %142 = call i32 (i32*, ...) bitcast (i32 (...)* @read32_le to i32 (i32*, ...)*)(i32* %141)
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 (i32, ...) bitcast (i32 (...)* @TEST_CHECK to i32 (i32, ...)*)(i32 %144)
  ret void
}

declare dso_local i32 @write32_be(...) #1

declare dso_local i32 @incr_be(...) #1

declare dso_local i32 @TEST_CHECK(...) #1

declare dso_local i32 @read32_be(...) #1

declare dso_local i32 @write32_le(...) #1

declare dso_local i32 @incr_le(...) #1

declare dso_local i32 @read32_le(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

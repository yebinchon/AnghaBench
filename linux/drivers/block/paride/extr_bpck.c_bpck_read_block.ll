; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_bpck.c_bpck_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_bpck.c_bpck_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @bpck_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpck_read_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %131 [
    i32 0, label %13
    i32 1, label %38
    i32 2, label %61
    i32 3, label %83
    i32 4, label %107
  ]

13:                                               ; preds = %3
  %14 = call i32 @WR(i32 4, i32 64)
  %15 = call i32 @w0(i32 64)
  %16 = call i32 @t2(i32 2)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %33, %13
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = call i32 @t2(i32 4)
  %23 = call i32 (...) @r1()
  store i32 %23, i32* %8, align 4
  %24 = call i32 @t2(i32 4)
  %25 = call i32 (...) @r1()
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call signext i8 @j44(i32 %26, i32 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 %28, i8* %32, align 1
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %17

36:                                               ; preds = %17
  %37 = call i32 @WR(i32 4, i32 0)
  br label %131

38:                                               ; preds = %3
  %39 = call i32 @WR(i32 4, i32 80)
  %40 = call i32 @w0(i32 64)
  %41 = call i32 @t2(i32 2)
  %42 = call i32 @t2(i32 32)
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %54, %38
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = call i32 @t2(i32 4)
  %49 = call signext i8 (...) @r0()
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 %49, i8* %53, align 1
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %43

57:                                               ; preds = %43
  %58 = call i32 @t2(i32 1)
  %59 = call i32 @t2(i32 32)
  %60 = call i32 @WR(i32 4, i32 16)
  br label %131

61:                                               ; preds = %3
  %62 = call i32 @WR(i32 4, i32 72)
  %63 = call i32 @w0(i32 64)
  %64 = call i32 @w2(i32 9)
  %65 = call i32 @w2(i32 0)
  %66 = call i32 @w2(i32 32)
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %77, %61
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = call signext i8 (...) @r4()
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 %72, i8* %76, align 1
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %67

80:                                               ; preds = %67
  %81 = call i32 @w2(i32 0)
  %82 = call i32 @WR(i32 4, i32 8)
  br label %131

83:                                               ; preds = %3
  %84 = call i32 @WR(i32 4, i32 72)
  %85 = call i32 @w0(i32 64)
  %86 = call i32 @w2(i32 9)
  %87 = call i32 @w2(i32 0)
  %88 = call i32 @w2(i32 32)
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %101, %83
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = sdiv i32 %91, 2
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = call i32 (...) @r4w()
  %96 = load i8*, i8** %5, align 8
  %97 = bitcast i8* %96 to i32*
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %95, i32* %100, align 4
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %89

104:                                              ; preds = %89
  %105 = call i32 @w2(i32 0)
  %106 = call i32 @WR(i32 4, i32 8)
  br label %131

107:                                              ; preds = %3
  %108 = call i32 @WR(i32 4, i32 72)
  %109 = call i32 @w0(i32 64)
  %110 = call i32 @w2(i32 9)
  %111 = call i32 @w2(i32 0)
  %112 = call i32 @w2(i32 32)
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %125, %107
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sdiv i32 %115, 4
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = call i32 (...) @r4l()
  %120 = load i8*, i8** %5, align 8
  %121 = bitcast i8* %120 to i32*
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %119, i32* %124, align 4
  br label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %113

128:                                              ; preds = %113
  %129 = call i32 @w2(i32 0)
  %130 = call i32 @WR(i32 4, i32 8)
  br label %131

131:                                              ; preds = %3, %128, %104, %80, %57, %36
  ret void
}

declare dso_local i32 @WR(i32, i32) #1

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @t2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local signext i8 @j44(i32, i32) #1

declare dso_local signext i8 @r0(...) #1

declare dso_local i32 @w2(i32) #1

declare dso_local signext i8 @r4(...) #1

declare dso_local i32 @r4w(...) #1

declare dso_local i32 @r4l(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_bpck.c_bpck_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_bpck.c_bpck_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @bpck_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpck_write_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %130 [
    i32 0, label %11
    i32 1, label %34
    i32 2, label %57
    i32 3, label %80
    i32 4, label %105
  ]

11:                                               ; preds = %3
  %12 = call i32 @WR(i32 4, i32 64)
  %13 = call i32 @w0(i32 64)
  %14 = call i32 @t2(i32 2)
  %15 = call i32 @t2(i32 1)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %29, %11
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = call i32 @w0(i32 %26)
  %28 = call i32 @t2(i32 4)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %16

32:                                               ; preds = %16
  %33 = call i32 @WR(i32 4, i32 0)
  br label %130

34:                                               ; preds = %3
  %35 = call i32 @WR(i32 4, i32 80)
  %36 = call i32 @w0(i32 64)
  %37 = call i32 @t2(i32 2)
  %38 = call i32 @t2(i32 1)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %52, %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = call i32 @w0(i32 %49)
  %51 = call i32 @t2(i32 4)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %39

55:                                               ; preds = %39
  %56 = call i32 @WR(i32 4, i32 16)
  br label %130

57:                                               ; preds = %3
  %58 = call i32 @WR(i32 4, i32 72)
  %59 = call i32 @w0(i32 64)
  %60 = call i32 @w2(i32 9)
  %61 = call i32 @w2(i32 0)
  %62 = call i32 @w2(i32 1)
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %74, %57
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @w4(i8 signext %72)
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %63

77:                                               ; preds = %63
  %78 = call i32 @w2(i32 0)
  %79 = call i32 @WR(i32 4, i32 8)
  br label %130

80:                                               ; preds = %3
  %81 = call i32 @WR(i32 4, i32 72)
  %82 = call i32 @w0(i32 64)
  %83 = call i32 @w2(i32 9)
  %84 = call i32 @w2(i32 0)
  %85 = call i32 @w2(i32 1)
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %99, %80
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sdiv i32 %88, 2
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load i8*, i8** %5, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @w4w(i32 %97)
  br label %99

99:                                               ; preds = %91
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %86

102:                                              ; preds = %86
  %103 = call i32 @w2(i32 0)
  %104 = call i32 @WR(i32 4, i32 8)
  br label %130

105:                                              ; preds = %3
  %106 = call i32 @WR(i32 4, i32 72)
  %107 = call i32 @w0(i32 64)
  %108 = call i32 @w2(i32 9)
  %109 = call i32 @w2(i32 0)
  %110 = call i32 @w2(i32 1)
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %124, %105
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %6, align 4
  %114 = sdiv i32 %113, 4
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %111
  %117 = load i8*, i8** %5, align 8
  %118 = bitcast i8* %117 to i32*
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @w4l(i32 %122)
  br label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %111

127:                                              ; preds = %111
  %128 = call i32 @w2(i32 0)
  %129 = call i32 @WR(i32 4, i32 8)
  br label %130

130:                                              ; preds = %3, %127, %102, %77, %55, %32
  ret void
}

declare dso_local i32 @WR(i32, i32) #1

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @t2(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w4(i8 signext) #1

declare dso_local i32 @w4w(i32) #1

declare dso_local i32 @w4l(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

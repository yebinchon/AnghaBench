; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_on26.c_on26_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_on26.c_on26_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@P1 = common dso_local global i32 0, align 4
@P2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @on26_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on26_read_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
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
  switch i32 %12, label %169 [
    i32 0, label %13
    i32 1, label %49
    i32 2, label %90
    i32 3, label %115
    i32 4, label %142
  ]

13:                                               ; preds = %3
  %14 = call i32 @w0(i32 1)
  %15 = load i32, i32* @P1, align 4
  %16 = call i32 @w0(i32 1)
  %17 = load i32, i32* @P2, align 4
  %18 = call i32 @w0(i32 2)
  %19 = load i32, i32* @P1, align 4
  %20 = call i32 @w0(i32 24)
  %21 = load i32, i32* @P2, align 4
  %22 = call i32 @w0(i32 0)
  %23 = load i32, i32* @P1, align 4
  %24 = call i32 @udelay(i32 10)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %41, %13
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = call i32 @w2(i32 6)
  %31 = call i32 (...) @r1()
  store i32 %31, i32* %8, align 4
  %32 = call i32 @w2(i32 4)
  %33 = call i32 (...) @r1()
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call signext i8 @j44(i32 %34, i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 %36, i8* %40, align 1
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %25

44:                                               ; preds = %25
  %45 = call i32 @w0(i32 2)
  %46 = load i32, i32* @P1, align 4
  %47 = call i32 @w0(i32 8)
  %48 = load i32, i32* @P2, align 4
  br label %169

49:                                               ; preds = %3
  %50 = call i32 @w0(i32 1)
  %51 = load i32, i32* @P1, align 4
  %52 = call i32 @w0(i32 1)
  %53 = load i32, i32* @P2, align 4
  %54 = call i32 @w0(i32 2)
  %55 = load i32, i32* @P1, align 4
  %56 = call i32 @w0(i32 25)
  %57 = load i32, i32* @P2, align 4
  %58 = call i32 @w0(i32 0)
  %59 = load i32, i32* @P1, align 4
  %60 = call i32 @udelay(i32 10)
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %82, %49
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sdiv i32 %63, 2
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %61
  %67 = call i32 @w2(i32 38)
  %68 = call signext i8 (...) @r0()
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 2, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 %68, i8* %73, align 1
  %74 = call i32 @w2(i32 36)
  %75 = call signext i8 (...) @r0()
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = mul nsw i32 2, %77
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  store i8 %75, i8* %81, align 1
  br label %82

82:                                               ; preds = %66
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %61

85:                                               ; preds = %61
  %86 = call i32 @w0(i32 2)
  %87 = load i32, i32* @P1, align 4
  %88 = call i32 @w0(i32 9)
  %89 = load i32, i32* @P2, align 4
  br label %169

90:                                               ; preds = %3
  %91 = call i32 @w3(i32 1)
  %92 = call i32 @w3(i32 1)
  %93 = call i32 @w2(i32 5)
  %94 = call i32 @w4(i32 1)
  %95 = call i32 @w2(i32 4)
  %96 = call i32 @w3(i32 0)
  %97 = call i32 @w3(i32 0)
  %98 = call i32 @w2(i32 36)
  %99 = call i32 @udelay(i32 10)
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %110, %90
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = call signext i8 (...) @r4()
  %106 = load i8*, i8** %5, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8 %105, i8* %109, align 1
  br label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %100

113:                                              ; preds = %100
  %114 = call i32 @w2(i32 4)
  br label %169

115:                                              ; preds = %3
  %116 = call i32 @w3(i32 1)
  %117 = call i32 @w3(i32 1)
  %118 = call i32 @w2(i32 5)
  %119 = call i32 @w4(i32 1)
  %120 = call i32 @w2(i32 4)
  %121 = call i32 @w3(i32 0)
  %122 = call i32 @w3(i32 0)
  %123 = call i32 @w2(i32 36)
  %124 = call i32 @udelay(i32 10)
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %137, %115
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %6, align 4
  %128 = sdiv i32 %127, 2
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = call i32 (...) @r4w()
  %132 = load i8*, i8** %5, align 8
  %133 = bitcast i8* %132 to i32*
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %131, i32* %136, align 4
  br label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %125

140:                                              ; preds = %125
  %141 = call i32 @w2(i32 4)
  br label %169

142:                                              ; preds = %3
  %143 = call i32 @w3(i32 1)
  %144 = call i32 @w3(i32 1)
  %145 = call i32 @w2(i32 5)
  %146 = call i32 @w4(i32 1)
  %147 = call i32 @w2(i32 4)
  %148 = call i32 @w3(i32 0)
  %149 = call i32 @w3(i32 0)
  %150 = call i32 @w2(i32 36)
  %151 = call i32 @udelay(i32 10)
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %164, %142
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %6, align 4
  %155 = sdiv i32 %154, 4
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %152
  %158 = call i32 (...) @r4l()
  %159 = load i8*, i8** %5, align 8
  %160 = bitcast i8* %159 to i32*
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %158, i32* %163, align 4
  br label %164

164:                                              ; preds = %157
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %152

167:                                              ; preds = %152
  %168 = call i32 @w2(i32 4)
  br label %169

169:                                              ; preds = %3, %167, %140, %113, %85, %44
  ret void
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local signext i8 @j44(i32, i32) #1

declare dso_local signext i8 @r0(...) #1

declare dso_local i32 @w3(i32) #1

declare dso_local i32 @w4(i32) #1

declare dso_local signext i8 @r4(...) #1

declare dso_local i32 @r4w(...) #1

declare dso_local i32 @r4l(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

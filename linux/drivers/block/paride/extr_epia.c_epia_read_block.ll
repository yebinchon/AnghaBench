; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_epia.c_epia_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_epia.c_epia_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @epia_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epia_read_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %182 [
    i32 0, label %14
    i32 1, label %47
    i32 2, label %80
    i32 3, label %106
    i32 4, label %130
    i32 5, label %156
  ]

14:                                               ; preds = %3
  %15 = call i32 @w0(i32 129)
  %16 = call i32 @w2(i32 1)
  %17 = call i32 @w2(i32 3)
  %18 = call i32 @w0(i32 193)
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %41, %14
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 2, %24
  %26 = call i32 @w2(i32 %25)
  %27 = call i32 (...) @r1()
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 4, %28
  %30 = call i32 @w2(i32 %29)
  %31 = call i32 (...) @r1()
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call signext i8 @j44(i32 %32, i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 %34, i8* %38, align 1
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 1, %39
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %23
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %19

44:                                               ; preds = %19
  %45 = call i32 @w0(i32 0)
  %46 = call i32 @w2(i32 4)
  br label %182

47:                                               ; preds = %3
  %48 = call i32 @w0(i32 145)
  %49 = call i32 @w2(i32 1)
  %50 = call i32 @w0(i32 16)
  %51 = call i32 @w2(i32 3)
  %52 = call i32 @w0(i32 81)
  %53 = call i32 @w2(i32 5)
  %54 = call i32 @w0(i32 209)
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %74, %47
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 4, %60
  %62 = call i32 @w2(i32 %61)
  %63 = call i32 (...) @r1()
  store i32 %63, i32* %9, align 4
  %64 = call i32 (...) @r2()
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call signext i8 @j53(i32 %65, i32 %66)
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 1, %72
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %59
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %55

77:                                               ; preds = %55
  %78 = call i32 @w0(i32 0)
  %79 = call i32 @w2(i32 4)
  br label %182

80:                                               ; preds = %3
  %81 = call i32 @w0(i32 137)
  %82 = call i32 @w2(i32 1)
  %83 = call i32 @w2(i32 35)
  %84 = call i32 @w2(i32 33)
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %100, %80
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 36, %90
  %92 = call i32 @w2(i32 %91)
  %93 = call signext i8 (...) @r0()
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 %93, i8* %97, align 1
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 1, %98
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %85

103:                                              ; preds = %85
  %104 = call i32 @w2(i32 6)
  %105 = call i32 @w2(i32 4)
  br label %182

106:                                              ; preds = %3
  %107 = load i32, i32* %6, align 4
  %108 = icmp sgt i32 %107, 512
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 @WR(i32 132, i32 3)
  br label %111

111:                                              ; preds = %109, %106
  %112 = call i32 @w3(i32 0)
  %113 = call i32 @w2(i32 36)
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %124, %111
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = call signext i8 (...) @r4()
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8 %119, i8* %123, align 1
  br label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %114

127:                                              ; preds = %114
  %128 = call i32 @w2(i32 4)
  %129 = call i32 @WR(i32 132, i32 0)
  br label %182

130:                                              ; preds = %3
  %131 = load i32, i32* %6, align 4
  %132 = icmp sgt i32 %131, 512
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 @WR(i32 132, i32 3)
  br label %135

135:                                              ; preds = %133, %130
  %136 = call i32 @w3(i32 0)
  %137 = call i32 @w2(i32 36)
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %150, %135
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %6, align 4
  %141 = sdiv i32 %140, 2
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = call i32 (...) @r4w()
  %145 = load i8*, i8** %5, align 8
  %146 = bitcast i8* %145 to i32*
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %144, i32* %149, align 4
  br label %150

150:                                              ; preds = %143
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %138

153:                                              ; preds = %138
  %154 = call i32 @w2(i32 4)
  %155 = call i32 @WR(i32 132, i32 0)
  br label %182

156:                                              ; preds = %3
  %157 = load i32, i32* %6, align 4
  %158 = icmp sgt i32 %157, 512
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = call i32 @WR(i32 132, i32 3)
  br label %161

161:                                              ; preds = %159, %156
  %162 = call i32 @w3(i32 0)
  %163 = call i32 @w2(i32 36)
  store i32 0, i32* %7, align 4
  br label %164

164:                                              ; preds = %176, %161
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %6, align 4
  %167 = sdiv i32 %166, 4
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %164
  %170 = call i32 (...) @r4l()
  %171 = load i8*, i8** %5, align 8
  %172 = bitcast i8* %171 to i32*
  %173 = load i32, i32* %7, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %170, i32* %175, align 4
  br label %176

176:                                              ; preds = %169
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %7, align 4
  br label %164

179:                                              ; preds = %164
  %180 = call i32 @w2(i32 4)
  %181 = call i32 @WR(i32 132, i32 0)
  br label %182

182:                                              ; preds = %3, %179, %153, %127, %103, %77, %44
  ret void
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local signext i8 @j44(i32, i32) #1

declare dso_local i32 @r2(...) #1

declare dso_local signext i8 @j53(i32, i32) #1

declare dso_local signext i8 @r0(...) #1

declare dso_local i32 @WR(i32, i32) #1

declare dso_local i32 @w3(i32) #1

declare dso_local signext i8 @r4(...) #1

declare dso_local i32 @r4w(...) #1

declare dso_local i32 @r4l(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_frpw.c_frpw_read_block_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_frpw.c_frpw_read_block_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cec4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32, i32)* @frpw_read_block_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frpw_read_block_int(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %218 [
    i32 0, label %16
    i32 1, label %42
    i32 2, label %71
    i32 3, label %94
    i32 4, label %130
    i32 5, label %168
  ]

16:                                               ; preds = %4
  %17 = call i32 @w2(i32 4)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @w0(i32 %18)
  %20 = load i32, i32* @cec4, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %37, %16
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = call i32 @w2(i32 6)
  %27 = call i32 (...) @r1()
  store i32 %27, i32* %10, align 4
  %28 = call i32 @w2(i32 4)
  %29 = call i32 (...) @r1()
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call signext i8 @j44(i32 %30, i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 %32, i8* %36, align 1
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %21

40:                                               ; preds = %21
  %41 = call i32 @w2(i32 4)
  br label %218

42:                                               ; preds = %4
  store i32 2, i32* %12, align 4
  %43 = call i32 @w2(i32 4)
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 192
  %46 = call i32 @w0(i32 %45)
  %47 = load i32, i32* @cec4, align 4
  %48 = call i32 @w0(i32 255)
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %64, %42
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 164, %54
  %56 = call i32 @w2(i32 %55)
  %57 = call signext i8 (...) @r0()
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 %57, i8* %61, align 1
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 2, %62
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %49

67:                                               ; preds = %49
  %68 = call i32 @w2(i32 172)
  %69 = call i32 @w2(i32 164)
  %70 = call i32 @w2(i32 4)
  br label %218

71:                                               ; preds = %4
  %72 = call i32 @w2(i32 4)
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 128
  %75 = call i32 @w0(i32 %74)
  %76 = load i32, i32* @cec4, align 4
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %87, %71
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = call signext i8 (...) @r4()
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 %82, i8* %86, align 1
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %77

90:                                               ; preds = %77
  %91 = call i32 @w2(i32 172)
  %92 = call i32 @w2(i32 164)
  %93 = call i32 @w2(i32 4)
  br label %218

94:                                               ; preds = %4
  %95 = call i32 @w2(i32 4)
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 128
  %98 = call i32 @w0(i32 %97)
  %99 = load i32, i32* @cec4, align 4
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %111, %94
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, 2
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = call signext i8 (...) @r4()
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8 %106, i8* %110, align 1
  br label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %100

114:                                              ; preds = %100
  %115 = call i32 @w2(i32 172)
  %116 = call i32 @w2(i32 164)
  %117 = call signext i8 (...) @r4()
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  store i8 %117, i8* %122, align 1
  %123 = call signext i8 (...) @r4()
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 %123, i8* %128, align 1
  %129 = call i32 @w2(i32 4)
  br label %218

130:                                              ; preds = %4
  %131 = call i32 @w2(i32 4)
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 128
  %134 = call i32 @w0(i32 %133)
  %135 = load i32, i32* @cec4, align 4
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %149, %130
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %7, align 4
  %139 = sdiv i32 %138, 2
  %140 = sub nsw i32 %139, 1
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %136
  %143 = call i32 (...) @r4w()
  %144 = load i8*, i8** %6, align 8
  %145 = bitcast i8* %144 to i32*
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %143, i32* %148, align 4
  br label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %136

152:                                              ; preds = %136
  %153 = call i32 @w2(i32 172)
  %154 = call i32 @w2(i32 164)
  %155 = call signext i8 (...) @r4()
  %156 = load i8*, i8** %6, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sub nsw i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  store i8 %155, i8* %160, align 1
  %161 = call signext i8 (...) @r4()
  %162 = load i8*, i8** %6, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %162, i64 %165
  store i8 %161, i8* %166, align 1
  %167 = call i32 @w2(i32 4)
  br label %218

168:                                              ; preds = %4
  %169 = call i32 @w2(i32 4)
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, 128
  %172 = call i32 @w0(i32 %171)
  %173 = load i32, i32* @cec4, align 4
  store i32 0, i32* %11, align 4
  br label %174

174:                                              ; preds = %187, %168
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %7, align 4
  %177 = sdiv i32 %176, 4
  %178 = sub nsw i32 %177, 1
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %174
  %181 = call i32 (...) @r4l()
  %182 = load i8*, i8** %6, align 8
  %183 = bitcast i8* %182 to i32*
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %181, i32* %186, align 4
  br label %187

187:                                              ; preds = %180
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %11, align 4
  br label %174

190:                                              ; preds = %174
  %191 = call signext i8 (...) @r4()
  %192 = load i8*, i8** %6, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sub nsw i32 %193, 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %192, i64 %195
  store i8 %191, i8* %196, align 1
  %197 = call signext i8 (...) @r4()
  %198 = load i8*, i8** %6, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sub nsw i32 %199, 3
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  store i8 %197, i8* %202, align 1
  %203 = call i32 @w2(i32 172)
  %204 = call i32 @w2(i32 164)
  %205 = call signext i8 (...) @r4()
  %206 = load i8*, i8** %6, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sub nsw i32 %207, 2
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %206, i64 %209
  store i8 %205, i8* %210, align 1
  %211 = call signext i8 (...) @r4()
  %212 = load i8*, i8** %6, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sub nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  store i8 %211, i8* %216, align 1
  %217 = call i32 @w2(i32 4)
  br label %218

218:                                              ; preds = %4, %190, %152, %114, %90, %67, %40
  ret void
}

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local signext i8 @j44(i32, i32) #1

declare dso_local signext i8 @r0(...) #1

declare dso_local signext i8 @r4(...) #1

declare dso_local i32 @r4w(...) #1

declare dso_local i32 @r4l(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_friq.c_friq_read_block_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_friq.c_friq_read_block_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32, i32)* @friq_read_block_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @friq_read_block_int(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 %3) #0 {
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
  switch i32 %15, label %185 [
    i32 0, label %16
    i32 1, label %40
    i32 2, label %67
    i32 3, label %101
    i32 4, label %137
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @CMD(i32 %17)
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %35, %16
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = call i32 @w2(i32 6)
  %25 = call i32 (...) @r1()
  store i32 %25, i32* %10, align 4
  %26 = call i32 @w2(i32 4)
  %27 = call i32 (...) @r1()
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call signext i8 @j44(i32 %28, i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 %30, i8* %34, align 1
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %19

38:                                               ; preds = %19
  %39 = call i32 @w2(i32 4)
  br label %185

40:                                               ; preds = %4
  store i32 2, i32* %12, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 192
  %43 = call i32 @CMD(i32 %42)
  %44 = call i32 @w0(i32 255)
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %60, %40
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 164, %50
  %52 = call i32 @w2(i32 %51)
  %53 = call signext i8 (...) @r0()
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 %53, i8* %57, align 1
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 2, %58
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %45

63:                                               ; preds = %45
  %64 = call i32 @w2(i32 172)
  %65 = call i32 @w2(i32 164)
  %66 = call i32 @w2(i32 4)
  br label %185

67:                                               ; preds = %4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 128
  %70 = call i32 @CMD(i32 %69)
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %82, %67
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, 2
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = call signext i8 (...) @r4()
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 %77, i8* %81, align 1
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %71

85:                                               ; preds = %71
  %86 = call i32 @w2(i32 172)
  %87 = call i32 @w2(i32 164)
  %88 = call signext i8 (...) @r4()
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8 %88, i8* %93, align 1
  %94 = call signext i8 (...) @r4()
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8 %94, i8* %99, align 1
  %100 = call i32 @w2(i32 4)
  br label %185

101:                                              ; preds = %4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 128
  %104 = call i32 @CMD(i32 %103)
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %118, %101
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %7, align 4
  %108 = sdiv i32 %107, 2
  %109 = sub nsw i32 %108, 1
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = call i32 (...) @r4w()
  %113 = load i8*, i8** %6, align 8
  %114 = bitcast i8* %113 to i32*
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %112, i32* %117, align 4
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %105

121:                                              ; preds = %105
  %122 = call i32 @w2(i32 172)
  %123 = call i32 @w2(i32 164)
  %124 = call signext i8 (...) @r4()
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  store i8 %124, i8* %129, align 1
  %130 = call signext i8 (...) @r4()
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  store i8 %130, i8* %135, align 1
  %136 = call i32 @w2(i32 4)
  br label %185

137:                                              ; preds = %4
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 128
  %140 = call i32 @CMD(i32 %139)
  store i32 0, i32* %11, align 4
  br label %141

141:                                              ; preds = %154, %137
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sdiv i32 %143, 4
  %145 = sub nsw i32 %144, 1
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %141
  %148 = call i32 (...) @r4l()
  %149 = load i8*, i8** %6, align 8
  %150 = bitcast i8* %149 to i32*
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %148, i32* %153, align 4
  br label %154

154:                                              ; preds = %147
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %141

157:                                              ; preds = %141
  %158 = call signext i8 (...) @r4()
  %159 = load i8*, i8** %6, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sub nsw i32 %160, 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  store i8 %158, i8* %163, align 1
  %164 = call signext i8 (...) @r4()
  %165 = load i8*, i8** %6, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sub nsw i32 %166, 3
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8 %164, i8* %169, align 1
  %170 = call i32 @w2(i32 172)
  %171 = call i32 @w2(i32 164)
  %172 = call signext i8 (...) @r4()
  %173 = load i8*, i8** %6, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sub nsw i32 %174, 2
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  store i8 %172, i8* %177, align 1
  %178 = call signext i8 (...) @r4()
  %179 = load i8*, i8** %6, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  store i8 %178, i8* %183, align 1
  %184 = call i32 @w2(i32 4)
  br label %185

185:                                              ; preds = %4, %157, %121, %85, %63, %38
  ret void
}

declare dso_local i32 @CMD(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local signext i8 @j44(i32, i32) #1

declare dso_local i32 @w0(i32) #1

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

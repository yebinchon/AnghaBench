; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_epat.c_epat_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_epat.c_epat_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @epat_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @epat_read_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
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
  switch i32 %13, label %244 [
    i32 0, label %14
    i32 1, label %61
    i32 2, label %98
    i32 3, label %133
    i32 4, label %161
    i32 5, label %197
  ]

14:                                               ; preds = %3
  %15 = call i32 @w0(i32 7)
  %16 = call i32 @w2(i32 1)
  %17 = call i32 @w2(i32 3)
  %18 = call i32 @w0(i32 255)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %55, %14
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @w0(i32 253)
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 6, %31
  %33 = call i32 @w2(i32 %32)
  %34 = call i32 (...) @r1()
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %10, align 4
  br label %45

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 4, %41
  %43 = call i32 @w2(i32 %42)
  %44 = call i32 (...) @r1()
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %40, %38
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call signext i8 @j44(i32 %46, i32 %47)
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %48, i8* %52, align 1
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 1, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %19

58:                                               ; preds = %19
  %59 = call i32 @w0(i32 0)
  %60 = call i32 @w2(i32 4)
  br label %244

61:                                               ; preds = %3
  %62 = call i32 @w0(i32 71)
  %63 = call i32 @w2(i32 1)
  %64 = call i32 @w2(i32 5)
  %65 = call i32 @w0(i32 255)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %92, %61
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = call i32 @w0(i32 253)
  br label %77

77:                                               ; preds = %75, %70
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 4, %78
  %80 = call i32 @w2(i32 %79)
  %81 = call i32 (...) @r1()
  store i32 %81, i32* %9, align 4
  %82 = call i32 (...) @r2()
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call signext i8 @j53(i32 %83, i32 %84)
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 %85, i8* %89, align 1
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 1, %90
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %77
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %66

95:                                               ; preds = %66
  %96 = call i32 @w0(i32 0)
  %97 = call i32 @w2(i32 4)
  br label %244

98:                                               ; preds = %3
  %99 = call i32 @w0(i32 39)
  %100 = call i32 @w2(i32 1)
  %101 = call i32 @w2(i32 37)
  %102 = call i32 @w0(i32 0)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %119, %98
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, 1
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 36, %109
  %111 = call i32 @w2(i32 %110)
  %112 = call signext i8 (...) @r0()
  %113 = load i8*, i8** %5, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 %112, i8* %116, align 1
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 1, %117
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %103

122:                                              ; preds = %103
  %123 = call i32 @w2(i32 38)
  %124 = call i32 @w2(i32 39)
  %125 = call signext i8 (...) @r0()
  %126 = load i8*, i8** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  store i8 %125, i8* %130, align 1
  %131 = call i32 @w2(i32 37)
  %132 = call i32 @w2(i32 4)
  br label %244

133:                                              ; preds = %3
  %134 = call i32 @w3(i32 128)
  %135 = call i32 @w2(i32 36)
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %147, %133
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %6, align 4
  %139 = sub nsw i32 %138, 1
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = call signext i8 (...) @r4()
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  store i8 %142, i8* %146, align 1
  br label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %136

150:                                              ; preds = %136
  %151 = call i32 @w2(i32 4)
  %152 = call i32 @w3(i32 160)
  %153 = call i32 @w2(i32 36)
  %154 = call signext i8 (...) @r4()
  %155 = load i8*, i8** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  store i8 %154, i8* %159, align 1
  %160 = call i32 @w2(i32 4)
  br label %244

161:                                              ; preds = %3
  %162 = call i32 @w3(i32 128)
  %163 = call i32 @w2(i32 36)
  store i32 0, i32* %7, align 4
  br label %164

164:                                              ; preds = %177, %161
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %6, align 4
  %167 = sdiv i32 %166, 2
  %168 = sub nsw i32 %167, 1
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %164
  %171 = call i32 (...) @r4w()
  %172 = load i8*, i8** %5, align 8
  %173 = bitcast i8* %172 to i32*
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %171, i32* %176, align 4
  br label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %164

180:                                              ; preds = %164
  %181 = call signext i8 (...) @r4()
  %182 = load i8*, i8** %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sub nsw i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  store i8 %181, i8* %186, align 1
  %187 = call i32 @w2(i32 4)
  %188 = call i32 @w3(i32 160)
  %189 = call i32 @w2(i32 36)
  %190 = call signext i8 (...) @r4()
  %191 = load i8*, i8** %5, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  store i8 %190, i8* %195, align 1
  %196 = call i32 @w2(i32 4)
  br label %244

197:                                              ; preds = %3
  %198 = call i32 @w3(i32 128)
  %199 = call i32 @w2(i32 36)
  store i32 0, i32* %7, align 4
  br label %200

200:                                              ; preds = %213, %197
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %6, align 4
  %203 = sdiv i32 %202, 4
  %204 = sub nsw i32 %203, 1
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %216

206:                                              ; preds = %200
  %207 = call i32 (...) @r4l()
  %208 = load i8*, i8** %5, align 8
  %209 = bitcast i8* %208 to i32*
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %207, i32* %212, align 4
  br label %213

213:                                              ; preds = %206
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %200

216:                                              ; preds = %200
  %217 = load i32, i32* %6, align 4
  %218 = sub nsw i32 %217, 4
  store i32 %218, i32* %7, align 4
  br label %219

219:                                              ; preds = %230, %216
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* %6, align 4
  %222 = sub nsw i32 %221, 1
  %223 = icmp slt i32 %220, %222
  br i1 %223, label %224, label %233

224:                                              ; preds = %219
  %225 = call signext i8 (...) @r4()
  %226 = load i8*, i8** %5, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  store i8 %225, i8* %229, align 1
  br label %230

230:                                              ; preds = %224
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  br label %219

233:                                              ; preds = %219
  %234 = call i32 @w2(i32 4)
  %235 = call i32 @w3(i32 160)
  %236 = call i32 @w2(i32 36)
  %237 = call signext i8 (...) @r4()
  %238 = load i8*, i8** %5, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %238, i64 %241
  store i8 %237, i8* %242, align 1
  %243 = call i32 @w2(i32 4)
  br label %244

244:                                              ; preds = %3, %233, %180, %150, %122, %95, %58
  ret void
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local signext i8 @j44(i32, i32) #1

declare dso_local i32 @r2(...) #1

declare dso_local signext i8 @j53(i32, i32) #1

declare dso_local signext i8 @r0(...) #1

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

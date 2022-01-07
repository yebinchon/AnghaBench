; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_WriteBits.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_WriteBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32, i8*, i64 }

@oldsize = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"MSG_WriteBits: bad bits %i\00", align 1
@qtrue = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"can't write %d bits\00", align 1
@msgHuff = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSG_WriteBits(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @oldsize, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* @oldsize, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %242

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, -31
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 32
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %21, %18
  %28 = load i32, i32* @ERR_DROP, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @Com_Error(i32 %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %129

42:                                               ; preds = %37
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 3
  %48 = add nsw i32 %45, %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i8*, i8** @qtrue, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  br label %242

57:                                               ; preds = %42
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32 %61, i32* %69, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 8
  store i32 %77, i32* %75, align 8
  br label %128

78:                                               ; preds = %57
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %79, 16
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %8, align 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = call i32 @CopyLittleShort(i32* %91, i16* %8)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %94, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 16
  store i32 %100, i32* %98, align 8
  br label %127

101:                                              ; preds = %78
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %102, 32
  br i1 %103, label %104, label %122

104:                                              ; preds = %101
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = call i32 @CopyLittleLong(i32* %112, i32* %5)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 4
  store i32 %117, i32* %115, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 32
  store i32 %121, i32* %119, align 8
  br label %126

122:                                              ; preds = %101
  %123 = load i32, i32* @ERR_DROP, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @Com_Error(i32 %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %122, %104
  br label %127

127:                                              ; preds = %126, %81
  br label %128

128:                                              ; preds = %127, %60
  br label %242

129:                                              ; preds = %37
  %130 = load i32, i32* %6, align 4
  %131 = sub nsw i32 32, %130
  %132 = lshr i32 -1, %131
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = and i32 %135, 7
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %178

138:                                              ; preds = %129
  %139 = load i32, i32* %6, align 4
  %140 = and i32 %139, 7
  store i32 %140, i32* %9, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %143, %144
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %148, 3
  %150 = icmp sgt i32 %145, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %138
  %152 = load i8*, i8** @qtrue, align 8
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  store i8* %152, i8** %154, align 8
  br label %242

155:                                              ; preds = %138
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %171, %155
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %174

160:                                              ; preds = %156
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 3
  %168 = call i32 @Huff_putBit(i32 %162, i32* %165, i32* %167)
  %169 = load i32, i32* %5, align 4
  %170 = ashr i32 %169, 1
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %160
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %156

174:                                              ; preds = %156
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %9, align 4
  %177 = sub nsw i32 %175, %176
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %174, %129
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %218

181:                                              ; preds = %178
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %214, %181
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %217

186:                                              ; preds = %182
  %187 = load i32, i32* %5, align 4
  %188 = and i32 %187, 255
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 %196, 3
  %198 = call i32 @Huff_offsetTransmit(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msgHuff, i32 0, i32 0), i32 %188, i32* %191, i32* %193, i32 %197)
  %199 = load i32, i32* %5, align 4
  %200 = ashr i32 %199, 8
  store i32 %200, i32* %5, align 4
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %206, 3
  %208 = icmp sgt i32 %203, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %186
  %210 = load i8*, i8** @qtrue, align 8
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 4
  store i8* %210, i8** %212, align 8
  br label %242

213:                                              ; preds = %186
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 8
  store i32 %216, i32* %7, align 4
  br label %182

217:                                              ; preds = %182
  br label %218

218:                                              ; preds = %217, %178
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = ashr i32 %221, 3
  %223 = add nsw i32 %222, 1
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = srem i32 %228, 8
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %218
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = sdiv i32 %237, 8
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %234, i64 %239
  store i32 0, i32* %240, align 4
  br label %241

241:                                              ; preds = %231, %218
  br label %242

242:                                              ; preds = %17, %53, %151, %209, %241, %128
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @CopyLittleShort(i32*, i16*) #1

declare dso_local i32 @CopyLittleLong(i32*, i32*) #1

declare dso_local i32 @Huff_putBit(i32, i32*, i32*) #1

declare dso_local i32 @Huff_offsetTransmit(i32*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

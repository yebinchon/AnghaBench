; ModuleID = '/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_module.c_apply_relocate_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_module.c_apply_relocate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.module = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Applying relocate section %u to %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"module %s: Unknown relocation: %u\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"module %s: relocation offset overflow: %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_relocate_add(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 %3, %struct.module* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.module*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.module* %4, %struct.module** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %13, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %32)
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %191, %5
  %35 = load i32, i32* %12, align 4
  %36 = zext i32 %35 to i64
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %43, 12
  %45 = icmp ult i64 %36, %44
  br i1 %45, label %46, label %194

46:                                               ; preds = %34
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %56, %62
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %14, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to %struct.TYPE_5__*
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ELF32_R_SYM(i32 %79)
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %81
  store %struct.TYPE_5__* %82, %struct.TYPE_5__** %15, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %85, %91
  store i32 %92, i32* %16, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %94 = load i32, i32* %12, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ELF32_R_TYPE(i32 %98)
  switch i32 %99, label %176 [
    i32 132, label %100
    i32 133, label %116
    i32 131, label %131
    i32 130, label %131
    i32 129, label %136
    i32 128, label %156
  ]

100:                                              ; preds = %46
  %101 = load i32*, i32** %14, align 8
  %102 = ptrtoint i32* %101 to i32
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i32*
  store i32* %105, i32** %14, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, -16777216
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 16777215
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %111, %112
  %114 = or i32 %108, %113
  %115 = load i32*, i32** %14, align 8
  store i32 %114, i32* %115, align 4
  br label %190

116:                                              ; preds = %46
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %118 = load i32, i32* %12, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ELF32_R_SYM(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %116
  %126 = load i32, i32* %16, align 4
  %127 = load i32*, i32** %14, align 8
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, %126
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %125, %116
  br label %190

131:                                              ; preds = %46, %46
  %132 = load i32, i32* %16, align 4
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %132
  store i32 %135, i32* %133, align 4
  br label %190

136:                                              ; preds = %46
  %137 = load i32*, i32** %14, align 8
  %138 = ptrtoint i32* %137 to i64
  %139 = add i64 %138, 2
  %140 = load i32, i32* %16, align 4
  %141 = sext i32 %140 to i64
  %142 = sub i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp sgt i32 %144, 32767
  br i1 %145, label %149, label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %16, align 4
  %148 = icmp slt i32 %147, -32768
  br i1 %148, label %149, label %150

149:                                              ; preds = %146, %136
  br label %195

150:                                              ; preds = %146
  %151 = load i32, i32* %16, align 4
  %152 = trunc i32 %151 to i16
  %153 = load i32*, i32** %14, align 8
  %154 = bitcast i32* %153 to i16*
  store i16 %152, i16* %154, align 2
  br label %155

155:                                              ; preds = %150
  br label %190

156:                                              ; preds = %46
  %157 = load i32*, i32** %14, align 8
  %158 = ptrtoint i32* %157 to i64
  %159 = add i64 %158, 1
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = sub i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp sgt i32 %164, 127
  br i1 %165, label %169, label %166

166:                                              ; preds = %156
  %167 = load i32, i32* %16, align 4
  %168 = icmp slt i32 %167, -128
  br i1 %168, label %169, label %170

169:                                              ; preds = %166, %156
  br label %195

170:                                              ; preds = %166
  %171 = load i32, i32* %16, align 4
  %172 = trunc i32 %171 to i8
  %173 = load i32*, i32** %14, align 8
  %174 = bitcast i32* %173 to i8*
  store i8 %172, i8* %174, align 1
  br label %175

175:                                              ; preds = %170
  br label %190

176:                                              ; preds = %46
  %177 = load %struct.module*, %struct.module** %11, align 8
  %178 = getelementptr inbounds %struct.module, %struct.module* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %181 = load i32, i32* %12, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @ELF32_R_TYPE(i32 %185)
  %187 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %179, i32 %186)
  %188 = load i32, i32* @ENOEXEC, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %6, align 4
  br label %208

190:                                              ; preds = %175, %155, %131, %130, %100
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %12, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %12, align 4
  br label %34

194:                                              ; preds = %34
  store i32 0, i32* %6, align 4
  br label %208

195:                                              ; preds = %169, %149
  %196 = load %struct.module*, %struct.module** %11, align 8
  %197 = getelementptr inbounds %struct.module, %struct.module* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %200 = load i32, i32* %12, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %198, i32 %204)
  %206 = load i32, i32* @ENOEXEC, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %195, %194, %176
  %209 = load i32, i32* %6, align 4
  ret i32 %209
}

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @ELF32_R_SYM(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

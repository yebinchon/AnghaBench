; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_32.c_apply_relocate_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_module_32.c_apply_relocate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.module = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Applying ADD relocate section %u to %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"REL24 value = %08X. location = %08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Location before: %08X.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Location after: %08X.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ie. jump to %08X+%08X = %08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: unknown ADD relocation: %u\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apply_relocate_add(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, %struct.module* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.module*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.module* %4, %struct.module** %11, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %13, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %31)
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %186, %5
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 12
  %44 = icmp ult i64 %35, %43
  br i1 %44, label %45, label %189

45:                                               ; preds = %33
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr i8, i8* %56, i64 %63
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %15, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.TYPE_6__*
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %74 = load i32, i32* %12, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ELF32_R_SYM(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %80
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %14, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %84, %90
  store i32 %91, i32* %16, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ELF32_R_TYPE(i32 %97)
  switch i32 %98, label %171 [
    i32 130, label %99
    i32 131, label %102
    i32 132, label %105
    i32 133, label %109
    i32 129, label %114
    i32 128, label %165
  ]

99:                                               ; preds = %45
  %100 = load i32, i32* %16, align 4
  %101 = load i32*, i32** %15, align 8
  store i32 %100, i32* %101, align 4
  br label %185

102:                                              ; preds = %45
  %103 = load i32, i32* %16, align 4
  %104 = load i32*, i32** %15, align 8
  store i32 %103, i32* %104, align 4
  br label %185

105:                                              ; preds = %45
  %106 = load i32, i32* %16, align 4
  %107 = ashr i32 %106, 16
  %108 = load i32*, i32** %15, align 8
  store i32 %107, i32* %108, align 4
  br label %185

109:                                              ; preds = %45
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 32768
  %112 = ashr i32 %111, 16
  %113 = load i32*, i32** %15, align 8
  store i32 %112, i32* %113, align 4
  br label %185

114:                                              ; preds = %45
  %115 = load i32, i32* %16, align 4
  %116 = load i32*, i32** %15, align 8
  %117 = ptrtoint i32* %116 to i32
  %118 = sub nsw i32 %115, %117
  %119 = icmp slt i32 %118, -33554432
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %16, align 4
  %122 = load i32*, i32** %15, align 8
  %123 = ptrtoint i32* %122 to i32
  %124 = sub nsw i32 %121, %123
  %125 = icmp sge i32 %124, 33554432
  br i1 %125, label %126, label %132

126:                                              ; preds = %120, %114
  %127 = load i32*, i32** %15, align 8
  %128 = load i32, i32* %16, align 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %130 = load %struct.module*, %struct.module** %11, align 8
  %131 = call i32 @do_plt_call(i32* %127, i32 %128, %struct.TYPE_7__* %129, %struct.module* %130)
  store i32 %131, i32* %16, align 4
  br label %132

132:                                              ; preds = %126, %120
  %133 = load i32, i32* %16, align 4
  %134 = load i32*, i32** %15, align 8
  %135 = ptrtoint i32* %134 to i32
  %136 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %135)
  %137 = load i32*, i32** %15, align 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  %140 = load i32*, i32** %15, align 8
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, -67108861
  %143 = load i32, i32* %16, align 4
  %144 = load i32*, i32** %15, align 8
  %145 = ptrtoint i32* %144 to i32
  %146 = sub nsw i32 %143, %145
  %147 = and i32 %146, 67108860
  %148 = or i32 %142, %147
  %149 = load i32*, i32** %15, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %15, align 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  %153 = load i32*, i32** %15, align 8
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 67108860
  %156 = load i32*, i32** %15, align 8
  %157 = ptrtoint i32* %156 to i32
  %158 = load i32*, i32** %15, align 8
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 67108860
  %161 = load i32*, i32** %15, align 8
  %162 = ptrtoint i32* %161 to i32
  %163 = add nsw i32 %160, %162
  %164 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %155, i32 %157, i32 %163)
  br label %185

165:                                              ; preds = %45
  %166 = load i32, i32* %16, align 4
  %167 = load i32*, i32** %15, align 8
  %168 = ptrtoint i32* %167 to i32
  %169 = sub nsw i32 %166, %168
  %170 = load i32*, i32** %15, align 8
  store i32 %169, i32* %170, align 4
  br label %185

171:                                              ; preds = %45
  %172 = load %struct.module*, %struct.module** %11, align 8
  %173 = getelementptr inbounds %struct.module, %struct.module* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %176 = load i32, i32* %12, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @ELF32_R_TYPE(i32 %180)
  %182 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %174, i32 %181)
  %183 = load i32, i32* @ENOEXEC, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %6, align 4
  br label %190

185:                                              ; preds = %165, %132, %109, %105, %102, %99
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %12, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %33

189:                                              ; preds = %33
  store i32 0, i32* %6, align 4
  br label %190

190:                                              ; preds = %189, %171
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ELF32_R_SYM(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @do_plt_call(i32*, i32, %struct.TYPE_7__*, %struct.module*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_module.c_apply_relocate_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_module.c_apply_relocate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.module = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"module %s: Unknown relocation: %u\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4

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
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i16*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.module* %4, %struct.module** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %13, align 8
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %161, %5
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 12
  %36 = icmp ult i64 %27, %35
  br i1 %36, label %37, label %164

37:                                               ; preds = %25
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr i8, i8* %48, i64 %55
  %57 = bitcast i8* %56 to i32*
  store i32* %57, i32** %15, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.TYPE_5__*
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %66 = load i32, i32* %12, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ELF32_R_SYM(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %72
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %14, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ELF32_R_TYPE(i32 %79)
  switch i32 %80, label %146 [
    i32 133, label %81
    i32 130, label %93
    i32 129, label %108
    i32 128, label %109
    i32 132, label %112
    i32 131, label %129
  ]

81:                                               ; preds = %37
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  %92 = load i32*, i32** %15, align 8
  store i32 %91, i32* %92, align 4
  br label %160

93:                                               ; preds = %37
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %95 = load i32, i32* %12, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = load i32*, i32** %15, align 8
  %105 = ptrtoint i32* %104 to i32
  %106 = sub nsw i32 %103, %105
  %107 = load i32*, i32** %15, align 8
  store i32 %106, i32* %107, align 4
  br label %160

108:                                              ; preds = %37
  br label %160

109:                                              ; preds = %37
  %110 = load i32*, i32** %15, align 8
  %111 = call i32 @jsri_2_lrw_jsr(i32* %110)
  br label %160

112:                                              ; preds = %37
  %113 = load i32*, i32** %15, align 8
  %114 = bitcast i32* %113 to i16*
  %115 = getelementptr inbounds i16, i16* %114, i64 1
  store i16* %115, i16** %16, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %117 = load i32, i32* %12, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %121, %124
  %126 = ashr i32 %125, 16
  %127 = trunc i32 %126 to i16
  %128 = load i16*, i16** %16, align 8
  store i16 %127, i16* %128, align 2
  br label %160

129:                                              ; preds = %37
  %130 = load i32*, i32** %15, align 8
  %131 = bitcast i32* %130 to i16*
  %132 = getelementptr inbounds i16, i16* %131, i64 1
  store i16* %132, i16** %16, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %134 = load i32, i32* %12, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %138, %141
  %143 = and i32 %142, 65535
  %144 = trunc i32 %143 to i16
  %145 = load i16*, i16** %16, align 8
  store i16 %144, i16* %145, align 2
  br label %160

146:                                              ; preds = %37
  %147 = load %struct.module*, %struct.module** %11, align 8
  %148 = getelementptr inbounds %struct.module, %struct.module* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %151 = load i32, i32* %12, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @ELF32_R_TYPE(i32 %155)
  %157 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %149, i32 %156)
  %158 = load i32, i32* @ENOEXEC, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %6, align 4
  br label %165

160:                                              ; preds = %129, %112, %109, %108, %93, %81
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %12, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %25

164:                                              ; preds = %25
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %164, %146
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i32 @ELF32_R_SYM(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @jsri_2_lrw_jsr(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_module.c_apply_relocate_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/kernel/extr_module.c_apply_relocate_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.module = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"Applying add relocation section %u to %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"R_MICROBLAZE_64_PCREL (%08lx)\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"R_MICROBLAZE_32_PCREL_LO\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"R_MICROBLAZE_64_NONE\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"R_MICROBLAZE_NONE\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"module %s: Unknown relocation: %u\0A\00", align 1
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
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
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
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %31)
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %168, %5
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 24
  %44 = icmp ult i64 %35, %43
  br i1 %44, label %45, label %171

45:                                               ; preds = %33
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = load i32, i32* %12, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr i8, i8* %56, i64 %63
  %65 = bitcast i8* %64 to i64*
  store i64* %65, i64** %15, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.TYPE_5__*
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %74 = load i32, i32* %12, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ELF32_R_SYM(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %80
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %14, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %84, %90
  store i64 %91, i64* %16, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ELF32_R_TYPE(i32 %97)
  switch i32 %98, label %153 [
    i32 133, label %99
    i32 131, label %102
    i32 129, label %121
    i32 132, label %147
    i32 130, label %149
    i32 128, label %151
  ]

99:                                               ; preds = %45
  %100 = load i64, i64* %16, align 8
  %101 = load i64*, i64** %15, align 8
  store i64 %100, i64* %101, align 8
  br label %167

102:                                              ; preds = %45
  %103 = load i64*, i64** %15, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = and i64 %105, 4294901760
  %107 = load i64, i64* %16, align 8
  %108 = lshr i64 %107, 16
  %109 = or i64 %106, %108
  %110 = load i64*, i64** %15, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  store i64 %109, i64* %111, align 8
  %112 = load i64*, i64** %15, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = and i64 %114, 4294901760
  %116 = load i64, i64* %16, align 8
  %117 = and i64 %116, 65535
  %118 = or i64 %115, %117
  %119 = load i64*, i64** %15, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 1
  store i64 %118, i64* %120, align 8
  br label %167

121:                                              ; preds = %45
  %122 = load i64*, i64** %15, align 8
  %123 = ptrtoint i64* %122 to i64
  %124 = add i64 %123, 4
  %125 = load i64, i64* %16, align 8
  %126 = sub i64 %125, %124
  store i64 %126, i64* %16, align 8
  %127 = load i64*, i64** %15, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = and i64 %129, 4294901760
  %131 = load i64, i64* %16, align 8
  %132 = lshr i64 %131, 16
  %133 = or i64 %130, %132
  %134 = load i64*, i64** %15, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 0
  store i64 %133, i64* %135, align 8
  %136 = load i64*, i64** %15, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 1
  %138 = load i64, i64* %137, align 8
  %139 = and i64 %138, 4294901760
  %140 = load i64, i64* %16, align 8
  %141 = and i64 %140, 65535
  %142 = or i64 %139, %141
  %143 = load i64*, i64** %15, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 1
  store i64 %142, i64* %144, align 8
  %145 = load i64, i64* %16, align 8
  %146 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %145)
  br label %167

147:                                              ; preds = %45
  %148 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %167

149:                                              ; preds = %45
  %150 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %167

151:                                              ; preds = %45
  %152 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %167

153:                                              ; preds = %45
  %154 = load %struct.module*, %struct.module** %11, align 8
  %155 = getelementptr inbounds %struct.module, %struct.module* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %158 = load i32, i32* %12, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @ELF32_R_TYPE(i32 %162)
  %164 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %156, i32 %163)
  %165 = load i32, i32* @ENOEXEC, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %6, align 4
  br label %172

167:                                              ; preds = %151, %149, %147, %121, %102, %99
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %12, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %33

171:                                              ; preds = %33
  store i32 0, i32* %6, align 4
  br label %172

172:                                              ; preds = %171, %153
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @ELF32_R_SYM(i32) #1

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

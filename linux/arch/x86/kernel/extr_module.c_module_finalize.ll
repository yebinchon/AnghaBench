; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_module.c_module_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_module.c_module_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.module = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c".altinstructions\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c".smp_locks\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c".parainstructions\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c".orc_unwind\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c".orc_unwind_ip\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @module_finalize(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, %struct.module* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.module* %2, %struct.module** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = bitcast %struct.TYPE_6__* %19 to i8*
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %20, i64 %28
  store i8* %29, i8** %14, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %7, align 8
  br label %31

31:                                               ; preds = %107, %3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %37
  %39 = icmp ult %struct.TYPE_5__* %32, %38
  br i1 %39, label %40, label %110

40:                                               ; preds = %31
  %41 = load i8*, i8** %14, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** %8, align 8
  br label %51

51:                                               ; preds = %49, %40
  %52 = load i8*, i8** %14, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %51
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %9, align 8
  br label %62

62:                                               ; preds = %60, %51
  %63 = load i8*, i8** %14, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %62
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %10, align 8
  br label %73

73:                                               ; preds = %71, %62
  %74 = load i8*, i8** %14, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = call i32 @strcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %11, align 8
  br label %84

84:                                               ; preds = %82, %73
  %85 = load i8*, i8** %14, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  %91 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %84
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %94, %struct.TYPE_5__** %12, align 8
  br label %95

95:                                               ; preds = %93, %84
  %96 = load i8*, i8** %14, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %95
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %105, %struct.TYPE_5__** %13, align 8
  br label %106

106:                                              ; preds = %104, %95
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 1
  store %struct.TYPE_5__* %109, %struct.TYPE_5__** %7, align 8
  br label %31

110:                                              ; preds = %31
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %112 = icmp ne %struct.TYPE_5__* %111, null
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  store i8* %117, i8** %15, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr i8, i8* %119, i64 %123
  %125 = call i32 @apply_alternatives(i8* %118, i8* %124)
  br label %126

126:                                              ; preds = %113, %110
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %128 = icmp ne %struct.TYPE_5__* %127, null
  br i1 %128, label %129, label %160

129:                                              ; preds = %126
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %131 = icmp ne %struct.TYPE_5__* %130, null
  br i1 %131, label %132, label %160

132:                                              ; preds = %129
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = inttoptr i64 %135 to i8*
  store i8* %136, i8** %16, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i8*
  store i8* %140, i8** %17, align 8
  %141 = load %struct.module*, %struct.module** %6, align 8
  %142 = load %struct.module*, %struct.module** %6, align 8
  %143 = getelementptr inbounds %struct.module, %struct.module* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %16, align 8
  %146 = load i8*, i8** %16, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr i8, i8* %146, i64 %150
  %152 = load i8*, i8** %17, align 8
  %153 = load i8*, i8** %17, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr i8, i8* %153, i64 %157
  %159 = call i32 @alternatives_smp_module_add(%struct.module* %141, i32 %144, i8* %145, i8* %151, i8* %152, i8* %158)
  br label %160

160:                                              ; preds = %132, %129, %126
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %162 = icmp ne %struct.TYPE_5__* %161, null
  br i1 %162, label %163, label %176

163:                                              ; preds = %160
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i8*
  store i8* %167, i8** %18, align 8
  %168 = load i8*, i8** %18, align 8
  %169 = load i8*, i8** %18, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr i8, i8* %169, i64 %173
  %175 = call i32 @apply_paravirt(i8* %168, i8* %174)
  br label %176

176:                                              ; preds = %163, %160
  %177 = load %struct.module*, %struct.module** %6, align 8
  %178 = call i32 @jump_label_apply_nops(%struct.module* %177)
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %180 = icmp ne %struct.TYPE_5__* %179, null
  br i1 %180, label %181, label %201

181:                                              ; preds = %176
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %183 = icmp ne %struct.TYPE_5__* %182, null
  br i1 %183, label %184, label %201

184:                                              ; preds = %181
  %185 = load %struct.module*, %struct.module** %6, align 8
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = inttoptr i64 %188 to i8*
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to i8*
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @unwind_module_init(%struct.module* %185, i8* %189, i32 %192, i8* %196, i32 %199)
  br label %201

201:                                              ; preds = %184, %181, %176
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @apply_alternatives(i8*, i8*) #1

declare dso_local i32 @alternatives_smp_module_add(%struct.module*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @apply_paravirt(i8*, i8*) #1

declare dso_local i32 @jump_label_apply_nops(%struct.module*) #1

declare dso_local i32 @unwind_module_init(%struct.module*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

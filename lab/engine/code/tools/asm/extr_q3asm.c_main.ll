; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_main.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@outputFilename = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"q3asm\00", align 1
@numAsmFiles = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"-o must precede a filename\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"-f must precede a filename\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"-b requires an argument\00", align 1
@symtablelen = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@qtrue = common dso_local global i8* null, align 8
@options = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"-vq3\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Unknown option: %s\00", align 1
@asmFileNames = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [20 x i8] c"No file to assemble\00", align 1
@symbols = common dso_local global %struct.TYPE_4__* null, align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"%d symbols defined\0A\00", align 1
@symtable = common dso_local global i32 0, align 4
@optable = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [23 x i8] c"%5.0f seconds elapsed\0A\00", align 1
@errorCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @ShowHelp(i8* %15)
  br label %17

17:                                               ; preds = %12, %2
  %18 = call double (...) @I_FloatTime()
  store double %18, double* %7, align 8
  %19 = load i32, i32* @outputFilename, align 4
  %20 = call i32 @strcpy(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @numAsmFiles, align 8
  store i32 1, i32* %6, align 4
  br label %21

21:                                               ; preds = %177, %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %180

25:                                               ; preds = %21
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 45
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %180

36:                                               ; preds = %25
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %36
  %45 = load i8**, i8*** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load i8**, i8*** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %52, %44, %36
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @ShowHelp(i8* %63)
  br label %65

65:                                               ; preds = %60, %52
  %66 = load i8**, i8*** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %4, align 4
  %76 = sub nsw i32 %75, 1
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32, i32* @outputFilename, align 4
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strcpy(i32 %81, i8* %87)
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %177

91:                                               ; preds = %65
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %91
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %4, align 4
  %102 = sub nsw i32 %101, 1
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %99
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %107, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @ParseOptionFile(i8* %112)
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %177

116:                                              ; preds = %91
  %117 = load i8**, i8*** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %140, label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %4, align 4
  %127 = sub nsw i32 %126, 1
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %124
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  %134 = load i8**, i8*** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @atoiNoCap(i8* %138)
  store i32 %139, i32* @symtablelen, align 4
  br label %177

140:                                              ; preds = %116
  %141 = load i8**, i8*** %5, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %140
  %149 = load i8*, i8** @qtrue, align 8
  store i8* %149, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 0), align 8
  br label %177

150:                                              ; preds = %140
  %151 = load i8**, i8*** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %150
  %159 = load i8*, i8** @qtrue, align 8
  store i8* %159, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 2), align 8
  br label %177

160:                                              ; preds = %150
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %160
  %169 = load i8*, i8** @qtrue, align 8
  store i8* %169, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 1), align 8
  br label %177

170:                                              ; preds = %160
  %171 = load i8**, i8*** %5, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %170, %168, %158, %148, %131, %106, %80
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %21

180:                                              ; preds = %35, %21
  br label %181

181:                                              ; preds = %197, %180
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %4, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %200

185:                                              ; preds = %181
  %186 = load i8**, i8*** %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @copystring(i8* %190)
  %192 = load i32*, i32** @asmFileNames, align 8
  %193 = load i64, i64* @numAsmFiles, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32 %191, i32* %194, align 4
  %195 = load i64, i64* @numAsmFiles, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* @numAsmFiles, align 8
  br label %197

197:                                              ; preds = %185
  %198 = load i32, i32* %6, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %6, align 4
  br label %181

200:                                              ; preds = %181
  %201 = load i64, i64* @numAsmFiles, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  br label %205

205:                                              ; preds = %203, %200
  %206 = call i32 (...) @InitTables()
  %207 = call i32 (...) @Assemble()
  store i32 0, i32* %6, align 4
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** @symbols, align 8
  store %struct.TYPE_4__* %208, %struct.TYPE_4__** %9, align 8
  br label %209

209:                                              ; preds = %213, %205
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %211 = icmp ne %struct.TYPE_4__* %210, null
  br i1 %211, label %212, label %219

212:                                              ; preds = %209
  br label %213

213:                                              ; preds = %212
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  store %struct.TYPE_4__* %216, %struct.TYPE_4__** %9, align 8
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %6, align 4
  br label %209

219:                                              ; preds = %209
  %220 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 0), align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %230

222:                                              ; preds = %219
  %223 = load i32, i32* %6, align 4
  %224 = sitofp i32 %223 to double
  %225 = call i32 @report(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), double %224)
  %226 = load i32, i32* @symtable, align 4
  %227 = call i32 @hashtable_stats(i32 %226)
  %228 = load i32, i32* @optable, align 4
  %229 = call i32 @hashtable_stats(i32 %228)
  br label %230

230:                                              ; preds = %222, %219
  %231 = call double (...) @I_FloatTime()
  store double %231, double* %8, align 8
  %232 = load double, double* %8, align 8
  %233 = load double, double* %7, align 8
  %234 = fsub double %232, %233
  %235 = call i32 @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), double %234)
  %236 = load i32, i32* @errorCount, align 4
  ret i32 %236
}

declare dso_local i32 @ShowHelp(i8*) #1

declare dso_local double @I_FloatTime(...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32 @ParseOptionFile(i8*) #1

declare dso_local i32 @atoiNoCap(i8*) #1

declare dso_local i32 @copystring(i8*) #1

declare dso_local i32 @InitTables(...) #1

declare dso_local i32 @Assemble(...) #1

declare dso_local i32 @report(i8*, double) #1

declare dso_local i32 @hashtable_stats(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

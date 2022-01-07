; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_Assemble.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_Assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@MAX_OS_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"outputFilename: %s\0A\00", align 1
@outputFilename = common dso_local global i32 0, align 4
@numAsmFiles = common dso_local global i32 0, align 4
@asmFileNames = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c".asm\00", align 1
@asmFiles = common dso_local global i8** null, align 8
@passNumber = common dso_local global i32 0, align 4
@segment = common dso_local global %struct.TYPE_3__* null, align 8
@DATASEG = common dso_local global i64 0, align 8
@LITSEG = common dso_local global i64 0, align 8
@BSSSEG = common dso_local global i64 0, align 8
@JTRGSEG = common dso_local global i64 0, align 8
@NUM_SEGMENTS = common dso_local global i32 0, align 4
@instructionCount = common dso_local global i64 0, align 8
@currentFileIndex = common dso_local global i32 0, align 4
@currentFileName = common dso_local global i32 0, align 4
@currentFileLine = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"pass %i: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"_stackStart\00", align 1
@stackSize = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"_stackEnd\00", align 1
@options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Assemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Assemble() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @MAX_OS_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = load i32, i32* @outputFilename, align 4
  %10 = call i32 (i8*, i32, ...) @report(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %28, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @numAsmFiles, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i32*, i32** @asmFileNames, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcpy(i8* %8, i32 %20)
  %22 = call i32 @DefaultExtension(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i8**, i8*** @asmFiles, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = call i32 @LoadFile(i8* %8, i8** %26)
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %11

31:                                               ; preds = %11
  store i32 0, i32* @passNumber, align 4
  br label %32

32:                                               ; preds = %152, %31
  %33 = load i32, i32* @passNumber, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %155

35:                                               ; preds = %32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %37 = load i64, i64* @DATASEG, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %42 = load i64, i64* @LITSEG, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %46 = load i64, i64* @LITSEG, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %51 = load i64, i64* @LITSEG, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %49, %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %57 = load i64, i64* @BSSSEG, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %61 = load i64, i64* @BSSSEG, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %66 = load i64, i64* @BSSSEG, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %64, %69
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %72 = load i64, i64* @JTRGSEG, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 4
  store i32 0, i32* %1, align 4
  br label %75

75:                                               ; preds = %85, %35
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* @NUM_SEGMENTS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %1, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %1, align 4
  br label %75

88:                                               ; preds = %75
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %90 = load i64, i64* @DATASEG, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32 4, i32* %92, align 4
  store i64 0, i64* @instructionCount, align 8
  store i32 0, i32* %1, align 4
  br label %93

93:                                               ; preds = %121, %88
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* @numAsmFiles, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %93
  %98 = load i32, i32* %1, align 4
  store i32 %98, i32* @currentFileIndex, align 4
  %99 = load i32*, i32** @asmFileNames, align 8
  %100 = load i32, i32* %1, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* @currentFileName, align 4
  store i64 0, i64* @currentFileLine, align 8
  %104 = load i32, i32* @passNumber, align 4
  %105 = load i32, i32* @currentFileName, align 4
  %106 = call i32 (i8*, i32, ...) @report(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105)
  %107 = call i32 @fflush(i32* null)
  %108 = load i8**, i8*** @asmFiles, align 8
  %109 = load i32, i32* %1, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %4, align 8
  br label %113

113:                                              ; preds = %116, %97
  %114 = load i8*, i8** %4, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i8*, i8** %4, align 8
  %118 = call i8* @ExtractLine(i8* %117)
  store i8* %118, i8** %4, align 8
  %119 = call i32 (...) @AssembleLine()
  br label %113

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %1, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %1, align 4
  br label %93

124:                                              ; preds = %93
  store i32 0, i32* %1, align 4
  br label %125

125:                                              ; preds = %143, %124
  %126 = load i32, i32* %1, align 4
  %127 = load i32, i32* @NUM_SEGMENTS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %125
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 3
  %137 = and i32 %136, -4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %139 = load i32, i32* %1, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  store i32 %137, i32* %142, align 4
  br label %143

143:                                              ; preds = %129
  %144 = load i32, i32* %1, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %1, align 4
  br label %125

146:                                              ; preds = %125
  %147 = load i32, i32* @passNumber, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = call i32 (...) @sort_symbols()
  br label %151

151:                                              ; preds = %149, %146
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* @passNumber, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* @passNumber, align 4
  br label %32

155:                                              ; preds = %32
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %157 = load i64, i64* @BSSSEG, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @DefineSymbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = load i64, i64* @stackSize, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %164 = load i64, i64* @BSSSEG, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %162
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %166, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** @segment, align 8
  %172 = load i64, i64* @BSSSEG, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @DefineSymbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %175)
  %177 = call i32 (...) @WriteVmFile()
  %178 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %155
  %181 = call i32 (...) @WriteMapFile()
  br label %182

182:                                              ; preds = %180, %155
  %183 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %183)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @report(i8*, i32, ...) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @DefaultExtension(i8*, i8*) #2

declare dso_local i32 @LoadFile(i8*, i8**) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i8* @ExtractLine(i8*) #2

declare dso_local i32 @AssembleLine(...) #2

declare dso_local i32 @sort_symbols(...) #2

declare dso_local i32 @DefineSymbol(i8*, i32) #2

declare dso_local i32 @WriteVmFile(...) #2

declare dso_local i32 @WriteMapFile(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

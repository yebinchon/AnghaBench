; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_Dump_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_Dump_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i16*, i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"usage: condump <filename>\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Con_Dump_f: Only the \22.txt\22 extension is supported by this command!\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ERROR: couldn't open %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Dumped console text to %s.\0A\00", align 1
@con = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_Dump_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAX_QPATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = call i32 (...) @Cmd_Argc()
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %167

19:                                               ; preds = %0
  %20 = call i32 @Cmd_Argv(i32 1)
  %21 = trunc i64 %12 to i32
  %22 = call i32 @Q_strncpyz(i8* %14, i32 %20, i32 %21)
  %23 = trunc i64 %12 to i32
  %24 = call i32 @COM_DefaultExtension(i8* %14, i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @COM_CompareExtension(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %167

29:                                               ; preds = %19
  %30 = call i32 @FS_FOpenFileWrite(i8* %14)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  store i32 1, i32* %10, align 4
  br label %167

35:                                               ; preds = %29
  %36 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %14)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 1), align 4
  %39 = sub nsw i32 %37, %38
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %78, %35
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %41
  %46 = load i16*, i16** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 2), align 8
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 1), align 4
  %49 = srem i32 %47, %48
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %46, i64 %52
  store i16* %53, i16** %4, align 8
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %69, %45
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i16*, i16** %4, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i16, i16* %59, i64 %61
  %63 = load i16, i16* %62, align 2
  %64 = sext i16 %63 to i32
  %65 = and i32 %64, 255
  %66 = icmp ne i32 %65, 32
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %72

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %2, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %2, align 4
  br label %54

72:                                               ; preds = %67, %54
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %81

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %41

81:                                               ; preds = %76, %41
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 2
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i8* @Hunk_AllocateTempMemory(i32 %86)
  store i8* %87, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %159, %81
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 0), align 8
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %162

97:                                               ; preds = %93
  %98 = load i16*, i16** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 2), align 8
  %99 = load i32, i32* %1, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 1), align 4
  %101 = srem i32 %99, %100
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %103 = mul nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i16, i16* %98, i64 %104
  store i16* %105, i16** %4, align 8
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %123, %97
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load i16*, i16** %4, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, i16* %111, i64 %113
  %115 = load i16, i16* %114, align 2
  %116 = sext i16 %115 to i32
  %117 = and i32 %116, 255
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 %118, i8* %122, align 1
  br label %123

123:                                              ; preds = %110
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %106

126:                                              ; preds = %106
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @con, i32 0, i32 3), align 8
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %147, %126
  %130 = load i32, i32* %2, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* %2, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 32
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = load i8*, i8** %7, align 8
  %142 = load i32, i32* %2, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  store i8 0, i8* %144, align 1
  br label %146

145:                                              ; preds = %132
  br label %150

146:                                              ; preds = %140
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %2, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %2, align 4
  br label %129

150:                                              ; preds = %145, %129
  %151 = load i8*, i8** %7, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @Q_strcat(i8* %151, i32 %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i8*, i8** %7, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @strlen(i8* %155)
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @FS_Write(i8* %154, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %150
  %160 = load i32, i32* %1, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %1, align 4
  br label %93

162:                                              ; preds = %93
  %163 = load i8*, i8** %7, align 8
  %164 = call i32 @Hunk_FreeTempMemory(i8* %163)
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @FS_FCloseFile(i32 %165)
  store i32 0, i32* %10, align 4
  br label %167

167:                                              ; preds = %162, %33, %27, %17
  %168 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %168)
  %169 = load i32, i32* %10, align 4
  switch i32 %169, label %171 [
    i32 0, label %170
    i32 1, label %170
  ]

170:                                              ; preds = %167, %167
  ret void

171:                                              ; preds = %167
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Cmd_Argc(...) #2

declare dso_local i32 @Com_Printf(i8*, ...) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @Cmd_Argv(i32) #2

declare dso_local i32 @COM_DefaultExtension(i8*, i32, i8*) #2

declare dso_local i32 @COM_CompareExtension(i8*, i8*) #2

declare dso_local i32 @FS_FOpenFileWrite(i8*) #2

declare dso_local i8* @Hunk_AllocateTempMemory(i32) #2

declare dso_local i32 @Q_strcat(i8*, i32, i8*) #2

declare dso_local i32 @FS_Write(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @Hunk_FreeTempMemory(i8*) #2

declare dso_local i32 @FS_FCloseFile(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

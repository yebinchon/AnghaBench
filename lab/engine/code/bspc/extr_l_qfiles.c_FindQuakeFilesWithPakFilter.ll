; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_qfiles.c_FindQuakeFilesWithPakFilter.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_l_qfiles.c_FindQuakeFilesWithPakFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i8*, i8*, %struct.TYPE_13__*, i32, i64, i64 }
%struct.TYPE_14__ = type { i32, i8** }
%struct.stat = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".pk3\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @FindQuakeFilesWithPakFilter(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %127

24:                                               ; preds = %2
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %127

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @glob(i8* %29, i32 0, i32* null, %struct.TYPE_14__* %5)
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %122, %28
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %125

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcpy(i8* %18, i8* %42)
  %44 = call i32 @stat(i8* %18, %struct.stat* %6)
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @S_IFDIR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %36
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @strcpy(i8* %21, i8* %51)
  %53 = load i32, i32* @MAX_PATH, align 4
  %54 = call i32 @AppendPathSeperator(i8* %21, i32 %53)
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 @strcat(i8* %21, i8* %55)
  %57 = call %struct.TYPE_13__* @FindQuakeFilesWithPakFilter(i8* null, i8* %21)
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %10, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = icmp ne %struct.TYPE_13__* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %63, align 8
  br label %66

64:                                               ; preds = %50
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %8, align 8
  br label %66

66:                                               ; preds = %64, %60
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %9, align 8
  br label %68

68:                                               ; preds = %73, %66
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = icmp ne %struct.TYPE_13__* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %9, align 8
  br label %68

77:                                               ; preds = %68
  br label %121

78:                                               ; preds = %36
  %79 = call i8* @StringContains(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  store i8* %79, i8** %14, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load i8*, i8** %14, align 8
  %84 = call i64 @strlen(i8* %18)
  %85 = getelementptr inbounds i8, i8* %18, i64 %84
  %86 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %87 = sub i64 0, %86
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = icmp eq i8* %83, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i8*, i8** %4, align 8
  %92 = call %struct.TYPE_13__* @FindQuakeFilesInZip(i8* %18, i8* %91)
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %10, align 8
  br label %96

93:                                               ; preds = %82, %78
  %94 = load i8*, i8** %4, align 8
  %95 = call %struct.TYPE_13__* @FindQuakeFilesInPak(i8* %18, i8* %94)
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %10, align 8
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %98 = icmp ne %struct.TYPE_13__* %97, null
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %101 = icmp ne %struct.TYPE_13__* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  store %struct.TYPE_13__* %103, %struct.TYPE_13__** %105, align 8
  br label %108

106:                                              ; preds = %99
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %8, align 8
  br label %108

108:                                              ; preds = %106, %102
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %9, align 8
  br label %110

110:                                              ; preds = %115, %108
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = icmp ne %struct.TYPE_13__* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  store %struct.TYPE_13__* %118, %struct.TYPE_13__** %9, align 8
  br label %110

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %96
  br label %121

121:                                              ; preds = %120, %77
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %31

125:                                              ; preds = %31
  %126 = call i32 @globfree(%struct.TYPE_14__* %5)
  br label %187

127:                                              ; preds = %24, %2
  %128 = load i8*, i8** %4, align 8
  %129 = call i32 @glob(i8* %128, i32 0, i32* null, %struct.TYPE_14__* %5)
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %182, %127
  %131 = load i32, i32* %7, align 4
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %185

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %137 = load i8**, i8*** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strcpy(i8* %21, i8* %141)
  %143 = call %struct.TYPE_13__* @malloc(i32 56)
  store %struct.TYPE_13__* %143, %struct.TYPE_13__** %10, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %145 = icmp ne %struct.TYPE_13__* %144, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %135
  %147 = call i32 @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %135
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %150 = call i32 @memset(%struct.TYPE_13__* %149, i32 0, i32 56)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strcpy(i8* %153, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @strcpy(i8* %157, i8* %21)
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @strcpy(i8* %161, i8* %21)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 6
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 5
  store i64 0, i64* %166, align 8
  %167 = call i32 @QuakeFileType(i8* %21)
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %171, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %173 = icmp ne %struct.TYPE_13__* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %148
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 3
  store %struct.TYPE_13__* %175, %struct.TYPE_13__** %177, align 8
  br label %180

178:                                              ; preds = %148
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %179, %struct.TYPE_13__** %8, align 8
  br label %180

180:                                              ; preds = %178, %174
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %181, %struct.TYPE_13__** %9, align 8
  br label %182

182:                                              ; preds = %180
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %130

185:                                              ; preds = %130
  %186 = call i32 @globfree(%struct.TYPE_14__* %5)
  br label %187

187:                                              ; preds = %185, %125
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %189 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %189)
  ret %struct.TYPE_13__* %188
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @glob(i8*, i32, i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @AppendPathSeperator(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i8* @StringContains(i8*, i8*, i32) #2

declare dso_local %struct.TYPE_13__* @FindQuakeFilesInZip(i8*, i8*) #2

declare dso_local %struct.TYPE_13__* @FindQuakeFilesInPak(i8*, i8*) #2

declare dso_local i32 @globfree(%struct.TYPE_14__*) #2

declare dso_local %struct.TYPE_13__* @malloc(i32) #2

declare dso_local i32 @Error(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @QuakeFileType(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

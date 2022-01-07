; ModuleID = '/home/carl/AnghaBench/htop/extr_OpenFilesScreen.c_OpenFilesScreen_scan.c'
source_filename = "/home/carl/AnghaBench/htop/extr_OpenFilesScreen.c_OpenFilesScreen_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i8** }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"Could not execute 'lsof'. Please make sure it is available in your $PATH.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed listing open files.\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%5.5s %7.7s %10.10s %10.10s %10.10s %s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OpenFilesScreen_scan(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %3, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = call i32 @Panel_getSelectedIndex(%struct.TYPE_15__* %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = call i32 @Panel_prune(%struct.TYPE_15__* %18)
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %21 = bitcast %struct.TYPE_18__* %20 to %struct.TYPE_17__*
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_16__* @OpenFilesScreen_getProcessData(i32 %23)
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %5, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 127
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %31 = call i32 @InfoScreen_addLine(%struct.TYPE_18__* %30, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %157

32:                                               ; preds = %1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %39 = call i32 @InfoScreen_addLine(%struct.TYPE_18__* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %156

40:                                               ; preds = %32
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %6, align 8
  br label %44

44:                                               ; preds = %137, %40
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = icmp ne %struct.TYPE_16__* %45, null
  br i1 %46, label %47, label %152

47:                                               ; preds = %44
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  store i8** %51, i8*** %7, align 8
  %52 = load i8**, i8*** %7, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 110
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load i8**, i8*** %7, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 110
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strlen(i8* %59)
  br label %62

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %56
  %63 = phi i32 [ %60, %56 ], [ 0, %61 ]
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 42, %64
  %66 = add nsw i32 %65, 5
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %10, align 8
  %71 = alloca i8, i64 %69, align 16
  store i64 %69, i64* %11, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i8**, i8*** %7, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 102
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %62
  %78 = load i8**, i8*** %7, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 102
  %80 = load i8*, i8** %79, align 8
  br label %82

81:                                               ; preds = %62
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i8* [ %80, %77 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %81 ]
  %84 = load i8**, i8*** %7, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 116
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i8**, i8*** %7, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 116
  %91 = load i8*, i8** %90, align 8
  br label %93

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i8* [ %91, %88 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %92 ]
  %95 = load i8**, i8*** %7, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 68
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i8**, i8*** %7, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 68
  %102 = load i8*, i8** %101, align 8
  br label %104

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %99
  %105 = phi i8* [ %102, %99 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %103 ]
  %106 = load i8**, i8*** %7, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 115
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i8**, i8*** %7, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 115
  %113 = load i8*, i8** %112, align 8
  br label %115

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %110
  %116 = phi i8* [ %113, %110 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %114 ]
  %117 = load i8**, i8*** %7, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 105
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i8**, i8*** %7, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 105
  %124 = load i8*, i8** %123, align 8
  br label %126

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %121
  %127 = phi i8* [ %124, %121 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %125 ]
  %128 = load i8**, i8*** %7, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 110
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i8**, i8*** %7, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 110
  %135 = load i8*, i8** %134, align 8
  br label %137

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %132
  %138 = phi i8* [ %135, %132 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %136 ]
  %139 = call i32 @xSnprintf(i8* %71, i32 %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %83, i8* %94, i8* %105, i8* %116, i8* %127, i8* %138)
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %141 = call i32 @InfoScreen_addLine(%struct.TYPE_18__* %140, i8* %71)
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = call i32 @OpenFiles_Data_clear(%struct.TYPE_14__* %143)
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %145, %struct.TYPE_16__** %12, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  store %struct.TYPE_16__* %148, %struct.TYPE_16__** %6, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %150 = call i32 @free(%struct.TYPE_16__* %149)
  %151 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %151)
  br label %44

152:                                              ; preds = %44
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = call i32 @OpenFiles_Data_clear(%struct.TYPE_14__* %154)
  br label %156

156:                                              ; preds = %152, %37
  br label %157

157:                                              ; preds = %156, %29
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %159 = call i32 @free(%struct.TYPE_16__* %158)
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @Vector_insertionSort(i32 %162)
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @Vector_insertionSort(i32 %166)
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @Panel_setSelected(%struct.TYPE_15__* %168, i32 %169)
  ret void
}

declare dso_local i32 @Panel_getSelectedIndex(%struct.TYPE_15__*) #1

declare dso_local i32 @Panel_prune(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @OpenFilesScreen_getProcessData(i32) #1

declare dso_local i32 @InfoScreen_addLine(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @OpenFiles_Data_clear(%struct.TYPE_14__*) #1

declare dso_local i32 @free(%struct.TYPE_16__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @Vector_insertionSort(i32) #1

declare dso_local i32 @Panel_setSelected(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

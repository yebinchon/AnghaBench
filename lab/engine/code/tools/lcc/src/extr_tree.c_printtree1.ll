; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_tree.c_printtree1.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_tree.c_printtree1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_11__**, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@printtree1.blanks = internal global [52 x i8] c"                                                   \00", align 16
@.str = private unnamed_addr constant [8 x i8] c"#%d%S%S\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %t\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" #%d\00", align 1
@FIELD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c" %s %d..%d\00", align 1
@CNST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" node=%p\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i32)* @printtree1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printtree1(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32*, i32** @stdout, align 8
  br label %15

13:                                               ; preds = %3
  %14 = load i32*, i32** @stderr, align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32* [ %12, %11 ], [ %14, %13 ]
  store i32* %16, i32** %7, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = icmp eq %struct.TYPE_11__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = call i32 @nodeid(%struct.TYPE_11__* %20)
  store i32 %21, i32* %8, align 4
  %22 = call i32* @printed(i32 %21)
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %15
  br label %190

26:                                               ; preds = %19
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %37

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 100
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  br label %37

37:                                               ; preds = %32, %31
  %38 = phi i32 [ 2, %31 ], [ %36, %32 ]
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (i32*, i8*, ...) @fprint(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %28, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @printtree1.blanks, i64 0, i64 0), i32 %38, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @printtree1.blanks, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @opname(i64 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32*, i8*, ...) @fprint(i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32* @printed(i32 %50)
  store i32 1, i32* %51, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %80, %37
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %55, align 8
  %57 = call i32 @NELEMS(%struct.TYPE_11__** %56)
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %52
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %62, i64 %64
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = icmp ne %struct.TYPE_11__* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %59
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %72, i64 %74
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = call i32 @nodeid(%struct.TYPE_11__* %76)
  %78 = call i32 (i32*, i8*, ...) @fprint(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %68, %59
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %52

83:                                               ; preds = %52
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @FIELD, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %120

89:                                               ; preds = %83
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = icmp ne %struct.TYPE_12__* %93, null
  br i1 %94, label %95, label %120

95:                                               ; preds = %89
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = call i32 @fieldsize(%struct.TYPE_12__* %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = call i32 @fieldright(%struct.TYPE_12__* %111)
  %113 = add nsw i32 %107, %112
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = call i32 @fieldright(%struct.TYPE_12__* %117)
  %119 = call i32 (i32*, i8*, ...) @fprint(i32* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %113, i32 %118)
  br label %155

120:                                              ; preds = %89, %83
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @generic(i64 %123)
  %125 = load i64, i64* @CNST, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %120
  %128 = load i32*, i32** %7, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @vtoa(i32 %131, i32 %135)
  %137 = call i32 (i32*, i8*, ...) @fprint(i32* %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  br label %154

138:                                              ; preds = %120
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = icmp ne %struct.TYPE_9__* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %138
  %145 = load i32*, i32** %7, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i32*, i8*, ...) @fprint(i32* %145, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %144, %138
  br label %154

154:                                              ; preds = %153, %127
  br label %155

155:                                              ; preds = %154, %95
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i32*, i32** %7, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i32*, i8*, ...) @fprint(i32* %161, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %160, %155
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 (i32*, i8*, ...) @fprint(i32* %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %169

169:                                              ; preds = %187, %166
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %172, align 8
  %174 = call i32 @NELEMS(%struct.TYPE_11__** %173)
  %175 = icmp slt i32 %170, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %169
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %179, i64 %181
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  call void @printtree1(%struct.TYPE_11__* %183, i32 %184, i32 %186)
  br label %187

187:                                              ; preds = %176
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  br label %169

190:                                              ; preds = %25, %169
  ret void
}

declare dso_local i32* @printed(i32) #1

declare dso_local i32 @nodeid(%struct.TYPE_11__*) #1

declare dso_local i32 @fprint(i32*, i8*, ...) #1

declare dso_local i32 @opname(i64) #1

declare dso_local i32 @NELEMS(%struct.TYPE_11__**) #1

declare dso_local i32 @fieldsize(%struct.TYPE_12__*) #1

declare dso_local i32 @fieldright(%struct.TYPE_12__*) #1

declare dso_local i64 @generic(i64) #1

declare dso_local i32 @vtoa(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

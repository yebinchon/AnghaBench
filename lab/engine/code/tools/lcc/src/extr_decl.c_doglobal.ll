; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_decl.c_doglobal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_decl.c_doglobal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*)*, i32 (i64)*, i32 (%struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { i32, i64, i8*, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@EXTERN = common dso_local global i64 0, align 8
@AUTO = common dso_local global i64 0, align 8
@IR = common dso_local global %struct.TYPE_15__* null, align 8
@STATIC = common dso_local global i64 0, align 8
@BSS = common dso_local global i32 0, align 4
@glevel = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"undefined size for `%t %s'\0A\00", align 1
@Pflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i8*)* @doglobal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doglobal(%struct.TYPE_16__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EXTERN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = call i64 @isfunc(%struct.TYPE_17__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AUTO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21, %9
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** @IR, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = call i32 %30(%struct.TYPE_16__* %31)
  br label %133

33:                                               ; preds = %21, %15, %2
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %132, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = call i64 @isfunc(%struct.TYPE_17__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %132, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AUTO, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @STATIC, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %132

56:                                               ; preds = %50, %44
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = call i64 @isarray(%struct.TYPE_17__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %56
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %62
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = call %struct.TYPE_17__* @array(%struct.TYPE_14__* %83, i32 1, i32 0)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %86, align 8
  br label %87

87:                                               ; preds = %78, %69, %62, %56
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %87
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = load i32, i32* @BSS, align 4
  %97 = call i32 @defglobal(%struct.TYPE_16__* %95, i32 %96)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** @IR, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load i32 (i64)*, i32 (i64)** %99, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 %100(i64 %105)
  %107 = load i64, i64* @glevel, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %94
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** @IR, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %111, align 8
  %113 = icmp ne i32 (%struct.TYPE_16__*)* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** @IR, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %116, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %119 = call i32 %117(%struct.TYPE_16__* %118)
  br label %120

120:                                              ; preds = %114, %109, %94
  br label %129

121:                                              ; preds = %87
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %124, i8* %127)
  br label %129

129:                                              ; preds = %121, %120
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  br label %132

132:                                              ; preds = %129, %50, %38, %33
  br label %133

133:                                              ; preds = %132, %27
  %134 = load i64, i64* @Pflag, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %133
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = call i64 @isfunc(%struct.TYPE_17__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %159, label %142

142:                                              ; preds = %136
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @EXTERN, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %156, align 8
  %158 = call i32 @printdecl(%struct.TYPE_16__* %154, %struct.TYPE_17__* %157)
  br label %159

159:                                              ; preds = %153, %147, %142, %136, %133
  ret void
}

declare dso_local i64 @isfunc(%struct.TYPE_17__*) #1

declare dso_local i64 @isarray(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @array(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @defglobal(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @error(i8*, %struct.TYPE_17__*, i8*) #1

declare dso_local i32 @printdecl(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

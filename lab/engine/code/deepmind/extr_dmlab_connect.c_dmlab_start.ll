; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_dmlab_start.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_dmlab_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (...)* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, double, double, i32, i32, i64, i64, i64, i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 (i32)*, i32 (i32, i32, i32)*, %struct.TYPE_13__, i32 (i32, i8*)* }
%struct.TYPE_13__ = type { i32 (i32)* }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"'init' must be called before 'start. See documentation in env_c_api.h'\0A\00", align 1
@re = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@clc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @dmlab_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmlab_start(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @INT_MAX, align 4
  %19 = add nsw i32 %17, %18
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi i32 [ %19, %15 ], [ %21, %20 ]
  store i32 %23, i32* %7, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %8, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 11
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %9, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %22
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  %37 = load i32 (i32, i8*)*, i32 (i32, i8*)** %36, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %37(i32 %40, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %175

42:                                               ; preds = %22
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 9
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @re, i32 0, i32 0), align 8
  %51 = call i32 (...) %50()
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = call i32 @connecting(%struct.TYPE_15__* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32 (i32)*, i32 (i32)** %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %65(i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %61, %56, %49
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %175

74:                                               ; preds = %42
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32 (i32)*, i32 (i32)** %78, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 %79(i32 %82)
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 8
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  store double 0.000000e+00, double* %87, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 3
  store double 0.000000e+00, double* %89, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %92, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 %93(i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %74
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  br label %175

104:                                              ; preds = %74
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %111 = call i32 @first_start(%struct.TYPE_15__* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %4, align 4
  br label %175

116:                                              ; preds = %109
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 4
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %104
  %120 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @re, i32 0, i32 0), align 8
  %121 = call i32 (...) %120()
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %128 = call i32 @connect_client(%struct.TYPE_15__* %127)
  br label %158

129:                                              ; preds = %119
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 7
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %136 = call i32 @start_server(%struct.TYPE_15__* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  store i32 1, i32* %4, align 4
  br label %175

139:                                              ; preds = %134
  br label %157

140:                                              ; preds = %129
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %142 = call i32 @load_map(%struct.TYPE_15__* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  store i32 1, i32* %4, align 4
  br label %175

145:                                              ; preds = %140
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i32 (i32)*, i32 (i32)** %148, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 %149(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  store i32 1, i32* %4, align 4
  br label %175

156:                                              ; preds = %145
  br label %157

157:                                              ; preds = %156, %139
  br label %158

158:                                              ; preds = %157, %126
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 5
  store i32 0, i32* %160, align 4
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %158
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 0), align 8
  %167 = load i64, i64* @CA_ACTIVE, align 8
  %168 = icmp slt i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32, i32* @EAGAIN, align 4
  br label %172

171:                                              ; preds = %165
  br label %172

172:                                              ; preds = %171, %169
  %173 = phi i32 [ %170, %169 ], [ 0, %171 ]
  store i32 %173, i32* %4, align 4
  br label %175

174:                                              ; preds = %158
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %172, %155, %144, %138, %114, %102, %72, %33
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @connecting(%struct.TYPE_15__*) #1

declare dso_local i32 @first_start(%struct.TYPE_15__*) #1

declare dso_local i32 @connect_client(%struct.TYPE_15__*) #1

declare dso_local i32 @start_server(%struct.TYPE_15__*) #1

declare dso_local i32 @load_map(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

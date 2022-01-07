; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_backend_ctx_devices_kernel_loops.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_backend_ctx_devices_kernel_loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_18__*, %struct.TYPE_14__*, %struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_13__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@ATTACK_EXEC_INSIDE_KERNEL = common dso_local global i64 0, align 8
@ATTACK_KERN_STRAIGHT = common dso_local global i64 0, align 8
@KERNEL_RULES = common dso_local global i32 0, align 4
@ATTACK_KERN_COMBI = common dso_local global i64 0, align 8
@KERNEL_COMBS = common dso_local global i32 0, align 4
@ATTACK_KERN_BF = common dso_local global i64 0, align 8
@KERNEL_BFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backend_ctx_devices_kernel_loops(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 7
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %3, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %4, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %5, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %6, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %7, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %8, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %9, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %10, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  br label %172

43:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %169, %43
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %172

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i64 %55
  store %struct.TYPE_20__* %56, %struct.TYPE_20__** %12, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %169

62:                                               ; preds = %50
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %169

68:                                               ; preds = %62
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 4
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %86, label %168

86:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ATTACK_EXEC_INSIDE_KERNEL, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %141

92:                                               ; preds = %86
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* %13, align 4
  br label %140

98:                                               ; preds = %92
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ATTACK_KERN_STRAIGHT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load i32, i32* @KERNEL_RULES, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @MIN(i32 %105, i32 %109)
  store i32 %110, i32* %13, align 4
  br label %139

111:                                              ; preds = %98
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ATTACK_KERN_COMBI, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %111
  %118 = load i32, i32* @KERNEL_COMBS, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @MIN(i32 %118, i32 %122)
  store i32 %123, i32* %13, align 4
  br label %138

124:                                              ; preds = %111
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ATTACK_KERN_BF, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load i32, i32* @KERNEL_BFS, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @MIN(i32 %131, i32 %135)
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %130, %124
  br label %138

138:                                              ; preds = %137, %117
  br label %139

139:                                              ; preds = %138, %104
  br label %140

140:                                              ; preds = %139, %97
  br label %148

141:                                              ; preds = %86
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %141, %140
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp sge i64 %150, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %148
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp sle i64 %157, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 4
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %162, %155, %148
  br label %168

168:                                              ; preds = %167, %68
  br label %169

169:                                              ; preds = %168, %67, %61
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  br label %44

172:                                              ; preds = %42, %44
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

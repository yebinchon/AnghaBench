; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_outfile.c_build_debugdata.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_outfile.c_build_debugdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_22__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i8*, i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64 }

@ATTACK_MODE_STRAIGHT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_debugdata(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, %struct.TYPE_19__* %2, i64* %3, i32* %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_18__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_17__, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  store %struct.TYPE_22__* %31, %struct.TYPE_22__** %16, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %17, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %18, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %19, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %20, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ATTACK_MODE_STRAIGHT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %189

50:                                               ; preds = %7
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %21, align 4
  %54 = load i32, i32* %21, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %189

57:                                               ; preds = %50
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %123

62:                                               ; preds = %57
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i64 %67
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %22, align 8
  %69 = load i32, i32* %21, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %77, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %21, align 4
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %21, align 4
  %76 = icmp eq i32 %75, 4
  br i1 %76, label %77, label %94

77:                                               ; preds = %74, %71, %62
  %78 = load i64*, i64** %12, align 8
  %79 = bitcast i64* %78 to i8*
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = call i32 @kernel_rule_to_cpu_rule(i8* %79, i32* %86)
  store i32 %87, i32* %23, align 4
  %88 = load i64*, i64** %12, align 8
  %89 = load i32, i32* %23, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* %23, align 4
  %93 = load i32*, i32** %13, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %77, %74
  %95 = load i32, i32* %21, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %21, align 4
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %21, align 4
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %103, label %122

103:                                              ; preds = %100, %97, %94
  %104 = load i64*, i64** %14, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @memcpy(i64* %104, i8* %107, i64 %110)
  %112 = load i64*, i64** %14, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i64, i64* %112, i64 %115
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load i32*, i32** %15, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %103, %100
  br label %188

123:                                              ; preds = %57
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %126 = load i32, i32* %19, align 4
  %127 = call i32 @gidd_to_pw_t(%struct.TYPE_21__* %124, %struct.TYPE_20__* %125, i32 %126, %struct.TYPE_17__* %24)
  store i32 %127, i32* %25, align 4
  %128 = load i32, i32* %25, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  store i32 -1, i32* %8, align 4
  br label %189

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %26, align 4
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %20, align 4
  %139 = add nsw i32 %137, %138
  store i32 %139, i32* %27, align 4
  %140 = load i32, i32* %21, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %148, label %142

142:                                              ; preds = %131
  %143 = load i32, i32* %21, align 4
  %144 = icmp eq i32 %143, 3
  br i1 %144, label %148, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %21, align 4
  %147 = icmp eq i32 %146, 4
  br i1 %147, label %148, label %164

148:                                              ; preds = %145, %142, %131
  %149 = load i64*, i64** %12, align 8
  %150 = bitcast i64* %149 to i8*
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %27, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = call i32 @kernel_rule_to_cpu_rule(i8* %150, i32* %156)
  store i32 %157, i32* %28, align 4
  %158 = load i64*, i64** %12, align 8
  %159 = load i32, i32* %28, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  store i64 0, i64* %161, align 8
  %162 = load i32, i32* %28, align 4
  %163 = load i32*, i32** %13, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %148, %145
  %165 = load i32, i32* %21, align 4
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %173, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %21, align 4
  %169 = icmp eq i32 %168, 3
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %21, align 4
  %172 = icmp eq i32 %171, 4
  br i1 %172, label %173, label %187

173:                                              ; preds = %170, %167, %164
  %174 = load i64*, i64** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to i8*
  %178 = load i32, i32* %26, align 4
  %179 = sext i32 %178 to i64
  %180 = call i32 @memcpy(i64* %174, i8* %177, i64 %179)
  %181 = load i64*, i64** %14, align 8
  %182 = load i32, i32* %26, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  store i64 0, i64* %184, align 8
  %185 = load i32, i32* %26, align 4
  %186 = load i32*, i32** %15, align 8
  store i32 %185, i32* %186, align 4
  br label %187

187:                                              ; preds = %173, %170
  br label %188

188:                                              ; preds = %187, %122
  store i32 0, i32* %8, align 4
  br label %189

189:                                              ; preds = %188, %130, %56, %49
  %190 = load i32, i32* %8, align 4
  ret i32 %190
}

declare dso_local i32 @kernel_rule_to_cpu_rule(i8*, i32*) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i32 @gidd_to_pw_t(%struct.TYPE_21__*, %struct.TYPE_20__*, i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

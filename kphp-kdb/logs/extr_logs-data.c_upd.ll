; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_upd.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_11__**, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }

@priority = common dso_local global i32* null, align 8
@op_rb = common dso_local global i64 0, align 8
@op_lb = common dso_local global i64 0, align 8
@s1n = common dso_local global i32 0, align 4
@s2n = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @upd(%struct.TYPE_11__** %0, %struct.TYPE_10__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %14

14:                                               ; preds = %157, %5
  %15 = load i32*, i32** %10, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load i32*, i32** @priority, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %19, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp sle i32 %29, %30
  br label %32

32:                                               ; preds = %18, %14
  %33 = phi i1 [ false, %14 ], [ %31, %18 ]
  br i1 %33, label %34, label %165

34:                                               ; preds = %32
  %35 = call %struct.TYPE_11__* (...) @new_node()
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %12, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @op_rb, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %34
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @op_lb, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73, %34
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %82 = call i32 @del_node(%struct.TYPE_11__* %81)
  store i32 0, i32* %6, align 4
  br label %166

83:                                               ; preds = %73
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @IS_CONST(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  br label %107

93:                                               ; preds = %83
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @IS_UN(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %106

103:                                              ; preds = %93
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  store i32 2, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %90
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = mul i64 8, %111
  %113 = trunc i64 %112 to i32
  %114 = call %struct.TYPE_11__** @dl_malloc0(i32 %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store %struct.TYPE_11__** %114, %struct.TYPE_11__*** %116, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %107
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %125 = call i32 @del_node(%struct.TYPE_11__* %124)
  store i32 0, i32* %6, align 4
  br label %166

126:                                              ; preds = %107
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %131, %129
  store i32 %132, i32* %130, align 4
  store i32 0, i32* %13, align 4
  br label %133

133:                                              ; preds = %154, %126
  %134 = load i32, i32* %13, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %133
  %140 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %140, i64 %145
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %150, i64 %152
  store %struct.TYPE_11__* %147, %struct.TYPE_11__** %153, align 8
  br label %154

154:                                              ; preds = %139
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %133

157:                                              ; preds = %133
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %159 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %159, i64 %163
  store %struct.TYPE_11__* %158, %struct.TYPE_11__** %164, align 8
  br label %14

165:                                              ; preds = %32
  store i32 1, i32* %6, align 4
  br label %166

166:                                              ; preds = %165, %123, %80
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local %struct.TYPE_11__* @new_node(...) #1

declare dso_local i32 @del_node(%struct.TYPE_11__*) #1

declare dso_local i64 @IS_CONST(i64) #1

declare dso_local i64 @IS_UN(i64) #1

declare dso_local %struct.TYPE_11__** @dl_malloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

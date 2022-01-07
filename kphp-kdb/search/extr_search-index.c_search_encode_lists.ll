; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_search_encode_lists.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index.c_search_encode_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64 }

@PC = common dso_local global i32 0, align 4
@P = common dso_local global %struct.TYPE_9__* null, align 8
@Header = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@W = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"h1 = %d, Header.hapax_legomena = %d\0A\00", align 1
@HL = common dso_local global %struct.TYPE_11__* null, align 8
@encoded_bytes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @search_encode_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_encode_lists(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call i32 (...) @encode_lists_reset()
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %125, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @PC, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %127

15:                                               ; preds = %11
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @P, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %40, %15
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PC, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @P, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %28, %24
  %38 = phi i1 [ false, %24 ], [ %36, %28 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %24

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %76

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Header, i32 0, i32 0), align 8
  %51 = icmp slt i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @W, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i64 %54, i64* %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @P, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @W, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %69
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @search_encode_list(%struct.TYPE_9__* %63, i32 %66, %struct.TYPE_10__* %70, i32* %71, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %124

76:                                               ; preds = %43
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Header, i32 0, i32 1), align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Header, i32 0, i32 1), align 4
  %83 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Header, i32 0, i32 1), align 4
  %87 = icmp slt i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** @HL, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store i64 %90, i64* %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** @P, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** @HL, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i32 %101, i32* %106, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** @P, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %109
  %111 = call i64 @in_title(%struct.TYPE_9__* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %84
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** @HL, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, -2147483648
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %113, %84
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %121, %48
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %7, align 4
  br label %11

127:                                              ; preds = %11
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Header, i32 0, i32 0), align 8
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Header, i32 0, i32 1), align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** @HL, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = call i32 @memset(%struct.TYPE_11__* %141, i32 0, i32 4)
  store i32 0, i32* %7, align 4
  br label %143

143:                                              ; preds = %163, %127
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %144, 2
  br i1 %145, label %146, label %166

146:                                              ; preds = %143
  %147 = load i32*, i32** @encoded_bytes, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @Header, i32 0, i32 2), align 8
  %153 = load i32*, i32** %3, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 2, %157
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %152, i64 %161
  store i32 %151, i32* %162, align 4
  br label %163

163:                                              ; preds = %146
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %143

166:                                              ; preds = %143
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @encode_lists_reset(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @search_encode_list(%struct.TYPE_9__*, i32, %struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i64 @in_title(%struct.TYPE_9__*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

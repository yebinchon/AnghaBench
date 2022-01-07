; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_sp_tbl_to_css.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_sp_tbl_to_css.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32* }

@SP_PW_MAX = common dso_local global i32 0, align 4
@CHARSIZ = common dso_local global i32 0, align 4
@SP_ROOT_CNT = common dso_local global i32 0, align 4
@SP_MARKOV_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32*)* @sp_tbl_to_css to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_tbl_to_css(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2, %struct.TYPE_9__* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_9__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %22 = load i32, i32* @SP_PW_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = load i32, i32* @CHARSIZ, align 4
  %25 = zext i32 %24 to i64
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = load i32, i32* @SP_PW_MAX, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 16
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(%struct.TYPE_9__* %26, i32 0, i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = load i32, i32* @SP_PW_MAX, align 4
  %34 = load i32, i32* @CHARSIZ, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 16
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memset(%struct.TYPE_9__* %32, i32 0, i32 %38)
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %90, %6
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @SP_ROOT_CNT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %93

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @CHARSIZ, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %14, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %50
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %15, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %90

58:                                               ; preds = %44
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %16, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %67, %25
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  br label %90

76:                                               ; preds = %58
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  store i32 %77, i32* %85, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %76, %75, %57
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %40

93:                                               ; preds = %40
  store i32 0, i32* %17, align 4
  br label %94

94:                                               ; preds = %154, %93
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @SP_MARKOV_CNT, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %157

98:                                               ; preds = %94
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* @CHARSIZ, align 4
  %101 = sdiv i32 %99, %100
  store i32 %101, i32* %18, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 %104
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %19, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %154

112:                                              ; preds = %98
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* @CHARSIZ, align 4
  %115 = sdiv i32 %113, %114
  store i32 %115, i32* %20, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %21, align 4
  %122 = load i32, i32* %20, align 4
  %123 = add nsw i32 %122, 1
  %124 = load i32, i32* @SP_PW_MAX, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %112
  %127 = load i32*, i32** %12, align 8
  %128 = load i32, i32* %20, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = mul nsw i64 %130, %25
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = load i32, i32* %21, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  br label %154

139:                                              ; preds = %126
  br label %140

140:                                              ; preds = %139, %112
  %141 = load i32, i32* %21, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  store i32 %141, i32* %149, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %140, %138, %111
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %17, align 4
  br label %94

157:                                              ; preds = %94
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

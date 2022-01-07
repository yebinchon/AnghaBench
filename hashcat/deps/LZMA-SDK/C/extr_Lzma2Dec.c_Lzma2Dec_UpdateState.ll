; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Dec.c_Lzma2Dec_UpdateState.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Dec.c_Lzma2Dec_UpdateState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@False = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"\0A %8X\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@LZMA2_STATE_FINISHED = common dso_local global i32 0, align 4
@LZMA2_CONTROL_COPY_RESET_DIC = common dso_local global i32 0, align 4
@LZMA2_STATE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" %7u\00", align 1
@LZMA2_STATE_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" %5u\00", align 1
@LZMA2_LCLP_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @Lzma2Dec_UpdateState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Lzma2Dec_UpdateState(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %168 [
    i32 133, label %11
    i32 129, label %71
    i32 128, label %78
    i32 132, label %101
    i32 131, label %106
    i32 130, label %131
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @False, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 @PRF(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = call i32 @PRF(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %11
  %30 = load i32, i32* @LZMA2_STATE_FINISHED, align 4
  store i32 %30, i32* %3, align 4
  br label %170

31:                                               ; preds = %11
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = call i32 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_8__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @LZMA2_CONTROL_COPY_RESET_DIC, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store i32 192, i32* %41, align 4
  br label %53

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 2
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 224
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %42
  %51 = load i32, i32* @LZMA2_STATE_ERROR, align 4
  store i32 %51, i32* %3, align 4
  br label %170

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %39
  br label %70

54:                                               ; preds = %31
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @LZMA2_STATE_ERROR, align 4
  store i32 %61, i32* %3, align 4
  br label %170

62:                                               ; preds = %54
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 31
  %67 = shl i32 %66, 16
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %53
  store i32 129, i32* %3, align 4
  br label %170

71:                                               ; preds = %2
  %72 = load i32, i32* %5, align 4
  %73 = shl i32 %72, 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  store i32 128, i32* %3, align 4
  br label %170

78:                                               ; preds = %2
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = call i32 @PRF(i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = call i32 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_8__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %78
  %97 = load i32, i32* @LZMA2_STATE_DATA, align 4
  br label %99

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 132, %98 ]
  store i32 %100, i32* %3, align 4
  br label %170

101:                                              ; preds = %2
  %102 = load i32, i32* %5, align 4
  %103 = shl i32 %102, 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  store i32 131, i32* %3, align 4
  br label %170

106:                                              ; preds = %2
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = call i32 @PRF(i32 %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 64
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %106
  br label %129

127:                                              ; preds = %106
  %128 = load i32, i32* @LZMA2_STATE_DATA, align 4
  br label %129

129:                                              ; preds = %127, %126
  %130 = phi i32 [ 130, %126 ], [ %128, %127 ]
  store i32 %130, i32* %3, align 4
  br label %170

131:                                              ; preds = %2
  %132 = load i32, i32* %5, align 4
  %133 = icmp sge i32 %132, 225
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @LZMA2_STATE_ERROR, align 4
  store i32 %135, i32* %3, align 4
  br label %170

136:                                              ; preds = %131
  %137 = load i32, i32* %5, align 4
  %138 = srem i32 %137, 9
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %5, align 4
  %140 = sdiv i32 %139, 9
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = sdiv i32 %141, 5
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  store i32 %142, i32* %146, align 4
  %147 = load i32, i32* %5, align 4
  %148 = srem i32 %147, 5
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = add i32 %149, %150
  %152 = load i32, i32* @LZMA2_LCLP_MAX, align 4
  %153 = icmp ugt i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %136
  %155 = load i32, i32* @LZMA2_STATE_ERROR, align 4
  store i32 %155, i32* %3, align 4
  br label %170

156:                                              ; preds = %136
  %157 = load i32, i32* %6, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  store i32 %157, i32* %161, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  store i32 %162, i32* %166, align 4
  %167 = load i32, i32* @LZMA2_STATE_DATA, align 4
  store i32 %167, i32* %3, align 4
  br label %170

168:                                              ; preds = %2
  %169 = load i32, i32* @LZMA2_STATE_ERROR, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %156, %154, %134, %129, %101, %99, %71, %70, %60, %50, %29
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @PRF(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @LZMA2_IS_UNCOMPRESSED_STATE(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

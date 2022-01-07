; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_TextField_Paint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_TextField_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 (i64, i32, i32, double*, i8*, i32, i32, i32)*, i32 (i64, i32, i32, double*, i8*, i32, i8, i32, i32)*, i64 (...)*, i32 (i64, i8*, i32)* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, i64*, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { double* }
%struct.TYPE_13__ = type { i32, i32 }

@DC = common dso_local global %struct.TYPE_14__* null, align 8
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@PULSE_DIVISOR = common dso_local global i32 0, align 4
@g_editingField = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_TextField_Paint(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8, align 1
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = call i32 @Item_Text_Paint(%struct.TYPE_12__* %18)
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %20, align 16
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 4
  %28 = load i32 (i64, i8*, i32)*, i32 (i64, i8*, i32)** %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %33 = call i32 %28(i64 %31, i8* %32, i32 1024)
  br label %34

34:                                               ; preds = %25, %1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %89

42:                                               ; preds = %34
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load double*, double** %44, align 8
  %46 = getelementptr inbounds double, double* %45, i64 0
  %47 = load double, double* %46, align 8
  %48 = fmul double 8.000000e-01, %47
  %49 = load double*, double** %5, align 8
  %50 = getelementptr inbounds double, double* %49, i64 0
  store double %48, double* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load double*, double** %52, align 8
  %54 = getelementptr inbounds double, double* %53, i64 1
  %55 = load double, double* %54, align 8
  %56 = fmul double 8.000000e-01, %55
  %57 = load double*, double** %5, align 8
  %58 = getelementptr inbounds double, double* %57, i64 1
  store double %56, double* %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load double*, double** %60, align 8
  %62 = getelementptr inbounds double, double* %61, i64 2
  %63 = load double, double* %62, align 8
  %64 = fmul double 8.000000e-01, %63
  %65 = load double*, double** %5, align 8
  %66 = getelementptr inbounds double, double* %65, i64 2
  store double %64, double* %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load double*, double** %68, align 8
  %70 = getelementptr inbounds double, double* %69, i64 3
  %71 = load double, double* %70, align 8
  %72 = fmul double 8.000000e-01, %71
  %73 = load double*, double** %5, align 8
  %74 = getelementptr inbounds double, double* %73, i64 3
  store double %72, double* %74, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load double*, double** %76, align 8
  %78 = load double*, double** %5, align 8
  %79 = load double*, double** %4, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PULSE_DIVISOR, align 4
  %84 = sdiv i32 %82, %83
  %85 = call double @sin(i32 %84)
  %86 = fmul double 5.000000e-01, %85
  %87 = fadd double 5.000000e-01, %86
  %88 = call i32 @LerpColor(double* %77, double* %78, double* %79, double %87)
  br label %94

89:                                               ; preds = %34
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = call i32 @memcpy(double** %4, i32* %92, i32 8)
  br label %94

94:                                               ; preds = %89, %42
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 5
  %97 = load i64*, i64** %96, align 8
  %98 = icmp ne i64* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 5
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %99, %94
  %106 = phi i1 [ false, %94 ], [ %104, %99 ]
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 8, i32 0
  store i32 %108, i32* %6, align 4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %172

116:                                              ; preds = %105
  %117 = load i64, i64* @g_editingField, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %172

119:                                              ; preds = %116
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 3
  %122 = load i64 (...)*, i64 (...)** %121, align 8
  %123 = call i64 (...) %122()
  %124 = icmp ne i64 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 95, i32 124
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %9, align 1
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = load i32 (i64, i32, i32, double*, i8*, i32, i8, i32, i32)*, i32 (i64, i32, i32, double*, i8*, i32, i8, i32, i32)** %129, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %134, %138
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %139, %141
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load double*, double** %4, align 8
  %151 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %151, i64 %155
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %159, %162
  %164 = load i8, i8* %9, align 1
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 %130(i64 %142, i32 %146, i32 %149, double* %150, i8* %156, i32 %163, i8 signext %164, i32 %167, i32 %170)
  br label %209

172:                                              ; preds = %116, %105
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = load i32 (i64, i32, i32, double*, i8*, i32, i32, i32)*, i32 (i64, i32, i32, double*, i8*, i32, i32, i32)** %174, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %179, %183
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %184, %186
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load double*, double** %4, align 8
  %196 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %196, i64 %200
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 %175(i64 %187, i32 %191, i32 %194, double* %195, i8* %201, i32 0, i32 %204, i32 %207)
  br label %209

209:                                              ; preds = %172, %119
  ret void
}

declare dso_local i32 @Item_Text_Paint(%struct.TYPE_12__*) #1

declare dso_local i32 @LerpColor(double*, double*, double*, double) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @memcpy(double**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

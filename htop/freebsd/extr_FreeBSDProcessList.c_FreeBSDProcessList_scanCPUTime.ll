; ModuleID = '/home/carl/AnghaBench/htop/freebsd/extr_FreeBSDProcessList.c_FreeBSDProcessList_scanCPUTime.c'
source_filename = "/home/carl/AnghaBench/htop/freebsd/extr_FreeBSDProcessList.c_FreeBSDProcessList_scanCPUTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64*, i64*, i64*, i64*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { double, double, double, double, double, double }

@CPUSTATES = common dso_local global i32 0, align 4
@MIB_kern_cp_time = common dso_local global i32 0, align 4
@MIB_kern_cp_times = common dso_local global i32 0, align 4
@CP_USER = common dso_local global i64 0, align 8
@CP_NICE = common dso_local global i64 0, align 8
@CP_SYS = common dso_local global i64 0, align 8
@CP_INTR = common dso_local global i64 0, align 8
@CP_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @FreeBSDProcessList_scanCPUTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FreeBSDProcessList_scanCPUTime(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = bitcast %struct.TYPE_5__* %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %3, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* @CPUSTATES, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %10, align 8
  %33 = alloca i64, i64 %31, align 16
  store i64 %31, i64* %11, align 8
  %34 = load i32, i32* @CPUSTATES, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca double, i64 %35, align 16
  store i64 %35, i64* %12, align 8
  %37 = load i32, i32* @CPUSTATES, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  store i64 %39, i64* %7, align 8
  %40 = load i32, i32* @MIB_kern_cp_time, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = call i32 @sysctl(i32 %40, i32 2, i64* %43, i64* %7, i32* null, i32 0)
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %61

47:                                               ; preds = %1
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 8
  %53 = load i32, i32* @CPUSTATES, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %52, %54
  store i64 %55, i64* %7, align 8
  %56 = load i32, i32* @MIB_kern_cp_times, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = call i32 @sysctl(i32 %56, i32 2, i64* %59, i64* %7, i32* null, i32 0)
  br label %61

61:                                               ; preds = %47, %1
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %221, %61
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %224

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  store i64* %72, i64** %8, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  store i64* %75, i64** %9, align 8
  br label %106

76:                                               ; preds = %66
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  store i64* %82, i64** %8, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  store i64* %85, i64** %9, align 8
  br label %105

86:                                               ; preds = %76
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @CPUSTATES, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %91, i64 %95
  store i64* %96, i64** %8, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @CPUSTATES, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %99, i64 %103
  store i64* %104, i64** %9, align 8
  br label %105

105:                                              ; preds = %86, %79
  br label %106

106:                                              ; preds = %105, %69
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %107

107:                                              ; preds = %140, %106
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* @CPUSTATES, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %143

111:                                              ; preds = %107
  %112 = load i64*, i64** %8, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %9, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = sub i64 %116, %121
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %33, i64 %124
  store i64 %122, i64* %125, align 8
  %126 = load i64*, i64** %9, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %14, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %14, align 8
  %133 = load i64*, i64** %8, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %15, align 8
  %139 = add i64 %138, %137
  store i64 %139, i64* %15, align 8
  br label %140

140:                                              ; preds = %111
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %107

143:                                              ; preds = %107
  %144 = load i64, i64* %15, align 8
  %145 = load i64, i64* %14, align 8
  %146 = sub i64 %144, %145
  store i64 %146, i64* %16, align 8
  %147 = load i64, i64* %16, align 8
  %148 = icmp ult i64 %147, 1
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i64 1, i64* %16, align 8
  br label %150

150:                                              ; preds = %149, %143
  store i32 0, i32* %18, align 4
  br label %151

151:                                              ; preds = %177, %150
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* @CPUSTATES, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %180

155:                                              ; preds = %151
  %156 = load i64*, i64** %8, align 8
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load i64*, i64** %9, align 8
  %162 = load i32, i32* %18, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  store i64 %160, i64* %164, align 8
  %165 = load i32, i32* %18, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %33, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = uitofp i64 %168 to double
  %170 = load i64, i64* %16, align 8
  %171 = uitofp i64 %170 to double
  %172 = fdiv double %169, %171
  %173 = fmul double %172, 1.000000e+02
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double, double* %36, i64 %175
  store double %173, double* %176, align 8
  br label %177

177:                                              ; preds = %155
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %18, align 4
  br label %151

180:                                              ; preds = %151
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %185
  store %struct.TYPE_7__* %186, %struct.TYPE_7__** %19, align 8
  %187 = load i64, i64* @CP_USER, align 8
  %188 = getelementptr inbounds double, double* %36, i64 %187
  %189 = load double, double* %188, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  store double %189, double* %191, align 8
  %192 = load i64, i64* @CP_NICE, align 8
  %193 = getelementptr inbounds double, double* %36, i64 %192
  %194 = load double, double* %193, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  store double %194, double* %196, align 8
  %197 = load i64, i64* @CP_SYS, align 8
  %198 = getelementptr inbounds double, double* %36, i64 %197
  %199 = load double, double* %198, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  store double %199, double* %201, align 8
  %202 = load i64, i64* @CP_INTR, align 8
  %203 = getelementptr inbounds double, double* %36, i64 %202
  %204 = load double, double* %203, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 3
  store double %204, double* %206, align 8
  %207 = load i64, i64* @CP_SYS, align 8
  %208 = getelementptr inbounds double, double* %36, i64 %207
  %209 = load double, double* %208, align 8
  %210 = load i64, i64* @CP_INTR, align 8
  %211 = getelementptr inbounds double, double* %36, i64 %210
  %212 = load double, double* %211, align 8
  %213 = fadd double %209, %212
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 4
  store double %213, double* %215, align 8
  %216 = load i64, i64* @CP_IDLE, align 8
  %217 = getelementptr inbounds double, double* %36, i64 %216
  %218 = load double, double* %217, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 5
  store double %218, double* %220, align 8
  br label %221

221:                                              ; preds = %180
  %222 = load i32, i32* %13, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %13, align 4
  br label %62

224:                                              ; preds = %62
  %225 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %225)
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sysctl(i32, i32, i64*, i64*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

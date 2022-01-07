; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_DarwinProcessList.c_GetKernelVersion.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_DarwinProcessList.c_GetKernelVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kern = type { i32 }

@GetKernelVersion.version_ = internal global [3 x i16] zeroinitializer, align 2
@.str = private unnamed_addr constant [15 x i8] c"kern.osrelease\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%hd.%hd.%hd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetKernelVersion(%struct.kern* %0) #0 {
  %2 = alloca %struct.kern*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.kern* %0, %struct.kern** %2, align 8
  %6 = load i16, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @GetKernelVersion.version_, i64 0, i64 0), align 2
  %7 = icmp ne i16 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  store i16 -1, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @GetKernelVersion.version_, i64 0, i64 2), align 2
  store i16 -1, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @GetKernelVersion.version_, i64 0, i64 1), align 2
  store i16 -1, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @GetKernelVersion.version_, i64 0, i64 0), align 2
  %9 = bitcast [256 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 256, i1 false)
  store i64 256, i64* %4, align 8
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %11 = call i32 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %10, i64* %4, i32* null, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i16* getelementptr inbounds ([3 x i16], [3 x i16]* @GetKernelVersion.version_, i64 0, i64 0), i16* getelementptr inbounds ([3 x i16], [3 x i16]* @GetKernelVersion.version_, i64 0, i64 1), i16* getelementptr inbounds ([3 x i16], [3 x i16]* @GetKernelVersion.version_, i64 0, i64 2))
  br label %17

17:                                               ; preds = %14, %8
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.kern*, %struct.kern** %2, align 8
  %20 = getelementptr inbounds %struct.kern, %struct.kern* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(i32 %21, i16* getelementptr inbounds ([3 x i16], [3 x i16]* @GetKernelVersion.version_, i64 0, i64 0), i32 6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #2

declare dso_local i32 @sscanf(i8*, i8*, i16*, i16*, i16*) #2

declare dso_local i32 @memcpy(i32, i16*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

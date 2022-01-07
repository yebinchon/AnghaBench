; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_avi.c_CL_WriteAVIVideoFrame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_avi.c_CL_WriteAVIVideoFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@afd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@bufIndex = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"00dc\00", align 1
@buffer = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_WriteAVIVideoFrame(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 0), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 1), align 4
  %11 = sub nsw i32 %9, %10
  %12 = sub nsw i32 %11, 8
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 8, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @PADLEN(i32 %15, i32 2)
  store i32 %16, i32* %7, align 4
  %17 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 16, i1 false)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 8), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %72

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 8, %22
  %24 = add nsw i32 %23, 2
  %25 = call i64 @CL_CheckFileSize(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %72

28:                                               ; preds = %21
  store i64 0, i64* @bufIndex, align 8
  %29 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @WRITE_4BYTES(i32 %30)
  %32 = load i32*, i32** @buffer, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 7), align 4
  %34 = call i32 @SafeFS_Write(i32* %32, i32 8, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 7), align 4
  %38 = call i32 @SafeFS_Write(i32* %35, i32 %36, i32 %37)
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 7), align 4
  %42 = call i32 @SafeFS_Write(i32* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 0), align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 0), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 6), align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 6), align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 2), align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 2), align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 3), align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %28
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 3), align 4
  br label %60

60:                                               ; preds = %58, %28
  store i64 0, i64* @bufIndex, align 8
  %61 = call i32 @WRITE_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 @WRITE_4BYTES(i32 16)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @WRITE_4BYTES(i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @WRITE_4BYTES(i32 %65)
  %67 = load i32*, i32** @buffer, align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 5), align 4
  %69 = call i32 @SafeFS_Write(i32* %67, i32 16, i32 %68)
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 4), align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @afd, i32 0, i32 4), align 4
  br label %72

72:                                               ; preds = %60, %27, %20
  ret void
}

declare dso_local i32 @PADLEN(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @CL_CheckFileSize(i32) #1

declare dso_local i32 @WRITE_STRING(i8*) #1

declare dso_local i32 @WRITE_4BYTES(i32) #1

declare dso_local i32 @SafeFS_Write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SV_SendQueuedPackets.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_main.c_SV_SendQueuedPackets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SV_SendQueuedPackets.dlNextRound = internal global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@sv_dlRate = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_DOWNLOAD_BLKSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SV_SendQueuedPackets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @INT_MAX, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 (...) @SV_SendQueuedMessages()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %10, %0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sv_dlRate, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %79

17:                                               ; preds = %12
  %18 = call i32 (...) @Sys_Milliseconds()
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* @SV_SendQueuedPackets.dlNextRound, align 4
  %20 = load i32, i32* %2, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %24
  br label %78

32:                                               ; preds = %17
  %33 = call i32 (...) @SV_SendDownloadMessages()
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %32
  %37 = call i32 (...) @Sys_Milliseconds()
  %38 = load i32, i32* %2, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %1, align 4
  %41 = mul nsw i32 1000, %40
  %42 = load i32, i32* @MAX_DOWNLOAD_BLKSIZE, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %4, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sv_dlRate, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 1024
  %48 = load i32, i32* %4, align 4
  %49 = sdiv i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  %53 = icmp sle i32 %50, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %36
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 2, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @SV_SendQueuedPackets.dlNextRound, align 4
  br label %76

63:                                               ; preds = %36
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* @SV_SendQueuedPackets.dlNextRound, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %63
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %32
  br label %78

78:                                               ; preds = %77, %31
  br label %84

79:                                               ; preds = %12
  %80 = call i32 (...) @SV_SendDownloadMessages()
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %79
  br label %84

84:                                               ; preds = %83, %78
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @SV_SendQueuedMessages(...) #1

declare dso_local i32 @Sys_Milliseconds(...) #1

declare dso_local i32 @SV_SendDownloadMessages(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

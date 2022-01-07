; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.btmrvl_sdio_card* }
%struct.btmrvl_sdio_card = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"SDIO Func%d (%#x-%#x): \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btmrvl_private*)* @btmrvl_sdio_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btmrvl_sdio_dump_regs(%struct.btmrvl_private* %0) #0 {
  %2 = alloca %struct.btmrvl_private*, align 8
  %3 = alloca %struct.btmrvl_sdio_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %2, align 8
  %14 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %15 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %16, align 8
  store %struct.btmrvl_sdio_card* %17, %struct.btmrvl_sdio_card** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 2, i32* %13, align 4
  %18 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %19 = call i32 @btmrvl_sdio_wakeup_fw(%struct.btmrvl_private* %18)
  %20 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %21 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sdio_claim_host(i32 %22)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %89, %1
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %92

28:                                               ; preds = %24
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %30 = call i32 @memset(i8* %29, i32 0, i32 256)
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %31, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %6, align 4
  store i32 9, i32* %7, align 4
  br label %37

36:                                               ; preds = %28
  store i32 2, i32* %11, align 4
  store i32 0, i32* %6, align 4
  store i32 9, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %34
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41)
  %43 = load i8*, i8** %9, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %9, align 8
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %83, %37
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %56 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @sdio_f0_readb(i32 %57, i32 %58, i32* %4)
  store i32 %59, i32* %12, align 4
  br label %66

60:                                               ; preds = %51
  %61 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %62 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @sdio_readb(i32 %63, i32 %64, i32* %4)
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i8*, i8** %9, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %9, align 8
  br label %82

76:                                               ; preds = %66
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 (i8*, i8*, ...) @sprintf(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i8*, i8** %9, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %9, align 8
  br label %86

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %47

86:                                               ; preds = %76, %47
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %88 = call i32 @BT_INFO(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %24

92:                                               ; preds = %24
  %93 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %94 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @sdio_release_host(i32 %95)
  ret void
}

declare dso_local i32 @btmrvl_sdio_wakeup_fw(%struct.btmrvl_private*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @sdio_f0_readb(i32, i32, i32*) #1

declare dso_local i32 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @BT_INFO(i8*, i8*) #1

declare dso_local i32 @sdio_release_host(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

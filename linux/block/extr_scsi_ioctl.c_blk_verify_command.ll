; ModuleID = '/home/carl/AnghaBench/linux/block/extr_scsi_ioctl.c_blk_verify_command.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_scsi_ioctl.c_blk_verify_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_cmd_filter = type { i32, i32 }

@blk_default_cmd_filter = common dso_local global %struct.blk_cmd_filter zeroinitializer, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_verify_command(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_cmd_filter*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.blk_cmd_filter* @blk_default_cmd_filter, %struct.blk_cmd_filter** %6, align 8
  %7 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %8 = call i64 @capable(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = load %struct.blk_cmd_filter*, %struct.blk_cmd_filter** %6, align 8
  %16 = getelementptr inbounds %struct.blk_cmd_filter, %struct.blk_cmd_filter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @test_bit(i8 zeroext %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %39

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = load %struct.blk_cmd_filter*, %struct.blk_cmd_filter** %6, align 8
  %26 = getelementptr inbounds %struct.blk_cmd_filter, %struct.blk_cmd_filter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @test_bit(i8 zeroext %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @FMODE_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %39

36:                                               ; preds = %30, %21
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %35, %20, %10
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @test_bit(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

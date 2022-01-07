; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_bio_check_ro.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_bio_check_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.hd_struct = type { i32, i64 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"generic_make_request: Trying to write to read-only block-device %s (partno %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*, %struct.hd_struct*)* @bio_check_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_check_ro(%struct.bio* %0, %struct.hd_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.hd_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %4, align 8
  store %struct.hd_struct* %1, %struct.hd_struct** %5, align 8
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = call i32 @bio_op(%struct.bio* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %13 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @op_is_write(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load i32, i32* @BDEVNAME_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @op_is_flush(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.bio*, %struct.bio** %4, align 8
  %32 = call i32 @bio_sectors(%struct.bio* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %42

35:                                               ; preds = %30, %20
  %36 = load %struct.bio*, %struct.bio** %4, align 8
  %37 = call i32 @bio_devname(%struct.bio* %36, i8* %24)
  %38 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %39 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %42

42:                                               ; preds = %35, %34
  %43 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %43)
  br label %45

44:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @bio_op(%struct.bio*) #1

declare dso_local i64 @op_is_write(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @op_is_flush(i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @bio_devname(%struct.bio*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_check_activity_log_stripe_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_check_activity_log_stripe_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%struct.meta_data_on_disk = type { i32, i32 }
%struct.drbd_md = type { i32, i32, i32 }

@MD_32kB_SECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"invalid activity log striping: al_stripes=%u, al_stripe_size_4k=%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*, %struct.meta_data_on_disk*, %struct.drbd_md*)* @check_activity_log_stripe_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_activity_log_stripe_size(%struct.drbd_device* %0, %struct.meta_data_on_disk* %1, %struct.drbd_md* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca %struct.meta_data_on_disk*, align 8
  %7 = alloca %struct.drbd_md*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %5, align 8
  store %struct.meta_data_on_disk* %1, %struct.meta_data_on_disk** %6, align 8
  store %struct.drbd_md* %2, %struct.drbd_md** %7, align 8
  %11 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %6, align 8
  %12 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @be32_to_cpu(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.meta_data_on_disk*, %struct.meta_data_on_disk** %6, align 8
  %16 = getelementptr inbounds %struct.meta_data_on_disk, %struct.meta_data_on_disk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  %25 = load i32, i32* @MD_32kB_SECT, align 4
  %26 = sdiv i32 %25, 8
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %24, %21, %3
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  br label %57

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 4194304
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %57

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @MD_32kB_SECT, align 4
  %44 = sdiv i32 %43, 8
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %57

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %50 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %53 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %56 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %64

57:                                               ; preds = %46, %40, %33
  %58 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @drbd_err(%struct.drbd_device* %58, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %47
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

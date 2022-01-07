; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dtl.c_dtl_setup_file.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_dtl.c_dtl_setup_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtl = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"cpu-%d\00", align 1
@dtl_dir = common dso_local global i32 0, align 4
@dtl_fops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtl*)* @dtl_setup_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtl_setup_file(%struct.dtl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dtl*, align 8
  %4 = alloca [10 x i8], align 1
  store %struct.dtl* %0, %struct.dtl** %3, align 8
  %5 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %6 = load %struct.dtl*, %struct.dtl** %3, align 8
  %7 = getelementptr inbounds %struct.dtl, %struct.dtl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %11 = load i32, i32* @dtl_dir, align 4
  %12 = load %struct.dtl*, %struct.dtl** %3, align 8
  %13 = call i32 @debugfs_create_file(i8* %10, i32 256, i32 %11, %struct.dtl* %12, i32* @dtl_fops)
  %14 = load %struct.dtl*, %struct.dtl** %3, align 8
  %15 = getelementptr inbounds %struct.dtl, %struct.dtl* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.dtl*, %struct.dtl** %3, align 8
  %17 = getelementptr inbounds %struct.dtl, %struct.dtl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.dtl*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

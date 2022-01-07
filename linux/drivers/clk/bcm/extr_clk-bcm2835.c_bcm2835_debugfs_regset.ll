; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_debugfs_regset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_debugfs_regset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_cprman = type { i64, i32 }
%struct.debugfs_reg32 = type { i32 }
%struct.dentry = type { i32 }
%struct.debugfs_regset32 = type { i64, i64, %struct.debugfs_reg32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"regdump\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_cprman*, i64, %struct.debugfs_reg32*, i64, %struct.dentry*)* @bcm2835_debugfs_regset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_debugfs_regset(%struct.bcm2835_cprman* %0, i64 %1, %struct.debugfs_reg32* %2, i64 %3, %struct.dentry* %4) #0 {
  %6 = alloca %struct.bcm2835_cprman*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.debugfs_reg32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.debugfs_regset32*, align 8
  store %struct.bcm2835_cprman* %0, %struct.bcm2835_cprman** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.debugfs_reg32* %2, %struct.debugfs_reg32** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.dentry* %4, %struct.dentry** %10, align 8
  %12 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %6, align 8
  %13 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.debugfs_regset32* @devm_kzalloc(i32 %14, i32 24, i32 %15)
  store %struct.debugfs_regset32* %16, %struct.debugfs_regset32** %11, align 8
  %17 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %11, align 8
  %18 = icmp ne %struct.debugfs_regset32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  br label %38

20:                                               ; preds = %5
  %21 = load %struct.debugfs_reg32*, %struct.debugfs_reg32** %8, align 8
  %22 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %11, align 8
  %23 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %22, i32 0, i32 2
  store %struct.debugfs_reg32* %21, %struct.debugfs_reg32** %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %11, align 8
  %26 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %6, align 8
  %28 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %11, align 8
  %33 = getelementptr inbounds %struct.debugfs_regset32, %struct.debugfs_regset32* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* @S_IRUGO, align 4
  %35 = load %struct.dentry*, %struct.dentry** %10, align 8
  %36 = load %struct.debugfs_regset32*, %struct.debugfs_regset32** %11, align 8
  %37 = call i32 @debugfs_create_regset32(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %34, %struct.dentry* %35, %struct.debugfs_regset32* %36)
  br label %38

38:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.debugfs_regset32* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @debugfs_create_regset32(i8*, i32, %struct.dentry*, %struct.debugfs_regset32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

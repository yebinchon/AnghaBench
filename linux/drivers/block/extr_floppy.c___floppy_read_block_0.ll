; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c___floppy_read_block_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c___floppy_read_block_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i64 }
%struct.bio = type { i32, i32, %struct.rb0_cbdata*, %struct.TYPE_2__ }
%struct.rb0_cbdata = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bio_vec = type { i32 }
%struct.page = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BIO_QUIET = common dso_local global i32 0, align 4
@floppy_rb0_cb = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @__floppy_read_block_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__floppy_read_block_0(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio, align 8
  %7 = alloca %struct.bio_vec, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.rb0_cbdata, align 4
  %10 = alloca i64, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @GFP_NOIO, align 4
  %12 = call %struct.page* @alloc_page(i32 %11)
  store %struct.page* %12, %struct.page** %8, align 8
  %13 = load %struct.page*, %struct.page** %8, align 8
  %14 = icmp ne %struct.page* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = call i32 (...) @process_fd_request()
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %55

19:                                               ; preds = %2
  %20 = load %struct.block_device*, %struct.block_device** %4, align 8
  %21 = getelementptr inbounds %struct.block_device, %struct.block_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i64 1024, i64* %10, align 8
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds %struct.rb0_cbdata, %struct.rb0_cbdata* %9, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = call i32 @bio_init(%struct.bio* %6, %struct.bio_vec* %7, i32 1)
  %30 = load %struct.block_device*, %struct.block_device** %4, align 8
  %31 = call i32 @bio_set_dev(%struct.bio* %6, %struct.block_device* %30)
  %32 = load %struct.page*, %struct.page** %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @bio_add_page(%struct.bio* %6, %struct.page* %32, i64 %33, i32 0)
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @BIO_QUIET, align 4
  %38 = shl i32 1, %37
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 2
  store %struct.rb0_cbdata* %9, %struct.rb0_cbdata** %42, align 8
  %43 = load i32, i32* @floppy_rb0_cb, align 4
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @REQ_OP_READ, align 4
  %46 = call i32 @bio_set_op_attrs(%struct.bio* %6, i32 %45, i32 0)
  %47 = getelementptr inbounds %struct.rb0_cbdata, %struct.rb0_cbdata* %9, i32 0, i32 1
  %48 = call i32 @init_completion(i32* %47)
  %49 = call i32 @submit_bio(%struct.bio* %6)
  %50 = call i32 (...) @process_fd_request()
  %51 = getelementptr inbounds %struct.rb0_cbdata, %struct.rb0_cbdata* %9, i32 0, i32 1
  %52 = call i32 @wait_for_completion(i32* %51)
  %53 = load %struct.page*, %struct.page** %8, align 8
  %54 = call i32 @__free_page(%struct.page* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %26, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @process_fd_request(...) #1

declare dso_local i32 @bio_init(%struct.bio*, %struct.bio_vec*, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i64, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

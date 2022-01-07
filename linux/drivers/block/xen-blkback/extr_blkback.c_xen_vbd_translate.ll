; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_vbd_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_blkback.c_xen_vbd_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phys_req = type { i64, i64, i32, i32 }
%struct.xen_blkif = type { %struct.xen_vbd }
%struct.xen_vbd = type { i32, i32, i64 }

@EACCES = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phys_req*, %struct.xen_blkif*, i32)* @xen_vbd_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_vbd_translate(%struct.phys_req* %0, %struct.xen_blkif* %1, i32 %2) #0 {
  %4 = alloca %struct.phys_req*, align 8
  %5 = alloca %struct.xen_blkif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xen_vbd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.phys_req* %0, %struct.phys_req** %4, align 8
  store %struct.xen_blkif* %1, %struct.xen_blkif** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.xen_blkif*, %struct.xen_blkif** %5, align 8
  %11 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %10, i32 0, i32 0
  store %struct.xen_vbd* %11, %struct.xen_vbd** %7, align 8
  %12 = load i32, i32* @EACCES, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @REQ_OP_READ, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.xen_vbd*, %struct.xen_vbd** %7, align 8
  %19 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %67

23:                                               ; preds = %17, %3
  %24 = load %struct.phys_req*, %struct.phys_req** %4, align 8
  %25 = getelementptr inbounds %struct.phys_req, %struct.phys_req* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @likely(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = load %struct.phys_req*, %struct.phys_req** %4, align 8
  %31 = getelementptr inbounds %struct.phys_req, %struct.phys_req* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.phys_req*, %struct.phys_req** %4, align 8
  %34 = getelementptr inbounds %struct.phys_req, %struct.phys_req* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.phys_req*, %struct.phys_req** %4, align 8
  %39 = getelementptr inbounds %struct.phys_req, %struct.phys_req* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  br label %67

46:                                               ; preds = %29
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.xen_vbd*, %struct.xen_vbd** %7, align 8
  %49 = call i64 @vbd_sz(%struct.xen_vbd* %48)
  %50 = icmp sgt i64 %47, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %67

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %23
  %57 = load %struct.xen_vbd*, %struct.xen_vbd** %7, align 8
  %58 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.phys_req*, %struct.phys_req** %4, align 8
  %61 = getelementptr inbounds %struct.phys_req, %struct.phys_req* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.xen_vbd*, %struct.xen_vbd** %7, align 8
  %63 = getelementptr inbounds %struct.xen_vbd, %struct.xen_vbd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.phys_req*, %struct.phys_req** %4, align 8
  %66 = getelementptr inbounds %struct.phys_req, %struct.phys_req* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %56, %54, %45, %22
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i64 @likely(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vbd_sz(%struct.xen_vbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

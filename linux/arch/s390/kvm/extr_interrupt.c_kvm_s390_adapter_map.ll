; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_adapter_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_interrupt.c_kvm_s390_adapter_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.s390_io_adapter = type { i32, i32, i32 }
%struct.s390_map_info = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@MAX_S390_ADAPTER_MAPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i32, i32)* @kvm_s390_adapter_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_s390_adapter_map(%struct.kvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.s390_io_adapter*, align 8
  %9 = alloca %struct.s390_map_info*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.kvm*, %struct.kvm** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.s390_io_adapter* @get_io_adapter(%struct.kvm* %11, i32 %12)
  store %struct.s390_io_adapter* %13, %struct.s390_io_adapter** %8, align 8
  %14 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %8, align 8
  %15 = icmp ne %struct.s390_io_adapter* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %103

22:                                               ; preds = %16
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.s390_map_info* @kzalloc(i32 16, i32 %23)
  store %struct.s390_map_info* %24, %struct.s390_map_info** %9, align 8
  %25 = load %struct.s390_map_info*, %struct.s390_map_info** %9, align 8
  %26 = icmp ne %struct.s390_map_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  br label %95

30:                                               ; preds = %22
  %31 = load %struct.s390_map_info*, %struct.s390_map_info** %9, align 8
  %32 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %31, i32 0, i32 2
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.s390_map_info*, %struct.s390_map_info** %9, align 8
  %36 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.kvm*, %struct.kvm** %5, align 8
  %38 = getelementptr inbounds %struct.kvm, %struct.kvm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @gmap_translate(i32 %40, i32 %41)
  %43 = load %struct.s390_map_info*, %struct.s390_map_info** %9, align 8
  %44 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.s390_map_info*, %struct.s390_map_info** %9, align 8
  %46 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %30
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %95

54:                                               ; preds = %30
  %55 = load %struct.s390_map_info*, %struct.s390_map_info** %9, align 8
  %56 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FOLL_WRITE, align 4
  %59 = load %struct.s390_map_info*, %struct.s390_map_info** %9, align 8
  %60 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %59, i32 0, i32 1
  %61 = call i32 @get_user_pages_fast(i32 %57, i32 1, i32 %58, i32* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %95

65:                                               ; preds = %54
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 1
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %8, align 8
  %71 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %70, i32 0, i32 0
  %72 = call i32 @down_write(i32* %71)
  %73 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %8, align 8
  %74 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %73, i32 0, i32 2
  %75 = call i64 @atomic_inc_return(i32* %74)
  %76 = load i64, i64* @MAX_S390_ADAPTER_MAPS, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %65
  %79 = load %struct.s390_map_info*, %struct.s390_map_info** %9, align 8
  %80 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %79, i32 0, i32 2
  %81 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %8, align 8
  %82 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %81, i32 0, i32 1
  %83 = call i32 @list_add_tail(i32* %80, i32* %82)
  store i32 0, i32* %10, align 4
  br label %91

84:                                               ; preds = %65
  %85 = load %struct.s390_map_info*, %struct.s390_map_info** %9, align 8
  %86 = getelementptr inbounds %struct.s390_map_info, %struct.s390_map_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @put_page(i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %84, %78
  %92 = load %struct.s390_io_adapter*, %struct.s390_io_adapter** %8, align 8
  %93 = getelementptr inbounds %struct.s390_io_adapter, %struct.s390_io_adapter* %92, i32 0, i32 0
  %94 = call i32 @up_write(i32* %93)
  br label %95

95:                                               ; preds = %91, %64, %51, %27
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.s390_map_info*, %struct.s390_map_info** %9, align 8
  %100 = call i32 @kfree(%struct.s390_map_info* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %19
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.s390_io_adapter* @get_io_adapter(%struct.kvm*, i32) #1

declare dso_local %struct.s390_map_info* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @gmap_translate(i32, i32) #1

declare dso_local i32 @get_user_pages_fast(i32, i32, i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @kfree(%struct.s390_map_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

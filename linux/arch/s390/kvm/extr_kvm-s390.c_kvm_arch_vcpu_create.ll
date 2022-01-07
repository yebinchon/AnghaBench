; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_create.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.kvm_vcpu = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.kvm = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.sie_page = type { i32, %struct.TYPE_12__ }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kvm_vcpu_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@sclp = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GISA_FORMAT1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"create cpu %d at 0x%pK, sie block at 0x%pK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_vcpu* @kvm_arch_vcpu_create(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.sie_page*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.kvm*, %struct.kvm** %4, align 8
  %12 = call i32 @kvm_is_ucontrol(%struct.kvm* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.kvm*, %struct.kvm** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @sca_can_add_vcpu(%struct.kvm* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %143

20:                                               ; preds = %14, %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @kvm_vcpu_cache, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.kvm_vcpu* @kmem_cache_zalloc(i32 %23, i32 %24)
  store %struct.kvm_vcpu* %25, %struct.kvm_vcpu** %6, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %27 = icmp ne %struct.kvm_vcpu* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %143

29:                                               ; preds = %20
  %30 = call i32 @BUILD_BUG_ON(i32 1)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i64 @get_zeroed_page(i32 %31)
  %33 = inttoptr i64 %32 to %struct.sie_page*
  store %struct.sie_page* %33, %struct.sie_page** %7, align 8
  %34 = load %struct.sie_page*, %struct.sie_page** %7, align 8
  %35 = icmp ne %struct.sie_page* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %139

37:                                               ; preds = %29
  %38 = load %struct.sie_page*, %struct.sie_page** %7, align 8
  %39 = getelementptr inbounds %struct.sie_page, %struct.sie_page* %38, i32 0, i32 1
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %42, align 8
  %43 = load %struct.sie_page*, %struct.sie_page** %7, align 8
  %44 = getelementptr inbounds %struct.sie_page, %struct.sie_page* %43, i32 0, i32 0
  %45 = ptrtoint i32* %44 to i64
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i64 %45, i64* %50, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sclp, i32 0, i32 1), align 8
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  store i32 %56, i32* %61, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  store i32 %62, i32* %67, align 8
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.kvm*, %struct.kvm** %4, align 8
  %74 = getelementptr inbounds %struct.kvm, %struct.kvm* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  store i32 %78, i32* %83, align 4
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %37
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sclp, i32 0, i32 0), align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i32, i32* @GISA_FORMAT1, align 4
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %95
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %94, %91, %37
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %105 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = call i32 @seqcount_init(i32* %106)
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %109 = load %struct.kvm*, %struct.kvm** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @kvm_vcpu_init(%struct.kvm_vcpu* %108, %struct.kvm* %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %132

115:                                              ; preds = %103
  %116 = load %struct.kvm*, %struct.kvm** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %120 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = call i32 @VM_EVENT(%struct.kvm* %116, i32 3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %117, %struct.kvm_vcpu* %118, %struct.TYPE_12__* %122)
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %126 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %127 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = call i32 @trace_kvm_s390_create_vcpu(i32 %124, %struct.kvm_vcpu* %125, %struct.TYPE_12__* %129)
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_vcpu* %131, %struct.kvm_vcpu** %3, align 8
  br label %146

132:                                              ; preds = %114
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %134 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %135, align 8
  %137 = ptrtoint %struct.TYPE_12__* %136 to i64
  %138 = call i32 @free_page(i64 %137)
  br label %139

139:                                              ; preds = %132, %36
  %140 = load i32, i32* @kvm_vcpu_cache, align 4
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %142 = call i32 @kmem_cache_free(i32 %140, %struct.kvm_vcpu* %141)
  br label %143

143:                                              ; preds = %139, %28, %19
  %144 = load i32, i32* %8, align 4
  %145 = call %struct.kvm_vcpu* @ERR_PTR(i32 %144)
  store %struct.kvm_vcpu* %145, %struct.kvm_vcpu** %3, align 8
  br label %146

146:                                              ; preds = %143, %115
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  ret %struct.kvm_vcpu* %147
}

declare dso_local i32 @kvm_is_ucontrol(%struct.kvm*) #1

declare dso_local i32 @sca_can_add_vcpu(%struct.kvm*, i32) #1

declare dso_local %struct.kvm_vcpu* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @seqcount_init(i32*) #1

declare dso_local i32 @kvm_vcpu_init(%struct.kvm_vcpu*, %struct.kvm*, i32) #1

declare dso_local i32 @VM_EVENT(%struct.kvm*, i32, i8*, i32, %struct.kvm_vcpu*, %struct.TYPE_12__*) #1

declare dso_local i32 @trace_kvm_s390_create_vcpu(i32, %struct.kvm_vcpu*, %struct.TYPE_12__*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.kvm_vcpu*) #1

declare dso_local %struct.kvm_vcpu* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

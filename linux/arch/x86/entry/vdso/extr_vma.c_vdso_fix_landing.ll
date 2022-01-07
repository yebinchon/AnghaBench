; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/entry/vdso/extr_vma.c_vdso_fix_landing.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/entry/vdso/extr_vma.c_vdso_fix_landing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vdso_image = type { i64 }
%struct.vm_area_struct = type { i64 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@vdso_image_32 = common dso_local global %struct.vdso_image zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdso_image*, %struct.vm_area_struct*)* @vdso_fix_landing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdso_fix_landing(%struct.vdso_image* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.vdso_image*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.vdso_image* %0, %struct.vdso_image** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

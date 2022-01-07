; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_enlighten_pv.c_xen_copy_trap_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_enlighten_pv.c_xen_copy_trap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trap_info = type { i32 }
%struct.desc_ptr = type { i32 }

@idt_desc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_copy_trap_info(%struct.trap_info* %0) #0 {
  %2 = alloca %struct.trap_info*, align 8
  %3 = alloca %struct.desc_ptr*, align 8
  store %struct.trap_info* %0, %struct.trap_info** %2, align 8
  %4 = call %struct.desc_ptr* @this_cpu_ptr(i32* @idt_desc)
  store %struct.desc_ptr* %4, %struct.desc_ptr** %3, align 8
  %5 = load %struct.desc_ptr*, %struct.desc_ptr** %3, align 8
  %6 = load %struct.trap_info*, %struct.trap_info** %2, align 8
  %7 = call i32 @xen_convert_trap_info(%struct.desc_ptr* %5, %struct.trap_info* %6)
  ret void
}

declare dso_local %struct.desc_ptr* @this_cpu_ptr(i32*) #1

declare dso_local i32 @xen_convert_trap_info(%struct.desc_ptr*, %struct.trap_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

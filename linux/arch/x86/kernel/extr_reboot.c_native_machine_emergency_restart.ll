; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_reboot.c_native_machine_emergency_restart.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_reboot.c_native_machine_emergency_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reboot_type = common dso_local global i32 0, align 4
@reboot_emergency = common dso_local global i64 0, align 8
@TB_SHUTDOWN_REBOOT = common dso_local global i32 0, align 4
@reboot_mode = common dso_local global i64 0, align 8
@REBOOT_WARM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"EFI capsule is pending, forcing EFI reboot.\0A\00", align 1
@MRR_BIOS = common dso_local global i32 0, align 4
@port_cf9_safe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @native_machine_emergency_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_machine_emergency_restart() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %7 = load i32, i32* @reboot_type, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i64, i64* @reboot_emergency, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @emergency_vmx_disable_all()
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @TB_SHUTDOWN_REBOOT, align 4
  %14 = call i32 @tboot_shutdown(i32 %13)
  %15 = load i64, i64* @reboot_mode, align 8
  %16 = load i64, i64* @REBOOT_WARM, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 4660, i32 0
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %4, align 2
  %21 = load i16, i16* %4, align 2
  %22 = call i64 @__va(i32 1138)
  %23 = inttoptr i64 %22 to i16*
  store i16 %21, i16* %23, align 2
  %24 = call i64 @efi_capsule_pending(i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 130, i32* @reboot_type, align 4
  br label %28

28:                                               ; preds = %26, %12
  br label %29

29:                                               ; preds = %87, %28
  %30 = load i32, i32* @reboot_type, align 4
  switch i32 %30, label %87 [
    i32 134, label %31
    i32 129, label %33
    i32 130, label %55
    i32 133, label %58
    i32 132, label %61
    i32 131, label %62
    i32 128, label %85
  ]

31:                                               ; preds = %29
  %32 = call i32 (...) @acpi_reboot()
  store i32 129, i32* @reboot_type, align 4
  br label %87

33:                                               ; preds = %29
  %34 = call i32 (...) @mach_reboot_fixups()
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %43, %33
  %36 = load i32, i32* %1, align 4
  %37 = icmp slt i32 %36, 10
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = call i32 (...) @kb_wait()
  %40 = call i32 @udelay(i32 50)
  %41 = call i32 @outb(i32 254, i32 100)
  %42 = call i32 @udelay(i32 50)
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %35

46:                                               ; preds = %35
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, 134
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  store i32 134, i32* @reboot_type, align 4
  br label %54

53:                                               ; preds = %49, %46
  store i32 130, i32* @reboot_type, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %87

55:                                               ; preds = %29
  %56 = load i64, i64* @reboot_mode, align 8
  %57 = call i32 @efi_reboot(i64 %56, i32* null)
  store i32 133, i32* @reboot_type, align 4
  br label %87

58:                                               ; preds = %29
  %59 = load i32, i32* @MRR_BIOS, align 4
  %60 = call i32 @machine_real_restart(i32 %59)
  store i32 131, i32* @reboot_type, align 4
  br label %87

61:                                               ; preds = %29
  store i32 1, i32* @port_cf9_safe, align 4
  br label %62

62:                                               ; preds = %29, %61
  %63 = load i32, i32* @port_cf9_safe, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load i64, i64* @reboot_mode, align 8
  %67 = load i64, i64* @REBOOT_WARM, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 6, i32 14
  store i32 %70, i32* %5, align 4
  %71 = call i32 @inb(i32 3321)
  %72 = load i32, i32* %5, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, 2
  %77 = call i32 @outb(i32 %76, i32 3321)
  %78 = call i32 @udelay(i32 50)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @outb(i32 %81, i32 3321)
  %83 = call i32 @udelay(i32 50)
  br label %84

84:                                               ; preds = %65, %62
  store i32 128, i32* @reboot_type, align 4
  br label %87

85:                                               ; preds = %29
  %86 = call i32 @idt_invalidate(i32* null)
  call void asm sideeffect "int3", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 129, i32* @reboot_type, align 4
  br label %87

87:                                               ; preds = %29, %85, %84, %58, %55, %54, %31
  br label %29
}

declare dso_local i32 @emergency_vmx_disable_all(...) #1

declare dso_local i32 @tboot_shutdown(i32) #1

declare dso_local i64 @__va(i32) #1

declare dso_local i64 @efi_capsule_pending(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @acpi_reboot(...) #1

declare dso_local i32 @mach_reboot_fixups(...) #1

declare dso_local i32 @kb_wait(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @efi_reboot(i64, i32*) #1

declare dso_local i32 @machine_real_restart(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @idt_invalidate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2105}

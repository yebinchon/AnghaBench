; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_hardware_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_hardware_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CVMCTL_IPTI = common dso_local global i64 0, align 8
@CVMCTL_IPTI_SHIFT = common dso_local global i64 0, align 8
@CVMCTL_IPPCI = common dso_local global i64 0, align 8
@CVMCTL_IPPCI_SHIFT = common dso_local global i64 0, align 8
@CVMVMCONF_DGHT = common dso_local global i64 0, align 8
@CVMVMCONF_MMUSIZEM1 = common dso_local global i64 0, align 8
@CVMVMCONF_MMUSIZEM1_S = common dso_local global i64 0, align 8
@CVMVMCONF_RMMUSIZEM1 = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@kvm_vz_guest_vtlb_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Available guest VTLB size mismatch\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MIPS_GCTL0_CP0 = common dso_local global i32 0, align 4
@MIPS_GCTL0_AT_GUEST = common dso_local global i32 0, align 4
@MIPS_GCTL0_AT_SHIFT = common dso_local global i32 0, align 4
@MIPS_GCTL0_CG = common dso_local global i32 0, align 4
@MIPS_GCTL0_CF = common dso_local global i32 0, align 4
@cpu_has_guestctl0ext = common dso_local global i64 0, align 8
@MIPS_GCTL0EXT_CGI = common dso_local global i32 0, align 4
@cpu_has_guestid = common dso_local global i64 0, align 8
@GUESTID_MASK = common dso_local global i32 0, align 4
@GUESTID_FIRST_VERSION = common dso_local global i32 0, align 4
@GUESTID_VERSION_MASK = common dso_local global i32 0, align 4
@cpu_has_guestctl2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kvm_vz_hardware_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vz_hardware_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = call i32 (...) @current_cpu_type()
  switch i32 %7, label %59 [
    i32 128, label %8
  ]

8:                                                ; preds = %0
  %9 = call i64 (...) @read_gc0_cvmctl()
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* @CVMCTL_IPTI, align 8
  %11 = xor i64 %10, -1
  %12 = load i64, i64* %5, align 8
  %13 = and i64 %12, %11
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* @CVMCTL_IPTI_SHIFT, align 8
  %15 = shl i64 7, %14
  %16 = load i64, i64* %5, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* @CVMCTL_IPPCI, align 8
  %19 = xor i64 %18, -1
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* @CVMCTL_IPPCI_SHIFT, align 8
  %23 = shl i64 6, %22
  %24 = load i64, i64* %5, align 8
  %25 = or i64 %24, %23
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @write_gc0_cvmctl(i64 %26)
  %28 = call i64 (...) @read_c0_cvmvmconfig()
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* @CVMVMCONF_DGHT, align 8
  %30 = load i64, i64* %6, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @CVMVMCONF_MMUSIZEM1, align 8
  %34 = and i64 %32, %33
  %35 = load i64, i64* @CVMVMCONF_MMUSIZEM1_S, align 8
  %36 = lshr i64 %34, %35
  %37 = add i64 %36, 1
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = udiv i32 %39, 2
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %2, align 4
  %43 = sub i32 %42, %41
  store i32 %43, i32* %2, align 4
  %44 = load i64, i64* @CVMVMCONF_RMMUSIZEM1, align 8
  %45 = xor i64 %44, -1
  %46 = load i64, i64* %6, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %6, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sub i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %6, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @write_c0_cvmvmconfig(i64 %53)
  %55 = load i32, i32* %2, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0), align 4
  %56 = load i32, i32* %2, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 1), align 4
  %57 = load i32, i32* %3, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 4, i32 0), align 4
  %58 = call i32 (...) @kvm_vz_local_flush_guesttlb_all()
  br label %93

59:                                               ; preds = %0
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 1), align 4
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 0), align 4
  %62 = load i32, i32* %2, align 4
  %63 = sub i32 %61, %62
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @kvm_vz_resize_guest_vtlb(i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %66, %67
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 4, i32 0), align 4
  %69 = call i32 (...) @kvm_vz_local_flush_guesttlb_all()
  %70 = load i32, i32* %2, align 4
  %71 = call i32 (...) @num_wired_entries()
  %72 = sub i32 %70, %71
  %73 = sub i32 %72, 2
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @kvm_vz_resize_guest_vtlb(i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = add i32 %76, %77
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 4, i32 0), align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @cmpxchg(i32* @kvm_vz_guest_vtlb_size, i32 0, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %59
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @kvm_vz_guest_vtlb_size, align 4
  %85 = icmp ne i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @WARN(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %1, align 4
  br label %127

92:                                               ; preds = %82, %59
  br label %93

93:                                               ; preds = %92, %8
  %94 = load i32, i32* @MIPS_GCTL0_CP0, align 4
  %95 = load i32, i32* @MIPS_GCTL0_AT_GUEST, align 4
  %96 = load i32, i32* @MIPS_GCTL0_AT_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = or i32 %94, %97
  %99 = load i32, i32* @MIPS_GCTL0_CG, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @MIPS_GCTL0_CF, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @write_c0_guestctl0(i32 %102)
  %104 = load i64, i64* @cpu_has_guestctl0ext, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load i32, i32* @MIPS_GCTL0EXT_CGI, align 4
  %108 = call i32 @set_c0_guestctl0ext(i32 %107)
  br label %109

109:                                              ; preds = %106, %93
  %110 = load i64, i64* @cpu_has_guestid, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = call i32 @write_c0_guestctl1(i32 0)
  %114 = call i32 (...) @kvm_vz_local_flush_roottlb_all_guests()
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 2), align 4
  store i32 %115, i32* @GUESTID_MASK, align 4
  %116 = load i32, i32* @GUESTID_MASK, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @GUESTID_FIRST_VERSION, align 4
  %118 = load i32, i32* @GUESTID_MASK, align 4
  %119 = xor i32 %118, -1
  store i32 %119, i32* @GUESTID_VERSION_MASK, align 4
  %120 = load i32, i32* @GUESTID_FIRST_VERSION, align 4
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_cpu_data, i32 0, i32 3), align 4
  br label %121

121:                                              ; preds = %112, %109
  %122 = load i64, i64* @cpu_has_guestctl2, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i32 @clear_c0_guestctl2(i32 64512)
  br label %126

126:                                              ; preds = %124, %121
  store i32 0, i32* %1, align 4
  br label %127

127:                                              ; preds = %126, %89
  %128 = load i32, i32* %1, align 4
  ret i32 %128
}

declare dso_local i32 @current_cpu_type(...) #1

declare dso_local i64 @read_gc0_cvmctl(...) #1

declare dso_local i32 @write_gc0_cvmctl(i64) #1

declare dso_local i64 @read_c0_cvmvmconfig(...) #1

declare dso_local i32 @write_c0_cvmvmconfig(i64) #1

declare dso_local i32 @kvm_vz_local_flush_guesttlb_all(...) #1

declare dso_local i32 @kvm_vz_resize_guest_vtlb(i32) #1

declare dso_local i32 @num_wired_entries(...) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @write_c0_guestctl0(i32) #1

declare dso_local i32 @set_c0_guestctl0ext(i32) #1

declare dso_local i32 @write_c0_guestctl1(i32) #1

declare dso_local i32 @kvm_vz_local_flush_roottlb_all_guests(...) #1

declare dso_local i32 @clear_c0_guestctl2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

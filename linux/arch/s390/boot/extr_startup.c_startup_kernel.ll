; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_startup.c_startup_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_startup.c_startup_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 (...)*, i32, i32, i32, i32, i32, i32 }

@__kaslr_offset = common dso_local global i64 0, align 8
@CONFIG_RANDOMIZE_BASE = common dso_local global i32 0, align 4
@kaslr_enabled = common dso_local global i64 0, align 8
@vmlinux = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CONFIG_KERNEL_UNCOMPRESSED = common dso_local global i32 0, align 4
@CONFIG_RELOCATABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @startup_kernel() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = call i32 (...) @store_ipl_parmblock()
  %5 = call i64 (...) @mem_safe_offset()
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @read_ipl_report(i64 %6)
  store i64 %7, i64* %2, align 8
  %8 = call i32 (...) @uv_query_info()
  %9 = load i64, i64* %2, align 8
  %10 = call i32 @rescue_initrd(i64 %9)
  %11 = call i32 (...) @sclp_early_read_info()
  %12 = call i32 (...) @setup_boot_command_line()
  %13 = call i32 (...) @parse_boot_command_line()
  %14 = call i32 (...) @setup_memory_end()
  %15 = call i32 (...) @detect_memory()
  store i64 0, i64* @__kaslr_offset, align 8
  store i64 0, i64* %1, align 8
  %16 = load i32, i32* @CONFIG_RANDOMIZE_BASE, align 4
  %17 = call i64 @IS_ENABLED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %0
  %20 = load i64, i64* @kaslr_enabled, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %19
  %23 = load i64, i64* %2, align 8
  %24 = call i64 @get_random_base(i64 %23)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %22
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 0), align 8
  %30 = sub i64 %28, %29
  store i64 %30, i64* @__kaslr_offset, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 0), align 8
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %3, align 8
  %33 = load i64, i64* @__kaslr_offset, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 0), align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 0), align 8
  %36 = load i64, i64* @__kaslr_offset, align 8
  %37 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 1), align 8
  %38 = bitcast i32 (...)* %37 to i8*
  %39 = getelementptr i8, i8* %38, i64 %36
  %40 = bitcast i8* %39 to i32 (...)*
  store i32 (...)* %40, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 1), align 8
  %41 = load i64, i64* @__kaslr_offset, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 7), align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 7), align 4
  %46 = load i64, i64* @__kaslr_offset, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 6), align 8
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 6), align 8
  %51 = load i64, i64* @__kaslr_offset, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 5), align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 5), align 4
  %56 = load i64, i64* @__kaslr_offset, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 4), align 8
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 4), align 8
  %61 = load i64, i64* @__kaslr_offset, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 3), align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 3), align 4
  br label %66

66:                                               ; preds = %27, %22
  br label %67

67:                                               ; preds = %66, %19, %0
  %68 = load i32, i32* @CONFIG_KERNEL_UNCOMPRESSED, align 4
  %69 = call i64 @IS_ENABLED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = call i8* (...) @decompress_kernel()
  store i8* %72, i8** %3, align 8
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 0), align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 2), align 8
  %77 = call i32 @memmove(i8* %74, i8* %75, i32 %76)
  br label %88

78:                                               ; preds = %67
  %79 = load i64, i64* @__kaslr_offset, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 0), align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = load i8*, i8** %3, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 2), align 8
  %86 = call i32 @memcpy(i8* %83, i8* %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %78
  br label %88

88:                                               ; preds = %87, %71
  %89 = call i32 (...) @clear_bss_section()
  %90 = call i32 (...) @copy_bootdata()
  %91 = load i32, i32* @CONFIG_RELOCATABLE, align 4
  %92 = call i64 @IS_ENABLED(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i64, i64* @__kaslr_offset, align 8
  %96 = call i32 @handle_relocs(i64 %95)
  br label %97

97:                                               ; preds = %94, %88
  %98 = load i64, i64* @__kaslr_offset, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i32, i32* @CONFIG_KERNEL_UNCOMPRESSED, align 4
  %102 = call i64 @IS_ENABLED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i8*, i8** %3, align 8
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 2), align 8
  %107 = call i32 @memset(i8* %105, i32 0, i32 %106)
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %97
  %110 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmlinux, i32 0, i32 1), align 8
  %111 = call i32 (...) %110()
  ret void
}

declare dso_local i32 @store_ipl_parmblock(...) #1

declare dso_local i64 @mem_safe_offset(...) #1

declare dso_local i64 @read_ipl_report(i64) #1

declare dso_local i32 @uv_query_info(...) #1

declare dso_local i32 @rescue_initrd(i64) #1

declare dso_local i32 @sclp_early_read_info(...) #1

declare dso_local i32 @setup_boot_command_line(...) #1

declare dso_local i32 @parse_boot_command_line(...) #1

declare dso_local i32 @setup_memory_end(...) #1

declare dso_local i32 @detect_memory(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @get_random_base(i64) #1

declare dso_local i8* @decompress_kernel(...) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @clear_bss_section(...) #1

declare dso_local i32 @copy_bootdata(...) #1

declare dso_local i32 @handle_relocs(i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

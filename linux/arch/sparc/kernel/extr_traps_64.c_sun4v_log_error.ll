; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_64.c_sun4v_log_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_64.c_sun4v_log_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }
%struct.sun4v_error_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"%s: Reporting on cpu %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: TPC [0x%016lx] <%pS>\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: RAW [%016llx:%016llx:%016llx:%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"%s:      %016llx:%016llx:%016llx:%016llx]\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"%s: handle [0x%016llx] stick [0x%016llx]\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s: type [%s]\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s: attrs [0x%08x] < \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@SUN4V_ERR_ATTRS_MEMORY = common dso_local global i32 0, align 4
@SUN4V_ERR_ATTRS_PIO = common dso_local global i32 0, align 4
@SUN4V_ERR_ATTRS_ASI = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"%s: raddr [0x%016llx]\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"%s: size [0x%x]\0A\00", align 1
@SUN4V_ERR_ATTRS_PROCESSOR = common dso_local global i32 0, align 4
@SUN4V_ERR_ATTRS_INT_REGISTERS = common dso_local global i32 0, align 4
@SUN4V_ERR_ATTRS_FPU_REGISTERS = common dso_local global i32 0, align 4
@SUN4V_ERR_ATTRS_PRIV_REG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"%s: cpu[%u]\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"%s: asi [0x%02x]\0A\00", align 1
@SUN4V_ERR_ASR_VALID = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"%s: reg [0x%04x]\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"%s: Queue overflowed %d times.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, %struct.sun4v_error_entry*, i32, i8*, i32*)* @sun4v_log_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4v_log_error(%struct.pt_regs* %0, %struct.sun4v_error_entry* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.sun4v_error_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %6, align 8
  store %struct.sun4v_error_entry* %1, %struct.sun4v_error_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %15 = bitcast %struct.sun4v_error_entry* %14 to i32*
  store i32* %15, i32** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17)
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 %23, i8* %27)
  %29 = load i8*, i8** %9, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 %32, i32 %35, i32 %38, i32 %41)
  %43 = load i8*, i8** %9, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 6
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %43, i32 %46, i32 %49, i32 %52, i32 %55)
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %59 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %62 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %57, i32 %60, i32 %63)
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %67 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sun4v_err_type_to_str(i32 %68)
  %70 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %65, i32 %69)
  %71 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %72 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %12, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %74, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @sun4v_emit_err_attr_strings(i32 %77)
  %79 = call i32 @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @SUN4V_ERR_ATTRS_MEMORY, align 4
  %82 = load i32, i32* @SUN4V_ERR_ATTRS_PIO, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @SUN4V_ERR_ATTRS_ASI, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %80, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %5
  %89 = load i8*, i8** %9, align 8
  %90 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %91 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %89, i32 %92)
  %94 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %95 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %102

98:                                               ; preds = %88
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %101 = call i32 @sun4v_report_real_raddr(i8* %99, %struct.pt_regs* %100)
  br label %102

102:                                              ; preds = %98, %88
  br label %103

103:                                              ; preds = %102, %5
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @SUN4V_ERR_ATTRS_MEMORY, align 4
  %106 = load i32, i32* @SUN4V_ERR_ATTRS_ASI, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %113 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %111, i32 %114)
  br label %116

116:                                              ; preds = %110, %103
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @SUN4V_ERR_ATTRS_PROCESSOR, align 4
  %119 = load i32, i32* @SUN4V_ERR_ATTRS_INT_REGISTERS, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @SUN4V_ERR_ATTRS_FPU_REGISTERS, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @SUN4V_ERR_ATTRS_PRIV_REG, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %117, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %116
  %128 = load i8*, i8** %9, align 8
  %129 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %130 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* %128, i32 %131)
  br label %133

133:                                              ; preds = %127, %116
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @SUN4V_ERR_ATTRS_ASI, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i8*, i8** %9, align 8
  %140 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %141 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* %139, i32 %142)
  br label %144

144:                                              ; preds = %138, %133
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @SUN4V_ERR_ATTRS_INT_REGISTERS, align 4
  %147 = load i32, i32* @SUN4V_ERR_ATTRS_FPU_REGISTERS, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @SUN4V_ERR_ATTRS_PRIV_REG, align 4
  %150 = or i32 %148, %149
  %151 = and i32 %145, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %169

153:                                              ; preds = %144
  %154 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %155 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @SUN4V_ERR_ASR_VALID, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %153
  %161 = load i8*, i8** %9, align 8
  %162 = load %struct.sun4v_error_entry*, %struct.sun4v_error_entry** %7, align 8
  %163 = getelementptr inbounds %struct.sun4v_error_entry, %struct.sun4v_error_entry* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SUN4V_ERR_ASR_VALID, align 4
  %166 = xor i32 %165, -1
  %167 = and i32 %164, %166
  %168 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %161, i32 %167)
  br label %169

169:                                              ; preds = %160, %153, %144
  %170 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %171 = call i32 @show_regs(%struct.pt_regs* %170)
  %172 = load i32*, i32** %10, align 8
  %173 = call i32 @atomic_read(i32* %172)
  store i32 %173, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %169
  %176 = load i32*, i32** %10, align 8
  %177 = call i32 @atomic_set(i32* %176, i32 0)
  %178 = call i32 (...) @wmb()
  %179 = load i8*, i8** %9, align 8
  %180 = load i32, i32* %13, align 4
  %181 = call i32 (i8*, i8*, i32, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %179, i32 %180)
  br label %182

182:                                              ; preds = %175, %169
  ret void
}

declare dso_local i32 @printk(i8*, i8*, i32, ...) #1

declare dso_local i32 @sun4v_err_type_to_str(i32) #1

declare dso_local i32 @sun4v_emit_err_attr_strings(i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @sun4v_report_real_raddr(i8*, %struct.pt_regs*) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

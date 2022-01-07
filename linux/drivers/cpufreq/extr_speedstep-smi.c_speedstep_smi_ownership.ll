; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-smi.c_speedstep_smi_ownership.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-smi.c_speedstep_smi_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GET_SPEEDSTEP_OWNER = common dso_local global i32 0, align 4
@__const.speedstep_smi_ownership.magic_data = private unnamed_addr constant [37 x i8] c"Copyright (c) 1999 Intel Corporation\00", align 16
@smi_sig = common dso_local global i32 0, align 4
@smi_cmd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"trying to obtain ownership with command %x at port %x\0A\00", align 1
@smi_port = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"result is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @speedstep_smi_ownership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speedstep_smi_ownership() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [37 x i8], align 16
  %7 = load i32, i32* @GET_SPEEDSTEP_OWNER, align 4
  store i32 %7, i32* %5, align 4
  %8 = bitcast [37 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([37 x i8], [37 x i8]* @__const.speedstep_smi_ownership.magic_data, i32 0, i32 0), i64 37, i1 false)
  %9 = load i32, i32* @smi_sig, align 4
  %10 = and i32 %9, -256
  %11 = load i32, i32* @smi_cmd, align 4
  %12 = and i32 %11, 255
  %13 = or i32 %10, %12
  store i32 %13, i32* %1, align 4
  %14 = getelementptr inbounds [37 x i8], [37 x i8]* %6, i64 0, i64 0
  %15 = call i32 @virt_to_phys(i8* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @smi_port, align 4
  %18 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @smi_port, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call { i32, i32, i32, i32, i32, i32 } asm sideeffect "push %ebp\0Aout %al, (%dx)\0Apop %ebp\0A", "={di},={ax},={bx},={cx},={dx},={si},{ax},{bx},{cx},{dx},{di},{si},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %19, i32 %20, i32 0, i32 %21, i32 0, i32 %22) #3, !srcloc !2
  %24 = extractvalue { i32, i32, i32, i32, i32, i32 } %23, 0
  %25 = extractvalue { i32, i32, i32, i32, i32, i32 } %23, 1
  %26 = extractvalue { i32, i32, i32, i32, i32, i32 } %23, 2
  %27 = extractvalue { i32, i32, i32, i32, i32, i32 } %23, 3
  %28 = extractvalue { i32, i32, i32, i32, i32, i32 } %23, 4
  %29 = extractvalue { i32, i32, i32, i32, i32, i32 } %23, 5
  store i32 %24, i32* %2, align 4
  store i32 %25, i32* %4, align 4
  store i32 %26, i32* %4, align 4
  store i32 %27, i32* %4, align 4
  store i32 %28, i32* %4, align 4
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @virt_to_phys(i8*) #2

declare dso_local i32 @pr_debug(i8*, i32, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 719, i32 737, i32 760}

; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_smpboot.c___inquire_remote_apic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_smpboot.c___inquire_remote_apic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APIC_ID = common dso_local global i32 0, align 4
@APIC_LVR = common dso_local global i32 0, align 4
@APIC_SPIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SPIV\00", align 1
@__const.__inquire_remote_apic.names = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [31 x i8] c"Inquiring remote APIC 0x%x...\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"... APIC 0x%x %s: \00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"a previous APIC delivery may have failed\0A\00", align 1
@APIC_DM_REMRD = common dso_local global i32 0, align 4
@APIC_ICR = common dso_local global i32 0, align 4
@APIC_ICR_RR_MASK = common dso_local global i32 0, align 4
@APIC_ICR_RR_INPROG = common dso_local global i32 0, align 4
@APIC_RRR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__inquire_remote_apic(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca [3 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %9 = load i32, i32* @APIC_ID, align 4
  %10 = ashr i32 %9, 4
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds i32, i32* %8, i64 1
  %12 = load i32, i32* @APIC_LVR, align 4
  %13 = ashr i32 %12, 4
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds i32, i32* %11, i64 1
  %15 = load i32, i32* @APIC_SPIV, align 4
  %16 = ashr i32 %15, 4
  store i32 %16, i32* %14, align 4
  %17 = bitcast [3 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([3 x i8*]* @__const.__inquire_remote_apic.names to i8*), i64 24, i1 false)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %72, %1
  %21 = load i32, i32* %3, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i32* %22)
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %75

25:                                               ; preds = %20
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [3 x i8*], [3 x i8*]* %5, i64 0, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %26, i8* %30)
  %32 = call i32 (...) @safe_apic_wait_icr_idle()
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %25
  %38 = load i32, i32* @APIC_DM_REMRD, align 4
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %38, %42
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @apic_icr_write(i32 %43, i32 %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %60, %37
  %47 = call i32 @udelay(i32 100)
  %48 = load i32, i32* @APIC_ICR, align 4
  %49 = call i32 @apic_read(i32 %48)
  %50 = load i32, i32* @APIC_ICR_RR_MASK, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @APIC_ICR_RR_INPROG, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  %59 = icmp slt i32 %57, 1000
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  br i1 %61, label %46, label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %7, align 4
  switch i32 %63, label %69 [
    i32 128, label %64
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* @APIC_RRR, align 4
  %66 = call i32 @apic_read(i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  br label %71

69:                                               ; preds = %62
  %70 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %64
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %20

75:                                               ; preds = %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @safe_apic_wait_icr_idle(...) #2

declare dso_local i32 @pr_cont(i8*, ...) #2

declare dso_local i32 @apic_icr_write(i32, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @apic_read(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

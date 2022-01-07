; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_show_ldttss.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_show_ldttss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc_ptr = type { i64, i64 }
%struct.ldttss_desc = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"%s: NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: 0x%hx -- out of bounds\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: 0x%hx -- GDT entry is not readable\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: 0x%hx -- base=0x%lx limit=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.desc_ptr*, i8*, i32)* @show_ldttss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_ldttss(%struct.desc_ptr* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.desc_ptr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ldttss_desc, align 8
  store %struct.desc_ptr* %0, %struct.desc_ptr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 3
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (i8*, i8*, ...) @pr_alert(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %65

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, 32
  %22 = load %struct.desc_ptr*, %struct.desc_ptr** %4, align 8
  %23 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, i8*, ...) @pr_alert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 %28)
  br label %65

30:                                               ; preds = %19
  %31 = load %struct.desc_ptr*, %struct.desc_ptr** %4, align 8
  %32 = getelementptr inbounds %struct.desc_ptr, %struct.desc_ptr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %33, %34
  %36 = inttoptr i64 %35 to i8*
  %37 = call i64 @probe_kernel_read(%struct.ldttss_desc* %9, i8* %36, i32 32)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i8*, i8*, ...) @pr_alert(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 %41)
  br label %65

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.ldttss_desc, %struct.ldttss_desc* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.ldttss_desc, %struct.ldttss_desc* %9, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ldttss_desc, %struct.ldttss_desc* %9, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = shl i64 %52, 24
  %54 = or i64 %50, %53
  store i64 %54, i64* %8, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.ldttss_desc, %struct.ldttss_desc* %9, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.ldttss_desc, %struct.ldttss_desc* %9, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %59, %62
  %64 = call i32 (i8*, i8*, ...) @pr_alert(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 %56, i64 %57, i32 %63)
  br label %65

65:                                               ; preds = %43, %39, %26, %16
  ret void
}

declare dso_local i32 @pr_alert(i8*, i8*, ...) #1

declare dso_local i64 @probe_kernel_read(%struct.ldttss_desc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
